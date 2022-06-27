
//sums all elements in A
double summat(double *A, int n, int m){
    double r = 0.0;
    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            r += A[i * m + j];
        }
    }
    return r;
}