
#include <snrt.h>
#include "printf.h"

void init_data(double *p, uint32_t n){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(i) / 1000.0;
    }
}

double sum(double *a, int n, int m, int p, int q, int r){
    double res = 0.0;
    for (int in = 0; in < n; in++){
        for (int im = 0; im < m; im++){
            for (int ip = 0; ip < p; ip++){
                for (int iq = 0; iq < q; iq++){
                    for (int ir = 0; ir < r; ir++){
                        res += a[in*m*q*r + im*q*r + iq*r + ir];
                    }
                }
            }
        }
    }
    return res;
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = 3;
    int m = 4;
    int p = 5;
    int q = 6;
    int r = 7;

    int elems = n * m  *  q * r;

    double *a = (double *)snrt_l1alloc(elems * sizeof(double));
    
    init_data(a, elems); 

    double res = sum(a, n, m, p, q, r);

    double res_true = 633.78;

    double error = res - res_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);
    
    return error > 0.0001;
}