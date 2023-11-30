#include <iostream>
#include "smvm.h"

//// Constants
//const int nnz = 8;  // Adjust as needed
//const int m = 5;    // Adjust as needed

//// Data type for matrix and vector values
//typedef float data_t;

// Function declarations
void SpMV(volatile int rid[nnz], volatile data_t value[nnz], volatile data_t xd[nnz], volatile data_t y[m]);
void readinput(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile int *out1, volatile data_t *out2, volatile data_t *out3);
void compute(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile data_t *out);
void writeoutput(volatile data_t *in, volatile data_t *out);

int main() {
    // Test data
    volatile int rid[nnz] = {0, 0,2,2,3,3,4,4};
    volatile data_t value[nnz] = {2,1,1,4,2,1,2,1};
    volatile data_t xd[nnz] = {0,2,2,1,1,2,1,2};
    volatile data_t y[m];

    // Call the SpMV function
    SpMV(rid, value, xd, y);

    // Display the result
    std::cout << "Output Vector (y): ";
    for (int i = 0; i < m; ++i) {
        std::cout << y[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
