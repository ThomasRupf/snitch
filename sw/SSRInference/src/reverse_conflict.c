#include "reverse_conflict.h"

void reverse_conflict(double *a, double *b, int n) {
    for (int i = 0; i < (n-1); i++) {
        a[i+1] = 2*b[i - n]; // &b[i - n] = &a[i] with the a,b from main!!!
    }
}