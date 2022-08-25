#include <scalarprod.h>
#include "printf.h"

static void foo() {}

double scalarprod(double *a, double *b, int n){
    double r = 0.0;
    for (int i = 0; i < n; i++){
        r += a[i] * b[i];
    }
    return r;
}

double scalarprod_restricted(double *restrict a, double *restrict b, int n){
    double r = 0.0;
    for (int i = 0; i < n; i++){
        r += a[i] * b[i];
    }
    return r;
}

double scalarprod_unrolled(double *a, double *b, int n){
    double r = 0.0;
    #pragma clang loop unroll_count(16)
    for (int i = 0; i < n; i++){
        r += a[i] * b[i];
    }
    return r;
}