#include <snrt.h>
#include "printf.h"

#include "reverse_conflict.h"

#define TCDM_START 0x100000
#define SIZE 10

void init_data(double *p, uint32_t n, double x){
    for (uint32_t i = 0; i < n; i++){
        p[i] = ((double)i / 100.0) + x;
    }
}

double sumup(double *a, int n) {
    double r = 0.0;
    for (int i = 0; i < n; i++) {
        r += a[i];
    }
    return r;
}

int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = SIZE;

    double *a = (double *)TCDM_START;
    double *b = (double *)(TCDM_START + sizeof(double) * SIZE);

    init_data(a, n, 1.0);
    init_data(b, n, 10.0);
    
    reverse_conflict(a, b, n);

    double r = sumup(a, n);
    double r_true = 1023.0;

    double error = r - r_true;
    error = error < 0.0 ? -error : error;

    printf("error = %f\n", error);
    
    return error > 0.0001;
}