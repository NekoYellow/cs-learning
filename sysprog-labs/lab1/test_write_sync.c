#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

#define BUFFSIZE 262144
#define FILESIZE 33554432

int main(void) {
    int i, loop = FILESIZE / BUFFSIZE;
    char buf[BUFFSIZE];
    int fd = open("out.txt", O_WRONLY | O_CREAT | O_TRUNC | O_SYNC);

    for (i = 0; i < BUFFSIZE; i++) {
        buf[i] = 'a';
    }

    for (i = 0; i < loop; i++) {
        if (write(fd, buf, BUFFSIZE) != BUFFSIZE) {
            exit(1);
        }
    }
    printf("Executed %d loops\n", loop);
    close(fd);

    exit(0);
}