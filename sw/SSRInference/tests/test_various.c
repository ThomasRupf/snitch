
#include <snrt.h>
#include "printf.h"

#include "various.h"


int main(){
    if(snrt_cluster_compute_core_idx() != 0u) return 0;

    int n = 25;

    return various(n);
}