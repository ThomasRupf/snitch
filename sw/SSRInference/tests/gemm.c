#include <snrt.h>
#include "printf.h"
#include "summat.h"
#include "benchmark.h"

# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(MEDIUM_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define MINI_DATASET
# endif

# if defined(IS_RESTRICTED)
#  define RESTRICT restrict
# else
#  define RESTRICT 
# endif

/// from gemm.h
# if !defined(NI) && !defined(NJ) && !defined(NK)
/* Define sample dataset sizes. */
#  ifdef MINI_DATASET
#   define NI 20
#   define NJ 25
#   define NK 30
#  endif

#  ifdef SMALL_DATASET
#   define NI 60
#   define NJ 70
#   define NK 80
#  endif

#  ifdef MEDIUM_DATASET
#   define NI 200
#   define NJ 220
#   define NK 240
#  endif

#  ifdef LARGE_DATASET
#   define NI 1000
#   define NJ 1100
#   define NK 1200
#  endif

#  ifdef EXTRALARGE_DATASET
#   define NI 2000
#   define NJ 2300
#   define NK 2600
#  endif

#endif /* !(NI NJ NK) */

static
void *polybench_alloc_data(int n, int size){
    return snrt_l1alloc(n * size);
}

static
void init_array(int ni, int nj, int nk,
  double *alpha,
  double *beta,
  double C[NI][NJ],
  double A[NI][NK],
  double B[NK][NJ])
{
    int i, j;

    *alpha = 1.5;
    *beta = 1.2;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nj; j++)
            C[i][j] = (double) ((i*j+1) % ni) / ni;
    for (i = 0; i < ni; i++)
        for (j = 0; j < nk; j++)
            A[i][j] = (double) (i*(j+1) % nk) / nk;
    for (i = 0; i < nk; i++)
        for (j = 0; j < nj; j++)
            B[i][j] = (double) (i*(j+2) % nj) / nj;
}


static
void print_array(int ni, int nj,
   double C[NI][NJ])
{
    int i, j;
    printf("==BEGIN DUMP_ARRAYS==\n");
    printf("begin dump: %s", "C");
    for (i = 0; i < ni; i++)
        for (j = 0; j < nj; j++) {
            if ((i * ni + j) % 20 == 0) printf("\n");
            printf("%0.2lf ", C[i][j]);
        }
    printf("\nend   dump: %s\n", "C");
    printf("==END   DUMP_ARRAYS==\n");
}


static
void kernel_gemm(int ni, int nj, int nk,
   double alpha,
   double beta,
   double C[RESTRICT NI][NJ],
   double A[RESTRICT NI][NK],
   double B[RESTRICT NK][NJ])
{
  int i, j, k;
#pragma scop
    for (i = 0; i < ni; i++) {
        for (j = 0; j < nj; j++)
            C[i][j] *= beta;
        for (k = 0; k < nk; k++) {
            for (j = 0; j < nj; j++)
                C[i][j] += alpha * A[i][k] * B[k][j];
        }
    }
#pragma endscop
}


int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int ni = NI;
    int nj = NJ;
    int nk = NK;

    double alpha;
    double beta;
    double (*C)[NI][NJ]; C = (double(*)[NI][NJ])polybench_alloc_data((NI) * (NJ), sizeof(double));
    double (*A)[NI][NK]; A = (double(*)[NI][NK])polybench_alloc_data((NI) * (NK), sizeof(double));
    double (*B)[NK][NJ]; B = (double(*)[NK][NJ])polybench_alloc_data((NK) * (NJ), sizeof(double));

    init_array(ni, nj, nk, &alpha, &beta, *C, *A, *B);


    size_t cycle_start = benchmark_get_cycle(); //start instruments

    kernel_gemm(ni, nj, nk, alpha, beta, *C, *A, *B);

    size_t cycle_end = benchmark_get_cycle(); //stop instruments


    printf("cycles needed: %lu\n", cycle_end - cycle_start);

    //checksum for correctness
    double s = summat(*C, ni, nj); 

    //print_array(ni, nj, *C);

    #ifdef SMALL_DATASET
    double s_true = 109987.875000; //with SSR: cycles needed: 3725701
    #endif

    #ifdef MINI_DATASET
    double s_true = 4365.000000; //with SSR: cycles needed: 95508
    #endif

    double error = s - s_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);

    return error > 0.0001; //prevents dce
}
