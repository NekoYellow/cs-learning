#include <stdio.h>
#include <sys/time.h>
#define N 1001
#define M 1024
#define P 2048

int A[N][M], B[M][P], C[N][P];

double diff(struct timeval *b, struct timeval *e) {
    return 1000 * (e->tv_sec - b->tv_sec) + (e->tv_usec - b->tv_usec) / 1000.;
}

int main() {
    int i, j, k;
    struct timeval begin, end;

    gettimeofday(&begin, 0);
    for (i = 0; i < N; i++) {
        for (j = 0; j < P; j++) {
            for (k = 0; k < M; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    gettimeofday(&end, 0);
    printf("Simple matmul time: %fms\n", diff(&begin, &end));

    gettimeofday(&begin, 0);
    #pragma omp parallel
    {
        #pragma omp for
        for (i = 0; i < N; i++) {
            for (j = 0; j < P; j++) {
                for (k = 0; k < M; k++) {
                    C[i][j] += A[i][k] * B[k][j];
                }
            }
        }
    }
    gettimeofday(&end, 0);
    printf("OpenMP matmul time: %fms\n", diff(&begin, &end));
    return 0;
}