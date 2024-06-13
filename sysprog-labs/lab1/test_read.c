#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

#define BUFFSIZE 262144

int main(void) {
    int n, loop = 0;
    char buf[BUFFSIZE];
    int fd = open("in.txt", O_RDONLY);

    while ((n = read(fd, buf, BUFFSIZE)) > 0) {
        loop++;
    }
    if (n < 0) {
        exit(1); // read error
    }
    printf("Executed %d loops\n", loop);
    close(fd);

    exit(0);
}