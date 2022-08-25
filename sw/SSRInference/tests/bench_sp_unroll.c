
#include <snrt.h>
#include "printf.h"

#include "scalarprod.h"
#include "benchmark.h"

# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(MEDIUM_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define MINI_DATASET
# endif

# if !defined(N)
#  if defined(MINI_DATASET)
#   define N 100
#   define R_TRUE 2850.0
#  endif
#  if defined(SMALL_DATASET)
#   define N 1000
#   define R_TRUE 28500.0
#  endif
# endif

void init_data(double *p, uint32_t n){
    for (uint32_t i = 0; i < n; i++){
        p[i] = (double)(i % 10);
    }
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = N;

    double *a = (double *)snrt_l1alloc(n * sizeof(double));
    double *b = (double *)snrt_l1alloc(n * sizeof(double));

    init_data(a, n);
    init_data(b, n);

    size_t start = benchmark_get_cycle();

    double r = scalarprod_unrolled(a, b, n);

    size_t end = benchmark_get_cycle();

    printf("cycles = %lu\n", end - start);

    double r_true = R_TRUE;

    double error = r - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001;
}