#include "csr_spmv.h"



void csr_spmv(float value[nnz], int col_index[nnz], int row_index[m+1], float x[m], float y[n])
{
	int rowStart =0, rowEnd = n;

	for (int i=rowStart; i<rowEnd; i++)
	{
		float y0 = 0.0;
		for(int j=row_index[i]; j<row_index[i+1]; j++)
		{
			int k = col_index[j];
			y0 += value[j] * x[k];

		}
		y[i] = y0;
	}
}
