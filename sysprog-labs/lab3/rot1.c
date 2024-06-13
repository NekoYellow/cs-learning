#include <ctype.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define BSZ 4096000

unsigned char buf[BSZ];

void
err_sys(const char *msg)
{
    perror(msg);
    exit(1);
}

unsigned char
translate(unsigned char c)
{
    if (isalpha(c)) {
        if (c >= 'n')
            c -= 13;
        else if (c >= 'a')
            c += 13;
        else if (c >= 'N')
            c -= 13;
        else
            c += 13;
    }
    return(c);
}

int
main(int argc, char* argv[])
{
    int	ifd, ofd, i, n, nw;

    if (argc != 3)
        err_sys("usage: rot1 infile outfile");
    if ((ifd = open(argv[1], O_RDONLY)) < 0)
        err_sys("open failed");
    if ((ofd = open(argv[2], O_RDWR|O_CREAT|O_TRUNC, 0777)) < 0)
        err_sys("create failed");

    clock_t start_time = clock();
    while ((n = read(ifd, buf, BSZ)) > 0) {
        for (i = 0; i < n; i++)
            buf[i] = translate(buf[i]);
        if ((nw = write(ofd, buf, n)) != n) {
            if (nw < 0)
                err_sys("write failed");
            else
                err_sys("short write");
        }
    }
    clock_t end_time = clock();
    printf("Sync translation time: %f seconds\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);

    fsync(ofd);
    exit(0);
}
