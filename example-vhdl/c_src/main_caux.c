#include "caux.h"

int main(int argc, char const *argv[])
{

	int kernels[][9] = {
		{-11, -9, 5, 3, 4, -12, 12, -10, 2},
		{9, 3, 8, 1, -7, -12, -5, -6, -1},
		{-4, 12, -6, 5, 7, -12, 10, 1, 0},
		{12, 7, 5, -6, 4, 9, 12, 4, -1}
	};
	int window[][9] = {
		{0, -12, -2, 11, -3, 2, -1, -4, 0},
		{-11, 11, 1, -9, 7, -3, -9, -4, -5},
		{11, -1, 12, -3, 7, 2, 5, -12, -1},
		{10, 4, 11, -12, -12, 11, -4, -4, -2}
	};

	int ans[] = {
		-11,
		-133,
		44,
		-156
	};

	int lens[] = {3, 3, 1};
	int res;

	for (int i = 0; i < sizeof(ans)/4; i++)
	{
		n_macc(3, lens, kernels[i], window[i], &res);
		printf("%d \tvs \t%d\n", ans[i], res);
	}

	int k2[][3] = {{-11, -9, 5}, {3, 4, -12}, {12, -10, 2}};
	int w2[][3] = {{0, -12, -2}, {11, -3, 2}, {-1, -4, 0}};

	n_macc(3, lens, &(k2[0][0]), &(w2[0][0]), &res);
	printf("%d \tvs \t%d\n", ans[0], res);

	for (int i = 0; i < sizeof(ans)/4; i++)
	{
		int* kr = kernels[i];
		int* wr[] = {window[i]+0, window[i]+1, window[i]+2, window[i]+3, window[i]+4, window[i]+5, window[i]+6, window[i]+7, window[i]+8};

		printf("%d \tvs \t%d\n", ans[i], maccR(2, lens, kr, wr));
	}

	int windSize[] = {4,4};
	int windStride[] = {1,1};

	int* kernel = malloc(4*4*sizeof(int));
	for (int i = 0; i < windSize[0]; i++)
		for (int j = 0; j < windSize[1]; j++){
			// printf("%d %d = %d\n", i, j, i*windSize[1]+j);
			kernel[i*windSize[1] + j] = i*windSize[1]+j+1;
		}

	arrayPrint(2, windSize, kernel);

	int inSize[] = {8,8};
	int* in = malloc(8*8*sizeof(int));
	for (int i = 0; i < inSize[0]; i++)
	{
		for (int j = 0; j < inSize[1]; j++)
		{
			in[i*inSize[1] + j] = (i+1)*j;
		}
	}
	
	printf("Convolved With:\n");
	arrayPrint(2, inSize, in);

	int* outSize = malloc(2*sizeof(int));
	int* out = 0;
	//windowOper(int dims, int* size, int* stride, int* kernel, int* inSize, int* in, int* outSize, int* out);
	windowOper(2, &(windSize[0]), &(windStride[0]), kernel, &(inSize[0]), in, outSize, &out);

	arrayPrint(2, outSize, out);
	
	free(in);
	free(out);
	free(outSize);
	free(kernel);

	return 0;
}
