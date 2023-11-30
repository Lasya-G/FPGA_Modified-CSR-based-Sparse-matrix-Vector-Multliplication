#include <iostream>
#include "csr_spmv.h"

void csr_spmv(float value[nnz], int col_index[nnz], int row_index[m+1], float x[m], float y[n]);
int main() {
    // Test data
    float value[nnz] = {2,1,1,4,2,1};
    int col_index[nnz] = {0,3,3,4,1,3};
    int row_index[m+1] = {0,2,2,4,6};
    float x[m] = {0,1,3,2,1};
    float y[n];
    // Call the SpMV function
    csr_spmv(value, col_index,row_index, x, y);

    // Display the result
    std::cout << "Output Vector (y): ";
    for (int i = 0; i < n; ++i) {
        std::cout << y[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
