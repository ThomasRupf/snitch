
#include <snrt.h>
#include "printf.h"

#include "matmul.h"
#include "summat.h"

void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(seed + i);
    }
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    uint32_t n = 3;
    uint32_t m = 4;

    double *a = (double *)snrt_l1alloc(n * m * sizeof(double)); //n x m matrix
    
    init_data(a, n * m, 1);
    // r1, s1 ==> r1, s1
    // r2, s2 ==> r2, s2 - (r1 * s1)
    // r3, s3 ==> r3, st3 - (r2 * s2) - (r1 * s1)

    // p-1, 8     -> p-1, 8
    // m-1, p*8   -> m-1, p*8 - (p-1)*8 = 8
    // n-1, p*m*8 -> n-1, p*m*8 - (m-1)*(p*8) - (p-1)*8 = 

    //colwise access of row-major matrix
    __builtin_ssr_setup_bound_stride_1d(1, n-1, m * sizeof(double));               //m * 8
    __builtin_ssr_setup_bound_stride_2d(1, m-1, (1 - (n-1) * m) * sizeof(double)); //8
    __builtin_ssr_setup_repetition(1, 0);
    __builtin_ssr_read_imm(1, 1, a);
    __builtin_ssr_enable();
    double r = 0.0;
    for (uint32_t i = 0; i < m; i++){
        for (uint32_t j = 0; j < n; j++){
            r += __builtin_ssr_pop(1);
        }
    }
    __builtin_ssr_disable();

    __builtin_ssr_setup_bound_stride_1d(1, m-1, sizeof(double)); //8
    __builtin_ssr_setup_bound_stride_2d(1, n-1, sizeof(double)); //m * 8
    __builtin_ssr_setup_repetition(1, 0);
    __builtin_ssr_read_imm(1, 1, a);
    __builtin_ssr_enable();
    double r_ = 0.0;
    for (uint32_t i = 0; i < n; i++){
        for (uint32_t j = 0; j < m; j++){
            r_ += __builtin_ssr_pop(1);
        }
    }
    __builtin_ssr_disable();

    return r == r_;
}