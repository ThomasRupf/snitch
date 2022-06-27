#pragma once

void matmul(double C[], double A[], double B[], int n, int p, int m);

void matmul_restricted(double *restrict C, double *restrict A, double *restrict B, int n, int p, int m);