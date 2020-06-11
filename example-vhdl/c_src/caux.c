#include "caux.h"

int arrayPrint(int dims, int* lens, int* arr){
	int* indices = malloc(dims*sizeof(int));
	int indexCount = 1;

	printf("\n");
	for (int d = 0; d < dims; d++)
	{
		indices[d] = 0;
		indexCount *= lens[d];
		// printf("%d%c", lens[d], (d<dims-1 ? 'x' : ':'));
	}
	if(dims > 2){
		printf("[ : , : ");
		for (int d2 = 2; d2 < dims; d2++)
		{
			printf(", %d ", indices[d2]);
		}				
		printf("]\n\n\t");
	}
	else
		printf("\t");
	
	if(dims == 1)
		printf("[ ");

	for (int i = 0; i < indexCount; i++)
	{
		printf("%d\t", arr[getFlatArrayIndex(indices, lens, dims)]);
		for (int d = 0; d < dims; d++)
		{
			indices[d] += 1;
			indices[d] %= lens[d];
			if(i == indexCount-1)
				printf("\n");
			else if(indices[d] == 0){
				// printf("\t\t%d -> %d", d, dims-d);
				if(d < 1)
					printf("\n\t");
				else{
					printf("\n[ : , : ");
					for (int d2 = 2; d2 < dims; d2++)
					{
						printf(", %d ", indices[d2]+1);
					}				
					printf("] (+%d)\n\n\t", getFlatArrayIndex(indices, lens, dims));
				}
			}
			else
				break;	
		}
	}
	if(dims == 1)
		printf(" ]\n");

	free(indices);
}

int getFlatArrayIndex(int* dimIndex, int* lens, int dims){
  if(dims == 1){
    return dimIndex[0];
  }
  else{
    return dimIndex[dims-1] + (lens[dims-1]*getFlatArrayIndex(dimIndex, lens, dims-1));
  }
}

void n_macc(int dims, int* lens, int* kernel, int* window, int* maccs){

	int* indices = malloc(dims*sizeof(int));
	int* revIndices = malloc(dims*sizeof(int));
	int end = 1, end2d = 1;
	for (int i = 0; i < dims; i++)
	{
		if(i < 2)
			end2d *= lens[i];
		else
			end *= lens[i];
		indices[i] = 0;
		revIndices[i] = (i < 2 ? lens[i]-1 : 0);;
	}

	int sum, index, revIndex;
	for (int i = 0; i < end; i++)
	{
		sum = 0;
		for (int j = 0; j < end2d; j++)
		{
			index = getFlatArrayIndex(indices, lens, dims);
			revIndex = getFlatArrayIndex(revIndices, lens, dims);
			// printf("{%d} %d += (%d*%d = %d)\n", j, sum, window[index], kernel[revIndex], window[index]*kernel[revIndex]);
			sum += window[index]*kernel[revIndex];
			
			for (int d = 0; d < dims; d++){
				indices[d] += 1;
				indices[d] %= lens[d];

				if(d >= 2)
					revIndices[d] = indices[d];

				if(indices[d] != 0)
					break;
			}
			
			for (int d = 0; d < 2; d++){
				revIndices[d] -= 1;
				if(revIndices[d] != -1)
					break;
				else
					revIndices[d] = lens[d]-1;
			}
		}
		maccs[i] = sum;
	}
}

int maccR(int dims, int* lens, int* kernel, int** window){

	int end = 1;
	for (int i = 0; i < dims; i++)
	{
		end *= lens[i];
	}
	
	int sum = 0, index;
	for (int i = 0; i < end; i++)
	{
		sum += (*(window[i]))*kernel[end-1 - i];
	}
	
	return sum;
}

void windowOper(int dims, int* size, int* stride, int* kernel, int* inSize, int* in, int* outSize, int** out){

	int windowCount = 1;
	int windowSize = 1;
	for (int i = 0; i < dims; i++)
	{
		outSize[i] = 1+ (inSize[i] - size[1])/stride[i];
		windowCount *= outSize[i];
		windowSize *= size[i];
	}

	(*out) = malloc(windowCount*sizeof(int));

	int *windowStartIndices = malloc(dims*sizeof(int));
	int **window = (int**)malloc(windowSize*sizeof(int*));
	int *windowIndices = malloc(dims*sizeof(int));
	for (int d = 0; d < dims; d++)
		windowIndices[d] = 0;

	for (int i = 0; i < windowCount; i++)
	{
		// printf("Window %d Start Coords: {", i);
		for (int d = 0; d < dims; d++){ 
			windowStartIndices[d] = windowIndices[d]*stride[d];
			// printf(" %d ", windowStartIndices[d]);
		}
		// printf("}\n");

		getWindow(dims, windowStartIndices, size, inSize, in, window);
		// printf("\t=> {");
		// for (int i = 0; i < windowSize; i++)
		// {
		// 	printf(" %d ", *(window[i]));
		// }
		// printf("}\n");
		
		(*out)[i] = maccR(2, size, kernel, window);
		// printf("\t\t--- %d\n", out[i]);

		for (int d = dims-1; d > -1; d--)
		{	
			windowIndices[d] += 1;
			windowIndices[d] %= outSize[d];
			if(windowIndices[d] != 0)
				break;
		}
	}
}

void getWindow(int dims, int* offsets, int* size, int* inSize, int* in, int** win){
	int indexCount = 1;
	for (int i = 0; i < dims; i++)
		indexCount *= size[i];

	int *dimOffset = malloc(dims*sizeof(int));
	for (int d = 0; d < dims; d++)
		dimOffset[d] = 0;

	int *indices = malloc(dims*sizeof(int));
	
	// printf("\t{");
	for (int i = 0; i < indexCount; i++)
	{
		for (int d = 0; d < dims; d++)
		{
			indices[d] = offsets[d] + dimOffset[d];
		}

		int index = getFlatArrayIndex(indices, inSize, dims);
		// printf(" %d ", index);
		win[i] = in+index;
		// printf(" {");
		// for (int d = 0; d < dims; d++) printf(" %d ", indices[d]);
		// printf("} ");

		for (int d = dims-1; d > -1; d--)
		{	
			dimOffset[d] += 1;
			dimOffset[d] %= size[d];
			if(dimOffset[d] != 0)
				break;
		}
		// if(i%4 == 0) printf("\n\t\t");
	}
	// printf("}\n");
}

void randFill(int dims, ghdl_NaturalDimArr_t* arr_int){
	int* len = malloc(dims * sizeof(int));
  int32_t* mat;
  ghdlToArray(arr_int, (void**)&mat, len, dims);

	int* indices = malloc(dims*sizeof(int));
	int indexCount = 1;
	for (int d = 0; d < dims; d++)
	{
		indices[d] = 0;
		indexCount *= len[d];
	}

	for (int i = 0; i < indexCount; i++)
	{
		mat[getFlatArrayIndex(indices, len, dims)] = rand()%50 -25;
		for (int d = 0; d < dims; d++)
		{
			indices[d] += 1;
			indices[d] %= len[d];
			if(indices[d] != 0)
				break;	
		}
	}

	free(indices);
	free(len);
}

int conv(ghdl_NaturalDimArr_t* kernel_mat_int, ghdl_NaturalDimArr_t* window_mat_int){
  int* len = malloc(3 * sizeof(int));

  int32_t* kernel_mat;
  int32_t* window_mat;
  ghdlToArray(kernel_mat_int, (void**)&kernel_mat, len, 2);
  ghdlToArray(window_mat_int, (void**)&window_mat, len, 2);

	len[2] = 1;

	// arrayPrint(2, len, kernel_mat);
	// arrayPrint(2, len, window_mat);

	int conv;
	n_macc(3, len, kernel_mat, window_mat, &conv);
	// printf("\tResult %d\n", conv);
	printf(" \r");
	free(len);
	return conv;
}

void n_conv(ghdl_NaturalDimArr_t* kernel_3d_int, ghdl_NaturalDimArr_t* window_3d_int, ghdl_NaturalDimArr_t* res_arr_int){
  int* len = malloc(3 * sizeof(int));
  int resLen = 0;

  int32_t* kernel_3d;
  int32_t* window_3d;
  int32_t* res_1d;
  ghdlToArray(kernel_3d_int, (void**)&kernel_3d, len, 3);
  ghdlToArray(window_3d_int, (void**)&window_3d, len, 3);
  ghdlToArray(res_arr_int, (void**)&res_1d, &resLen, 1);

	// arrayPrint(3, len, kernel_3d);
	// arrayPrint(3, len, window_3d);

	n_macc(3, len, kernel_3d, window_3d, res_1d);
	
	printf(" \r");
	free(len);
}