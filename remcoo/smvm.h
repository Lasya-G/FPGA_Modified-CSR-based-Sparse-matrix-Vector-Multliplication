#ifndef __SPMV_H__
#define __SPMV_H__

#include <cmath>
using namespace std;

// Uncomment this line to compare TB vs HW C-model and/or RTL
#define HW_COSIM

#define nnz 8
#define m 5


typedef float data_t;


// Function declarations
void SpMV(volatile int rid[nnz], volatile data_t value[nnz], volatile data_t xd[nnz], volatile data_t y[m]);
void readinput(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile int *out1, volatile data_t *out2, volatile data_t *out3);
void compute(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile data_t *out);
void writeoutput(volatile data_t *in, volatile data_t *out);

#endif  // SPMV_H



