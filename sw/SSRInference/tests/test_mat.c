
#include <snrt.h>
#include "printf.h"

#include "matmul.h"
#include "summat.h"

void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(seed + i % 20) * 3.141;
    }
}

int main(){
    if (snrt_cluster_compute_core_idx() != 0u) {
        return 0;
    }

    uint32_t n = 5;
    uint32_t m = 7;
    uint32_t p = 6;

    double *a = (double *)snrt_l1alloc(n * p * sizeof(double));
    double *b = (double *)snrt_l1alloc(p * m * sizeof(double));
    double *c = (double *)snrt_l1alloc(n * m * sizeof(double));

    init_data(a, n * p, 1);
    init_data(b, p * m, 1);

    matmul(c, a, b, n, p, m);
    matmul(c, a, b, n, p, 0); //does nothing

    //see matmul.py
    double r_true = 183998.680650;
    double r = summat(c, n, m);

    matmul(c, a, b, n, 0, m); //0.0's matrix c
    double r0 = summat(c, n, m); //=0.0

    double error = r + r0 - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001;
}