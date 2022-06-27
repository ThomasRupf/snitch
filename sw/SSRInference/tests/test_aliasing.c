#include <snrt.h>
#include "printf.h"

void init_data(double *p, uint32_t n){
    for (uint32_t i = 0; i < n; i++){
        p[i] = i;
    }
}

double sumup(double A[], int n){
    double r = 0.0;
    for (int i = 0; i < n; i++) r += A[i];
    return r;
}

void copy(double *To, double *From, int n){
    for (int i = 0; i < n; i++){
        To[i] = From[i];
    }
}

double absd(double x){ return x < 0.0 ? -x : x; }

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = 10;

    double *a = (double *)snrt_l1alloc(n * sizeof(double)); //n x m matrix
    
    init_data(a, n); 

    copy(a, a, n);
    double sum1 = sumup(a, n);
    double sum1_true = (double)(n * (n-1)) / 2.0;

    copy(a + 1, a, n-1); //WR conflict
    double sum2 = sumup(a, n);
    double sum2_true = 0.0;

    double error = absd(sum1 - sum1_true) + absd(sum2 - sum2_true);

    printf("error = %f\n", error);
    
    return error > 0.0001;
}