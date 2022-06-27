
#include <snrt.h>
#include "printf.h"

#include "conflict.h"

void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(seed + i) * 1.4142;
    }
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = 10;

    double *a = (double *)snrt_l1alloc(n * sizeof(double));
    double *b = (double *)snrt_l1alloc(n * sizeof(double));
    double *c = (double *)snrt_l1alloc(n * sizeof(double));

    init_data(a, n, 1);
    init_data(b, n, 2);
    init_data(c, n, 3);

    double r = conflict(a, b, c, n);
    double r_true = 169.704000;

    double error = r - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", r, error);

    return error > 0.0001;
}