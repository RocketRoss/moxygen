#include <stdio.h>
#include <stdlib.h>

#include "ghdl.h"

int arrayPrint(int dims, int* lens, int* arr);

int getFlatArrayIndex(int* dimIndex, int* lens, int dims);
void n_macc(int dims, int* lens, int* kernel, int* window, int* maccs);

int maccR(int dims, int* lens, int* kernel, int** window);

int conv(ghdl_NaturalDimArr_t* kernel_mat_int, ghdl_NaturalDimArr_t* window_mat_int);
void n_conv(ghdl_NaturalDimArr_t* kernel_3d_int, ghdl_NaturalDimArr_t* window_3d_int, ghdl_NaturalDimArr_t* res_arr_int);
void randFill(int dims, ghdl_NaturalDimArr_t* mat_int);


void windowOper(int dims, int* size, int* stride, int* kernel, int* inSize, int* in, int* outSize, int** out);
void getWindow(int dims, int* offsets, int* size, int* inSize, int* in, int** win);