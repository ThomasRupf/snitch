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

//from 3mm.h
# if !defined(NI) && !defined(NJ) && !defined(NK) && !defined(NL) && !defined(NM)
/* Define sample dataset sizes. */
#  ifdef MINI_DATASET
#   define NI 16
#   define NJ 18
#   define NK 20
#   define NL 22
#   define NM 24
#  endif

#  ifdef SMALL_DATASET
#   define NI 40
#   define NJ 50
#   define NK 60
#   define NL 70
#   define NM 80
#  endif

#  ifdef MEDIUM_DATASET
#   define NI 180
#   define NJ 190
#   define NK 200
#   define NL 210
#   define NM 220
#  endif

#  ifdef LARGE_DATASET
#   define NI 800
#   define NJ 900
#   define NK 1000
#   define NL 1100
#   define NM 1200
#  endif

#  ifdef EXTRALARGE_DATASET
#   define NI 1600
#   define NJ 1800
#   define NK 2000
#   define NL 2200
#   define NM 2400
#  endif

#endif /* !(NI NJ NK NL NM) */

static
void *polybench_alloc_data(int n, int size){
    return snrt_l1alloc(n * size);
}

static
void init_array(int ni, int nj, int nk, int nl, int nm,
  double A[NI][NK],
  double B[NK][NJ],
  double C[NJ][NM],
  double D[NM][NL])
{
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i][j] = (double) ((i*j+1) % ni) / (5*ni);
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i][j] = (double) ((i*(j+1)+2) % nj) / (5*nj);
  for (i = 0; i < nj; i++)
    for (j = 0; j < nm; j++)
      C[i][j] = (double) (i*(j+3) % nl) / (5*nl);
  for (i = 0; i < nm; i++)
    for (j = 0; j < nl; j++)
      D[i][j] = (double) ((i*(j+2)+2) % nk) / (5*nk);
}




static
void kernel_3mm(int ni, int nj, int nk, int nl, int nm,
  double E[RESTRICT NI][NJ],
  double A[RESTRICT NI][NK],
  double B[RESTRICT NK][NJ],
  double F[RESTRICT NJ][NL],
  double C[RESTRICT NJ][NM],
  double D[RESTRICT NM][NL],
  double G[RESTRICT NI][NL])
{
  int i, j, k;

#pragma scop
 /* E := A*B */
 for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
      {
 E[i][j] = 0.0;
 for (k = 0; k < nk; ++k)
   E[i][j] += A[i][k] * B[k][j];
      }
  /* F := C*D */
  for (i = 0; i < nj; i++)
    for (j = 0; j < nl; j++)
      {
 F[i][j] = 0.0;
 for (k = 0; k < nm; ++k)
   F[i][j] += C[i][k] * D[k][j];
      }
  /* G := E*F */
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      {
 G[i][j] = 0.0;
 for (k = 0; k < nj; ++k)
   G[i][j] += E[i][k] * F[k][j];
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
  int nm = NM;

  double (*E)[NI][NJ]; E = (double(*)[NI][NJ])polybench_alloc_data ((NI) * (NJ), sizeof(double));;
  double (*A)[NI][NK]; A = (double(*)[NI][NK])polybench_alloc_data ((NI) * (NK), sizeof(double));;
  double (*B)[NK][NJ]; B = (double(*)[NK][NJ])polybench_alloc_data ((NK) * (NJ), sizeof(double));;
  double (*F)[NJ][NL]; F = (double(*)[NJ][NL])polybench_alloc_data ((NJ) * (NL), sizeof(double));;
  double (*C)[NJ][NM]; C = (double(*)[NJ][NM])polybench_alloc_data ((NJ) * (NM), sizeof(double));;
  double (*D)[NM][NL]; D = (double(*)[NM][NL])polybench_alloc_data ((NM) * (NL), sizeof(double));;
  double (*G)[NI][NL]; G = (double(*)[NI][NL])polybench_alloc_data ((NI) * (NL), sizeof(double));;

  init_array (ni, nj, nk, nl, nm, *A, *B, *C, *D);

  size_t start = benchmark_get_cycle();

  kernel_3mm (ni, nj, nk, nl, nm, *E, *A, *B, *F, *C, *D, *G);

  size_t end = benchmark_get_cycle();

  printf("cycles = %lu\n", end - start);


  double r = summat(*G, ni, nl);

  #ifdef MINI_DATASET
  double r_true = 169.062725;
  #endif

  #ifdef SMALL_DATASET
  double r_true = 50186.455082;
  #endif

  double error = r - r_true;
  error = error < 0.0 ? -error : error;

  printf("error = %f\n", error);

  return error > 0.0001;
}
