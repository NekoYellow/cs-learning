import socket
import struct
import json
import base64
import os
import uuid
from kazoo.client import KazooClient

SERVER_HOST = '127.0.0.1'
SERVER_PORT = 9000
CACHE_DIR = './client_cache'
ZK_HOSTS = '127.0.0.1:2181'
LOCK_PATH = '/nfslk'

class NFSClient:
    def __init__(self):
        # TCP connection
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect((SERVER_HOST, SERVER_PORT))
        # local cache: filename -> (handle, tmp_path, Lock)
        self.cache = {}
        # connect to Zookeeper
        self.zk = KazooClient(hosts=ZK_HOSTS)
        self.zk.start()
        if not os.path.exists(CACHE_DIR):
            os.makedirs(CACHE_DIR)

    def send_req(self, req: dict):
        data = json.dumps(req).encode()
        self.sock.sendall(struct.pack('>I', len(data)) + data)

    def recv_resp(self):
        header = self.sock.recv(4)
        if not header:
            raise ConnectionError("Server closed")
        msg_len = struct.unpack('>I', header)[0]
        data = b''
        while len(data) < msg_len:
            packet = self.sock.recv(msg_len - len(data))
            if not packet:
                break
            data += packet
        return json.loads(data.decode())

    def open(self, filename):
        # distributed lock
        lock = self.zk.Lock(LOCK_PATH, filename)
        print(f"Acquiring lock for {filename}...")
        if not lock.acquire(blocking=False):
            print(f"Open error: cannot acuire lock for {filename}")
            return
        print("Lock acquired.")
        # send open request to server
        self.send_req({'command': 'open', 'filename': filename})
        resp = self.recv_resp()
        if resp.get('status') != 'ok':
            print("Open error:", resp.get('message'))
            lock.release()
            return
        content = base64.b64decode(resp['data'].encode())
        tmpname = os.path.join(CACHE_DIR, f"{uuid.uuid4()}_{os.path.basename(filename)}")
        with open(tmpname, 'wb') as f:
            f.write(content)
        print(f"Downloaded and cached as {tmpname}")
        self.cache[filename] = (resp['handle'], tmpname, lock)

    def read(self, filename, offset, size):
        if filename not in self.cache:
            print("File not opened.")
            return
        _, tmpname, _ = self.cache[filename]
        with open(tmpname, 'rb') as f:
            f.seek(offset)
            data = f.read(size)
        print(data.decode(errors='ignore'))

    def write(self, filename, data, offset=0):
        if filename not in self.cache:
            print("File not opened.")
            return
        _, tmpname, _ = self.cache[filename]
        with open(tmpname, 'r+b') as f:
            f.seek(offset)
            f.write(data.encode())
        print(f"Wrote to local cache at offset {offset}.")

    def close(self, filename):
        if filename not in self.cache:
            print("File not opened.")
            return
        handle, tmpname, lock = self.cache.pop(filename)
        # upload whole file to overwrite
        with open(tmpname, 'rb') as f:
            data = f.read()
        enc = base64.b64encode(data).decode()
        self.send_req({
            'command': 'write',
            'handle': handle,
            'offset': 0,
            'data': enc
        })
        resp = self.recv_resp()
        if resp.get('status') != 'ok':
            print("Write-back error:", resp.get('message'))
        self.send_req({'command': 'close', 'handle': handle})
        resp2 = self.recv_resp()
        if resp2.get('status') != 'ok':
            print("Close error:", resp2.get('message'))
        # clean up
        os.remove(tmpname)
        lock.release()
        print(f"Closed {filename}, lock released, cache removed.")

    def run(self):
        print("NFS Client is ready. Input command: open/read/write/close/exit")
        while True:
            try:
                parts = input('> ').strip().split()
                if not parts:
                    continue
                cmd = parts[0]
                if cmd == 'exit':
                    break
                elif cmd == 'open':
                    if len(parts) != 2:
                        print("Usage: open filename")
                        continue
                    self.open(parts[1])
                elif cmd == 'read':
                    if len(parts) != 4:
                        print("Usage: read filename offset size")
                        continue
                    fname, off, sz = parts[1], int(parts[2]), int(parts[3])
                    self.read(fname, off, sz)
                elif cmd == 'write':
                    if len(parts) < 3:
                        print("Usage: write filename data ...")
                        continue
                    fname = parts[1]
                    data = ' '.join(parts[2:])
                    self.write(fname, data)
                elif cmd == 'close':
                    if len(parts) != 2:
                        print("Usage: close filename")
                        continue
                    self.close(parts[1])
                else:
                    print("Unknown command.")
            except Exception as e:
                print("Error:", e)

if __name__ == '__main__':
    client = NFSClient()
    client.run()