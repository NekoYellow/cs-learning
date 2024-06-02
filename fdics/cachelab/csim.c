/*
 * csim.c - Simulates a cache.
 */
#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>

typedef struct Line {
    int valid;
    long long tag;
    int timestamp;
} Line;

int s, S, E, b, B, t;
Line **cache;
int time = 0;
int hit = 0, miss = 0, eviction = 0;

void init_cache()
{
    int i, j;
    cache = (Line **)malloc(sizeof(Line *) * S);
    for (i = 0; i < S; i++) {
        cache[i] = (Line *)malloc(sizeof(Line) * E);
        for (j = 0; j < E; j++) {
            cache[i][j].valid = 0;
        }
    }
}

void emplace_data(int i, long long tag)
{
    int j, tmn;
    for (j = 0; j < E; j++) {
        if (cache[i][j].valid) continue;
        cache[i][j].valid = 1;
        cache[i][j].tag = tag;
        cache[i][j].timestamp = time++;
        return;
    }
    // LRU replacement
    tmn = time;
    for (j = 0; j < E; j++) {
        if (cache[i][j].timestamp < tmn)
            tmn = cache[i][j].timestamp;
    }
    for (j = 0; j < E; j++) {
        if (cache[i][j].timestamp != tmn) continue;
        cache[i][j].tag = tag;
        cache[i][j].timestamp = time++;
    }
    eviction++;
}

void access_data(long long addr)
{
    int i, j;
    long long tag;
    // set selection
    i = (addr >> b) & ((1 << s) - 1);
    // line matching
    tag = (addr >> (b+s)) & ((1ll << t) - 1);
    for (j = 0; j < E; j++) {
        if (!cache[i][j].valid) continue;
        if (cache[i][j].tag != tag) continue;
        cache[i][j].timestamp = time++;
        hit++;
        return;
    }
    miss++;
    emplace_data(i, tag);
}

int main(int argc, char *argv[])
{
    FILE *in;
    char buf[20], type;
    int opt, size, i;
    long long addr;

    while ((opt = getopt(argc, argv, "s:E:b:t:")) != -1) {
        switch (opt) {
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            if ((in = fopen(optarg, "r")) == NULL) {
                perror("fopen error");
                exit(EXIT_FAILURE);
            }
            break;
        default:
            printf("usage: ./csim -s <num> -E <num> -b <num> -t <file>\n");
            exit(EXIT_FAILURE);
        }
    }

    S = 1 << s, B = 1 << b;
    t = 64 - s - b;
    init_cache();

    while (fgets(buf, 19, in) != NULL) {
        if (buf[0] == 'I') continue;
        sscanf(buf, " %c %llx,%d", &type, &addr, &size);
        if (type == 'M')
            access_data(addr);
        access_data(addr);
    }
    printSummary(hit, miss, eviction);

    fclose(in);
    for (i = 0; i < S; i++) {
        free(cache[i]);
    }
    free(cache);
    return 0;
}
