#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/epoll.h>
#include <netinet/in.h>
#include <fcntl.h>
#include <errno.h>

#define MAX_EVENTS 1024
#define BUFFER_SIZE 4096
#define PORT 8080

void err_sys(const char *msg) {
    perror(msg);
    exit(1);
}

int set_nonblocking(int fd) {
    int flags = fcntl(fd, F_GETFL, 0);
    if (flags == -1) return -1;
    return fcntl(fd, F_SETFL, flags | O_NONBLOCK);
}

int main() {
    int listen_fd, epoll_fd;
    struct epoll_event ev, events[MAX_EVENTS];
    /* 创建监听socket */
    listen_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (listen_fd == -1)
        err_sys("socket");

    /* 设置socket为非阻塞模式 */
    if (set_nonblocking(listen_fd) == -1)
        err_sys("set_nonblocking");

    struct sockaddr_in server_addr;
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    /* 绑定地址和端口 */
    if (bind(listen_fd, (struct sockaddr *)&server_addr, sizeof(server_addr)) == -1)
        err_sys("bind");

    /* 开始监听 */
    if (listen(listen_fd, SOMAXCONN) == -1)
        err_sys("listen");

    /* 创建epoll实例 */
    epoll_fd = epoll_create1(0);
    if (epoll_fd == -1)
        err_sys("epoll_create1");

    /* 将监听socket添加到epoll实例 */
    ev.events = EPOLLIN;
    ev.data.fd = listen_fd;
    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, listen_fd, &ev) == -1)
        err_sys("epoll_ctl: listen_fd");

    printf("Server listening on port %d\n", PORT);

    while (1) {
        int nfds = epoll_wait(epoll_fd, events, MAX_EVENTS, -1);
        if (nfds == -1) {
            if (errno == EINTR)
                continue;
            err_sys("epoll_wait");
        }

        int n;
        for (n = 0; n < nfds; ++n) {
            if (events[n].data.fd == listen_fd) {
                /* 接受新的连接 */
                while (1) {
                    int conn_fd = accept(listen_fd, NULL, NULL);
                    if (conn_fd == -1) {
                        if (errno == EAGAIN || errno == EWOULDBLOCK)
                            break; /* 没有更多的连接需要接受 */
                        else
                            err_sys("accept");
                    }

                    /* 设置新连接为非阻塞模式 */
                    if (set_nonblocking(conn_fd) == -1)
                        err_sys("set_nonblocking");

                    ev.events = EPOLLIN | EPOLLET;
                    ev.data.fd = conn_fd;
                    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, conn_fd, &ev) == -1)
                        err_sys("epoll_ctl: conn_fd");
                }
            } else {
                /* 处理现有连接的I/O */
                int conn_fd = events[n].data.fd;
                char buffer[BUFFER_SIZE];
                ssize_t count;

                if (events[n].events & EPOLLIN) {
                    count = read(conn_fd, buffer, sizeof(buffer));
                    if (count == -1) {
                        if (errno != EAGAIN)
                            err_sys("read");
                    } else if (count == 0) {
                        /* 客户端关闭连接 */
                        close(conn_fd);
                    } else {
                        /* 回显数据 */
                        write(conn_fd, buffer, count);
                    }
                }
            }
        }
    }

    close(listen_fd);
    close(epoll_fd);
    return 0;
}
