#pragma once

double scalarprod(double *a, double *b, int n);

double scalarprod_restricted(double *restrict a, double *restrict b, int n);

double scalarprod_unrolled(double *restrict a, double *restrict b, int n);