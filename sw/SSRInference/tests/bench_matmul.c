#include <snrt.h>
#include "printf.h"
#include "summat.h"
#include "matmul.h"
#include "benchmark.h"

# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(MEDIUM_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define MINI_DATASET
# endif

# if !defined(N) && !defined(M) && !defined(P)
#  if defined(MINI_DATASET)
#   define N 30
#   define M 35
#   define P 40
#   define R_TRUE 46053932.508000
#  endif
#  if defined(SMALL_DATASET)
#   define N 50
#   define M 55
#   define P 60
#   define R_TRUE 180397634.085000
#  endif
# endif

void init_data(double *p, uint32_t n, int seed){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(seed + i % 20) * 3.141;
    }
}

int main(){
    if (snrt_cluster_compute_core_idx() != 0u) {
        return 0;
    }

    uint32_t n = N;
    uint32_t m = M;
    uint32_t p = P;

    double *a = (double *)snrt_l1alloc(n * p * sizeof(double));
    double *b = (double *)snrt_l1alloc(p * m * sizeof(double));
    double *c = (double *)snrt_l1alloc(n * m * sizeof(double));

    init_data(a, n * p, 1);
    init_data(b, p * m, 1);

    size_t start = benchmark_get_cycle();

    #ifdef IS_RESTRICTED
    matmul_restricted(c, a, b, n, p, m);
    #else 
    matmul(c, a, b, n, p, m);
    #endif

    size_t end = benchmark_get_cycle();

    printf("cycles = %lu\n", end - start);

    double r_true = R_TRUE;
    double r = summat(c, n, m);

    double error = r - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001;
}