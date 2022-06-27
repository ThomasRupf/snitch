
#include <snrt.h>
#include "printf.h"

#include "scalarprod.h"

void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = seed * 3.141;
        seed++;
    }
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    uint32_t n = 10;

    double *a = (double *)snrt_l1alloc(n * sizeof(double));
    double *b = (double *)snrt_l1alloc(n * sizeof(double));

    init_data(a, n, 1);
    init_data(b, n, 1);

    double r = scalarprod(a, b, (int)n);
    double r0 = scalarprod(a, b, 0); //=0.0;

    double r_true = 3798.364185;

    double error = r + r0 - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001;
}