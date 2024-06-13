#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

#define BUFFSIZE 4096

int main(void) {
    int n, loop = 0;
    char buf[BUFFSIZE];
    FILE *fp = fopen("in.txt", "r");

    while ((n = fread(buf, BUFFSIZE, 1, fp)) > 0) {
        loop++;
    }
    if (n < 0) {
        exit(1); // read error
    }
    printf("Executed %d loops\n", loop);
    fclose(fp);

    exit(0);
}