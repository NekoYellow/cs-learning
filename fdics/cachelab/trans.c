/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, k, l;
    int a0, a1, a2, a3, a4, a5, a6, a7;
    if (M == 32) {
        for (i = 0; i < N; i += 8) {
            for (j = 0; j < M; j += 8) {
                for (k = 0; k < 8; k++) {
                    a0 = A[i+k][j]; a1 = A[i+k][j+1]; a2 = A[i+k][j+2]; a3 = A[i+k][j+3];
                    a4 = A[i+k][j+4]; a5 = A[i+k][j+5]; a6 = A[i+k][j+6]; a7 = A[i+k][j+7];
                    B[j][i+k] = a0; B[j+1][i+k] = a1; B[j+2][i+k] = a2; B[j+3][i+k] = a3;
                    B[j+4][i+k] = a4; B[j+5][i+k] = a5; B[j+6][i+k] = a6; B[j+7][i+k] = a7;
                }
            }
        }
    } else if (M == 64) {
        for (i = 0; i < N; i += 8) {
            for (j = 0; j < M; j += 8) {
                for (k = 0; k < 4; k++) {
                    // read subblock 1 and 2
                    a0 = A[i+k][j]; a1 = A[i+k][j+1]; a2 = A[i+k][j+2]; a3 = A[i+k][j+3];
                    a4 = A[i+k][j+4]; a5 = A[i+k][j+5]; a6 = A[i+k][j+6]; a7 = A[i+k][j+7];
                    B[j][i+k] = a0; B[j+1][i+k] = a1; B[j+2][i+k] = a2; B[j+3][i+k] = a3;
                    // put in reversed order
                    B[j][i+k+4] = a7; B[j+1][i+k+4] = a6; B[j+2][i+k+4] = a5; B[j+3][i+k+4] = a4;
                }
                for (k = 0; k < 4; k++) {
                    // read by column
                    a0 = A[i+4][j+3-k]; a1 = A[i+5][j+3-k]; a2 = A[i+6][j+3-k]; a3 = A[i+7][j+3-k];
                    a4 = A[i+4][j+4+k]; a5 = A[i+5][j+4+k]; a6 = A[i+6][j+4+k]; a7 = A[i+7][j+4+k];
                    // transpose 2 to 3 by row
                    B[j+4+k][i] = B[j+3-k][i+4]; B[j+4+k][i+1] = B[j+3-k][i+5];
                    B[j+4+k][i+2] = B[j+3-k][i+6]; B[j+4+k][i+3] = B[j+3-k][i+7];
                    // put 3 and 4 in right place
                    B[j+3-k][i+4] = a0; B[j+3-k][i+5] = a1; B[j+3-k][i+6] = a2; B[j+3-k][i+7] = a3;
                    B[j+4+k][i+4] = a4; B[j+4+k][i+5] = a5; B[j+4+k][i+6] = a6; B[j+4+k][i+7] = a7;
                } 
            }
        }
    } else if (M == 61) {
        for (i = 0; i < N; i += 16) {
            for (j = 0; j < M; j += 16) {
                for (k = 0; k < 16 && i+k < N; k++) {
                    a0 = -1, a1 = 0;
                    for (l = 0; l < 16 && j+l < M; l++) {
                        if (i+k == j+l) { // on diagonal (conflict)
                            a0 = i+k;
                            a1 = A[i+k][i+k];
                        } else {
                            B[j+l][i+k] = A[i+k][j+l];
                        }
                    }
                    if (~a0) // conflicted element
                        B[a0][a0] = a1;
                }
            }
        }
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, temp;
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            temp = A[i][j];
            B[j][i] = temp;
        }
    }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

