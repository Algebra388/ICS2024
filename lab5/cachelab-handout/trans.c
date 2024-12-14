/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
//ID:2300012938
//NAME:张乐天
/*
this is a program to attain a more cache-friendly approach 
to complete transpose for matrix 
*/
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int i, j, p;
    int tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;
    if(M == 32 && N == 32)
    {
        for(i = 0; i < N; i += 8)
        {
            for(j = 0; j < M; j += 8)
            {
                for(p = i; p < i + 8; p++)
                {
                    tmp1 = A[p][j];
                    tmp2 = A[p][j + 1];
                    tmp3 = A[p][j + 2];
                    tmp4 = A[p][j + 3];
                    tmp5 = A[p][j + 4];
                    tmp6 = A[p][j + 5];
                    tmp7 = A[p][j + 6];
                    tmp8 = A[p][j + 7];
                    B[j][p] = tmp1;
                    B[j + 1][p] = tmp2;
                    B[j + 2][p] = tmp3;
                    B[j + 3][p] = tmp4;
                    B[j + 4][p] = tmp5;
                    B[j + 5][p] = tmp6;
                    B[j + 6][p] = tmp7;
                    B[j + 7][p] = tmp8;
                }
            }
        }
    }
    else if(M == 64 && N == 64)
    {
        /*for(int i = 0; i < M; ++i)
            for(int j = 0; j < N; ++j)
                B[i][j] = 0;*/
        for(i = 0; i < N; i += 8)
        {
            for(j = 0; j < M; j += 8)
            {
                for(p = i; p < i + 4; p++)
                {
                    tmp1 = A[p][j];
                    tmp2 = A[p][j + 1];
                    tmp3 = A[p][j + 2];
                    tmp4 = A[p][j + 3];
                    tmp5 = A[p][j + 4];
                    tmp6 = A[p][j + 5];
                    tmp7 = A[p][j + 6];
                    tmp8 = A[p][j + 7];
                    B[j][p] = tmp1;
                    B[j + 1][p] = tmp2;
                    B[j + 2][p] = tmp3;
                    B[j + 3][p] = tmp4;
                    B[j][p + 4] = tmp5;
                    B[j + 1][p + 4] = tmp6;
                    B[j + 2][p + 4] = tmp7;
                    B[j + 3][p + 4] = tmp8;
                }
                /// [A1^T,A2^T,
                ///  A3,A4^T]
                ///  A 少掉 1/4 的cache miss
                for(p = j; p < j + 4; p++)
                {
                    tmp1 = B[p][i + 4];
                    tmp2 = B[p][i + 5];
                    tmp3 = B[p][i + 6];
                    tmp4 = B[p][i + 7];
                    tmp5 = A[i + 4][p];
                    tmp6 = A[i + 5][p];
                    tmp7 = A[i + 6][p];
                    tmp8 = A[i + 7][p];
                    B[p][i + 4] = tmp5; 
                    B[p][i + 5] = tmp6; 
                    B[p][i + 6] = tmp7; 
                    B[p][i + 7] = tmp8; 
                    B[p + 4][i] = tmp1;
                    B[p + 4][i + 1] = tmp2;
                    B[p + 4][i + 2] = tmp3;
                    B[p + 4][i + 3] = tmp4;
                }
                //节约下面块的缓存
                for(p = i; p < i + 4; p++)
                {
                    //fprintf(stderr, "%d %d\n", p, j);
                    tmp5 = A[p + 4][j + 4];
                    tmp6 = A[p + 4][j + 5];
                    tmp7 = A[p + 4][j + 6];
                    tmp8 = A[p + 4][j + 7];
                    B[j + 4][p + 4] = tmp5;
                    B[j + 5][p + 4] = tmp6;
                    B[j + 6][p + 4] = tmp7;
                    B[j + 7][p + 4] = tmp8;
                }
            }
        }
        /*for(i = 0; i < N; ++i)
        {
            for(j = 0; j < M; ++j)
            {
                fprintf(stderr, "A[%d][%d] = %d, B[%d][%d] = %d\n", i, j, A[i][j], j, i, B[j][i]);
            }
        }*/
    }
    /// if the line number is odd, it is like 4,8,8,8,8,8,...,8
    /// if the line number is even, it is like 8,8,8,8,8,8,...,4
    else if(M == 60 && N == 68)
    {
        for(i = 0; i + 8 < N; i += 8)
        {
            for(j = 0; j + 8 < M; j += 8)
            {
                for(p = i; p < i + 8; p++)
                {
                    if(! (p & 1))
                    {
                        tmp1 = A[p][j];
                        tmp2 = A[p][j + 1];
                        tmp3 = A[p][j + 2];
                        tmp4 = A[p][j + 3];
                        tmp5 = A[p][j + 4];
                        tmp6 = A[p][j + 5];
                        tmp7 = A[p][j + 6];
                        tmp8 = A[p][j + 7];
                        B[j][p] = tmp1;
                        B[j + 1][p] = tmp2;
                        B[j + 2][p] = tmp3;
                        B[j + 3][p] = tmp4;
                        B[j + 4][p] = tmp5;
                        B[j + 5][p] = tmp6;
                        B[j + 6][p] = tmp7;
                        B[j + 7][p] = tmp8;
                    }
                    else
                    {
                        j += 4;
                        tmp1 = A[p][j];
                        tmp2 = A[p][j + 1];
                        tmp3 = A[p][j + 2];
                        tmp4 = A[p][j + 3];
                        tmp5 = A[p][j + 4];
                        tmp6 = A[p][j + 5];
                        tmp7 = A[p][j + 6];
                        tmp8 = A[p][j + 7];
                        B[j][p] = tmp1;
                        B[j + 1][p] = tmp2;
                        B[j + 2][p] = tmp3;
                        B[j + 3][p] = tmp4;
                        B[j + 4][p] = tmp5;
                        B[j + 5][p] = tmp6;
                        B[j + 6][p] = tmp7;
                        B[j + 7][p] = tmp8;
                        j -= 4;
                    }
                }
            }
            for(p = i; p < i + 4; p++)
            {
                if(! (p & 1))j = 56;
                else j = 0;
                tmp1 = A[p][j];
                tmp2 = A[p][j + 1];
                tmp3 = A[p][j + 2];
                tmp4 = A[p][j + 3];
                B[j][p] = tmp1;
                B[j + 1][p] = tmp2;
                B[j + 2][p] = tmp3;
                B[j + 3][p] = tmp4;
            }
            for(p = i; p < i + 4; p++)
            {
                if(! (p & 1))j = 56;
                else j = 0;
                tmp5 = A[p + 4][j];
                tmp6 = A[p + 4][j + 1];
                tmp7 = A[p + 4][j + 2];
                tmp8 = A[p + 4][j + 3];
                B[j][p + 4] = tmp5;
                B[j + 1][p + 4] = tmp6;
                B[j + 2][p + 4] = tmp7;
                B[j + 3][p + 4] = tmp8;
            }
        }
        i = 64;
        for(j = 0; j < M; j += 4)
        {
            for(p = i; p < i + 4; p++)
            {
                tmp1 = A[p][j];
                tmp2 = A[p][j + 1];
                tmp3 = A[p][j + 2];
                tmp4 = A[p][j + 3];
                B[j][p] = tmp1;
                B[j + 1][p] = tmp2;
                B[j + 2][p] = tmp3;
                B[j + 3][p] = tmp4;
            }
        }
    }
    else
    {
        for (i = 0; i < N; i++) {
            for (j = 0; j < M; j++) {
                tmp1 = A[i][j];
                B[j][i] = tmp1;
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
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
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
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

