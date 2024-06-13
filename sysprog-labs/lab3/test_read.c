#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <aio.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <sys/stat.h>

#define BSZ 9192
#define NBUF 8

enum op {
    UNUSED = 0,
    READING = 1
};

struct buf {
    enum op op;
    int last;
    struct aiocb aiocb;
    char data[BSZ];
};

void err_sys(const char *msg)
{
    perror(msg);
    exit(1);
}

void synchronous_read(const char *filename)
{
    int fd = open(filename, O_RDONLY);
    if (fd == -1)
        err_sys("open");

    char buffer[BSZ];
    ssize_t bytes_read;

    clock_t start_time = clock();
    while ((bytes_read = read(fd, buffer, BSZ)) > 0) ;
    clock_t end_time = clock();

    if (bytes_read == -1)
        err_sys("read");

    close(fd);

    printf("Synchronous read time: %f seconds\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);
}

void asynchronous_read(const char *filename)
{
    int fd = open(filename, O_RDONLY);
    if (fd == -1)
        err_sys("open");
    struct stat sbuf;
    if (fstat(fd, &sbuf) < 0)
        err_sys("fstat failed");

    struct buf bufs[NBUF];
    for (int i = 0; i < NBUF; i++) {
        memset(&bufs[i].aiocb, 0, sizeof(struct aiocb));
        bufs[i].aiocb.aio_fildes = fd;
        bufs[i].aiocb.aio_nbytes = BSZ;
        bufs[i].aiocb.aio_buf = bufs[i].data;
    }

    int off = 0, numop = 0, err;
    clock_t start_time = clock();
    for (; ; ) {
        for (int i = 0; i < NBUF; i++) {
            switch (bufs[i].op) {
            case UNUSED:
                if (off < sbuf.st_size) {
                    bufs[i].op = READING;
                    bufs[i].aiocb.aio_offset = off;
                    off += BSZ;
                    if (off >= sbuf.st_size)
                        bufs[i].last = 1;
                    if (aio_read(&bufs[i].aiocb) < 0)
                        err_sys("aio_read failed");
                    numop++;
                }
                break;
            case READING:
                if ((err = aio_error(&bufs[i].aiocb)) == EINPROGRESS)
                    continue;
                if (err != 0) {
                    if (err == -1)
                        err_sys("aio_error failed");
                    else
                        err_sys("read failed");
                }
                int n;
                if ((n = aio_return(&bufs[i].aiocb)) < 0)
                    err_sys("aio_return failed");
                if (n != BSZ && !bufs[i].last)
                    err_sys("short read");
                bufs[i].op = UNUSED;
                numop--;
                break;
            }
        }
        if (!numop && off >= sbuf.st_size) break;
    }
    clock_t end_time = clock();

    close(fd);

    printf("Asynchronous read time: %f seconds\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);
}

int main(int argc, char *argv[])
{
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        exit(1);
    }

    const char *filename = argv[1];

    printf("Starting synchronous read...\n");
    synchronous_read(filename);

    printf("Starting asynchronous read...\n");
    asynchronous_read(filename);

    return 0;
}
