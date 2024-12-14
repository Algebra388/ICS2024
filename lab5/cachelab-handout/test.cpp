#include<bits/stdc++.h>
int main()
{
    int i, j, p;
    int tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;
    int N = 60, M = 68;
    int A[100][100];
    int B[100][100];
    for(int i=0;i<N;++i)for(int j=0;j<M;++j)A[i][j]=rand();
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
            j = 56;
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
            j = 56;
            for(p = i + 4; p < i + 8; p++)
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
        for(i = 0; i < N; ++i)
        {
            for(j = 0; j < M; ++j)
            {
                fprintf(stderr, "A[%d][%d] = %d, B[%d][%d] = %d\n", i, j, A[i][j], j, i, B[j][i]);
            }
        }
    return 0;
}