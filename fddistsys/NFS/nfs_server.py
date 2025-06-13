import socket
import threading
import os
import json
import struct
import base64

HOST = '0.0.0.0' # listening to all addresses
PORT = 9000
SERVER_DIR = './server_files'

def ensure_server_dir():
    if not os.path.exists(SERVER_DIR):
        os.makedirs(SERVER_DIR)

def send_resp(conn, resp: dict):
    data = json.dumps(resp).encode()
    conn.sendall(struct.pack('>I', len(data)) + data)

def recv_req(conn):
    header = conn.recv(4)
    if not header:
        return None
    msg_len = struct.unpack('>I', header)[0]
    data = b''
    while len(data) < msg_len:
        packet = conn.recv(msg_len - len(data))
        if not packet:
            break
        data += packet
    return json.loads(data.decode())

def handle_client(conn, addr):
    print(f"[+] Connection from {addr}")
    handles = {}       # handle_id -> file object
    next_handle = 1
    try:
        while True:
            req = recv_req(conn)
            if req is None:
                break
            cmd = req.get('command')
            if cmd == 'open':
                filename = req['filename']
                path = os.path.join(SERVER_DIR, filename)
                # ensure file exists
                if not os.path.exists(path):
                    open(path, 'wb').close()
                # open in read+write binary
                f = open(path, 'r+b')
                # read all content
                f.seek(0)
                content = f.read()
                enc = base64.b64encode(content).decode()
                handle_id = next_handle
                next_handle += 1
                handles[handle_id] = f
                send_resp(conn, {
                    'status': 'ok',
                    'handle': handle_id,
                    'data': enc,
                })
            elif cmd == 'read':
                handle_id = req['handle']
                offset = req['offset']
                size = req['size']
                f = handles.get(handle_id)
                if f is None:
                    send_resp(conn, {'status': 'error', 'message': 'Invalid handle'})
                    continue
                f.seek(offset)
                chunk = f.read(size)
                enc = base64.b64encode(chunk).decode()
                send_resp(conn, {'status': 'ok', 'data': enc})
            elif cmd == 'write':
                handle_id = req['handle']
                offset = req['offset']
                data = base64.b64decode(req['data'].encode())
                f = handles.get(handle_id)
                if f is None:
                    send_resp(conn, {'status': 'error', 'message': 'Invalid handle'})
                    continue
                f.seek(offset)
                f.write(data)
                send_resp(conn, {'status': 'ok'})
            elif cmd == 'close':
                handle_id = req['handle']
                f = handles.pop(handle_id, None)
                if f:
                    f.close()
                    send_resp(conn, {'status': 'ok'})
                else:
                    send_resp(conn, {'status': 'error', 'message': 'Invalid handle'})
            else:
                send_resp(conn, {'status': 'error', 'message': 'Unknown command'})
    except Exception as e:
        print(f"[!] Error handling {addr}: {e}")
    finally:
        conn.close()
        print(f"[-] Disconnected {addr}")

def main():
    ensure_server_dir()
    srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind((HOST, PORT))
    srv.listen()
    print(f"NFS server listening on {HOST}:{PORT}")
    try:
        while True:
            conn, addr = srv.accept()
            threading.Thread(target=handle_client, args=(conn, addr), daemon=True).start()
    except KeyboardInterrupt:
        print("Shutting down server.")
    finally:
        srv.close()

if __name__ == '__main__':
    main()