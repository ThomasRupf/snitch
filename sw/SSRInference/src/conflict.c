

__attribute__((noinline))
static void change_c(double *a, int i){
    a[i] = 0.0;
}

double conflict(double *a, double *b, double *c, int n){
    double r = 0.0;
    //SSRInference does all the setup AND THE PREFETCHING here! (one read stream for a, b, and c)
    //this means that it reads c[i]'s as not 0.0!
    for (int i = 0; i < n; i++){
        change_c(c, i); //c[i] = 0.0 (in a no inlineable function to prevent optimization)
        r += a[i] + b[i] + c[i];
    }
    return r;
}