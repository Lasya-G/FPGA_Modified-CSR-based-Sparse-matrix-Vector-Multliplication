#include "smvm.h"

void SpMV (volatile int rid[nnz], volatile data_t value[nnz], volatile data_t xd[nnz], volatile data_t y[m])
{
	volatile int c1[nnz];
	volatile data_t c2[nnz], c3[nnz], c4[m];
#pragma HLS DATAFLOW
	readinput(rid,value,xd,c1,c2,c3);
	compute(c1,c2,c3,c4);
	writeoutput(c4,y);
}

void readinput(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile int *out1, volatile data_t *out2, volatile data_t *out3)
{
	for(int i=0; i<nnz; i++) //loop1
	{
#pragma HLS UNROLL
		out1[i] = in1[i]; //rowindex
		out2[i] = in2[i]; //value
		out3[i] = in3[i]; //vectorvalue
	}
}

void compute(volatile int *in1, volatile data_t *in2, volatile data_t *in3, volatile data_t *out)
{
	for(int i=0; i<m; i++)
	{
#pragma HLS UNROLL
		out[i]=0;
	}

	for(int i=0; i<nnz; i++)
	{
#pragma HLS PIPELINE =8
		out[in1[i]] += in2[i] * in3[i];

	}
}

void writeoutput(volatile data_t *in, volatile data_t *out)
{
	for(int i=0; i<m; i++)
	{
#pragma HLS UNROLL
		out[i] = in[i];
	}
}
