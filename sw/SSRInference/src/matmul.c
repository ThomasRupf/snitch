
#include<matmul.h>

//A = nxp, B = pxm -> C = nxm
void matmul(double C[], double A[], double B[], int n, int p, int m){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            double c = 0.0;
            for (int k = 0; k < p; k++){
                c += A[p*i + k] * B[k*m + j];
            }
            C[m*i + j] = c;
        }
    }
    return;
}

//A = nxp, B = pxm -> C = nxm
void matmul_restricted(double *restrict C, double *restrict A, double *restrict B, int n, int p, int m){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            double c = 0.0;
            for (int k = 0; k < p; k++){
                c += A[p*i + k] * B[k*m + j];
            }
            C[m*i + j] = c;
        }
    }
    return;
}