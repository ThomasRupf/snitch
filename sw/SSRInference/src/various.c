#include <snrt.h>
#include "printf.h"

#include "various.h"
#include "scalarprod.h"

static void init_data(double *ptr, int n){
    for (int i = 0; i < n; i++){
        ptr[i] = (double)(i % 31) * 1.4142;
    }
}

static double norm(double A[], int n){
    double r = 0.0;
    for (int i = 0; i < n; i++){
        r += A[i] * A[i];
    }
    return r;
}

static double notOnAllCFPaths(double *A, int n){
	double r = 0.0;
	for (int i = 0; i < n; i++){
		if (i % 2 == 0) r += A[i];
	}
	return r;
}

static double skipAfterContantNrOfRounds(double *A, int n){
	double r = 0.0;
	for (int i = 0; i < n; i++){
		r += A[i];
		if (i >= 10) break;
	}
	return r;
}

double abs(double x){ return x < 0.0 ? -x : x; }

__attribute__((noinline)) int various(int n){
    double *v = (double *)snrt_l1alloc(n * sizeof(double));

    init_data(v, n);

    double r_norm = norm(v, n);
    double r_norm_true = 9799.812036;
    double r_notcf = notOnAllCFPaths(v, n);
    double r_notcf_true = 220.615200;
    double r_skip = skipAfterContantNrOfRounds(v, n);
    double r_skip_true = 77.781000;
    double r_sp = scalarprod(v, v, n); //aliasing reads should be okay 
    double r_sp_true = r_norm_true;

    double error = abs(r_norm - r_norm_true) + abs(r_notcf - r_notcf_true) + abs(r_skip - r_skip_true) + abs(r_sp - r_sp_true);

    printf("error = %f\n", error);

    return error > 0.0001;
}