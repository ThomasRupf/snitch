
#include <snrt.h>
#include "printf.h"

//init data
void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(seed + i);
    }
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = 9;
    int m = 12;

    double *a = (double *)snrt_l1alloc(n * m * sizeof(double)); //n x m matrix
    
    init_data(a, n * m, 1); 

    //row-wise access of row-major matrix
    double r_row = 0.0;
    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            r_row += a[i*m + j];
        }
    }

    //col-wise access of row-major matrix
    double r_col = 0.0;
    for (int j = 0; j < m; j++){
        for (int i = 0; i < n; i++){
            r_col += a[j + i*m];
        }
    }

    //row-wise in reverse
    double r_rev = 0.0;
    for (int i = n-1; i >= 0; i--) {
        for (int j = 0; j < m; j++) {
            r_rev += a[i*m + j];
        }
    }

    double error = 2*r_row - r_col - r_rev;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001;
}