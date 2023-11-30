#ifndef __SPMV_H__
#define __SPMV_H__

#include <cmath>
using namespace std;

// Uncomment this line to compare TB vs HW C-model and/or RTL
//#define HW_COSIM

#define nnz 8
#define m 5
#define n 5




// Function declarations
void csr_spmv(float value[nnz], int col_index[nnz], int row_index[m+1], float x[m], float y[n]);

#endif  // SPMV_H



