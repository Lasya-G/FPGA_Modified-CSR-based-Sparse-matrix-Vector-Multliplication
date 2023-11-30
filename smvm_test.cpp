#include <iostream>
#include "smvm.h"

//// Constants
//const int nnz = 11;  // Adjust as needed
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
    volatile int rid[nnz] = {0, 0, 0, 1, 1,2,2,2,3,4,4};
    volatile data_t value[nnz] = {1.23,3.34,9.91,2.67,4.89,5.91,6.31,7.27,8.83,9.03,11.02};
    volatile data_t xd[nnz] = {0.03,1.21,3.29,1.21,0.87,1.21,0.87,3.29,3.29,3.29,0.81};
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
