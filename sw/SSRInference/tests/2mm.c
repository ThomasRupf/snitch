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

//from 2mm.h:
# if !defined(NI) && !defined(NJ) && !defined(NK) && !defined(NL)
/* Define sample dataset sizes. */
#  ifdef MINI_DATASET
#   define NI 16
#   define NJ 18
#   define NK 22
#   define NL 24
#  endif

#  ifdef SMALL_DATASET
#   define NI 40
#   define NJ 50
#   define NK 70
#   define NL 80
#  endif

#  ifdef MEDIUM_DATASET
#   define NI 180
#   define NJ 190
#   define NK 210
#   define NL 220
#  endif

#  ifdef LARGE_DATASET
#   define NI 800
#   define NJ 900
#   define NK 1100
#   define NL 1200
#  endif

#  ifdef EXTRALARGE_DATASET
#   define NI 1600
#   define NJ 1800
#   define NK 2200
#   define NL 2400
#  endif

#endif /* !(NI NJ NK NL) */


static
void *polybench_alloc_data(int n, int size){
    return snrt_l1alloc(n * size);
}

static
void init_array(int ni, int nj, int nk, int nl,
  double *alpha,
  double *beta,
  double A[NI][NK],
  double B[NK][NJ],
  double C[NJ][NL],
  double D[NI][NL])
{
  int i, j;

  *alpha = 1.5;
  *beta = 1.2;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i][j] = (double) ((i*j+1) % ni) / ni;
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i][j] = (double) (i*(j+1) % nj) / nj;
  for (i = 0; i < nj; i++)
    for (j = 0; j < nl; j++)
      C[i][j] = (double) ((i*(j+3)+1) % nl) / nl;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      D[i][j] = (double) (i*(j+2) % nk) / nk;
}



static
void kernel_2mm(int ni, int nj, int nk, int nl,
  double alpha,
  double beta,
  double tmp[RESTRICT NI][NJ],
  double A[RESTRICT NI][NK],
  double B[RESTRICT NK][NJ],
  double C[RESTRICT NJ][NL],
  double D[RESTRICT NI][NL])
{
  int i, j, k;

#pragma scop
    /* D := alpha*A*B*C + beta*D */
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++) {
      tmp[i][j] = 0.0;
      for (k = 0; k < nk; ++k) {
        tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
    }
  }
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nl; j++) {
      D[i][j] *= beta;
      for (k = 0; k < nj; ++k) {
        D[i][j] += tmp[i][k] * C[k][j];
      }
    }
  }
#pragma endscop

}


int main()
{
  if(snrt_cluster_compute_core_idx() != 0u) return 0;

  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;


  double alpha;
  double beta;
  double (*tmp)[NI][NJ]; tmp = (double(*)[NI][NJ])polybench_alloc_data ((NI) * (NJ), sizeof(double));;
  double (*A)[NI][NK]; A = (double(*)[NI][NK])polybench_alloc_data ((NI) * (NK), sizeof(double));;
  double (*B)[NK][NJ]; B = (double(*)[NK][NJ])polybench_alloc_data ((NK) * (NJ), sizeof(double));;
  double (*C)[NJ][NL]; C = (double(*)[NJ][NL])polybench_alloc_data ((NJ) * (NL), sizeof(double));;
  double (*D)[NI][NL]; D = (double(*)[NI][NL])polybench_alloc_data ((NI) * (NL), sizeof(double));;


  init_array (ni, nj, nk, nl, &alpha, &beta, *A, *B, *C, *D);

  size_t start = benchmark_get_cycle();
  kernel_2mm (ni, nj, nk, nl, alpha, beta, *tmp, *A, *B, *C, *D);
  size_t end = benchmark_get_cycle();

  printf("cycles = %lu\n", end - start);


  double r = summat(*D, ni, nl);

  #ifdef MINI_DATASET
  double r_true = 17079.477273;
  #endif

  #ifdef SMALL_DATASET
  double r_true = 1689742.377857;
  #endif

  double error = r - r_true;
  error = error < 0.0 ? -error : error;

  printf("error = %f\n", error);

  return error > 0.0001;
}
