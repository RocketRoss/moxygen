#ifndef GHDL_TYPES_H
#define GHDL_TYPES_H

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <string.h>

// Range/bounds of a dimension of an unconstrained array with dimensions of type 'natural'
typedef struct {
  int32_t left;
  int32_t right;
  int32_t dir;
  int32_t len;
} bounds_t;

// Unconstrained array with dimensions of type 'natural'
typedef struct {
  void* array;
  bounds_t* bounds;
} ghdl_NaturalDimArr_t;

// Access to an unconstrained array with 1 dimension of type 'natural'
typedef struct {
  bounds_t range;
  uint8_t array[];
} ghdl_AccNaturalDimArr_t;

/*
*  Print custom types
*/

void printUnconstrained(ghdl_NaturalDimArr_t* ptr, int dims);

/*
*  Convert a fat pointer of an unconstrained string, to a (null terminated) C string
*/

// @umarcor
char* ghdlToString(ghdl_NaturalDimArr_t* ptr);

// In the prototype, Bradley declares a value instead of a reference. Why?

// @bradleyharden
/*
char* ghdl_array_to_string(array_t array);
*/

/*
*  Convert a fat pointer of an uncontrained array with (up to 3) dimensions of type 'natural', to C types
*/

void ghdlToArray(ghdl_NaturalDimArr_t* ptr, void** vec, int* len, int num);

/*
*   Helper to setup the bounds_t for ghdlFromArray
*/

void ghdlSetRange(bounds_t* r, int len, bool reversed);

/*
*  Convert C types representing an unconstrained array with a dimension of type 'natural', to a fat pointer
*/

ghdl_NaturalDimArr_t ghdlFromPointer(void* vec, int* len, int dims);

ghdl_NaturalDimArr_t ghdlFromArray(void* vec, int* len, int dims, int sizeOfDataType);

/*
*  Convert a (null terminated) C string, to a fat pointer of an unconstrained string
*/

// @umarcor
/*
ghdl_NaturalDimArr_t* ghdlFromString(char* str);
*/

// Again, the prototype I had (above) returns a reference instead of a value (Bradley's below)

// @bradleyharden
ghdl_NaturalDimArr_t ghdlFromString(char *string);

/*
*  Convert an access to an unconstrained string, to a (null terminated) C string
*/

char* ghdlAccToString(ghdl_AccNaturalDimArr_t *line);

/*
*  Convert C types representing an unconstrained array with a dimension of type 'natural', to an access
*/

// TODO: support 2 and 3 dimensions
ghdl_AccNaturalDimArr_t* ghdlAccFromArray(uint32_t length, size_t bytes);

/*
*  Convert a (null terminated) C string, to an access to an unconstrained string
*/

/*
// @umarcor
ghdl_AccNaturalDimArr_t* ghdlLineFromString(char *str);
*/

// @bradleyharden
ghdl_AccNaturalDimArr_t* ghdlAccFromString(char *string);

/*  
*   Handle C char for the appropriate values in std_ulogic and std_logic.
*/

// @RocketRoss
static const char HDL_LOGIC_STATE[] = { 'U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-'};

enum HDL_LOGIC_CHAR {
HDL_U = 0,
HDL_X = 1,
HDL_0 = 2,
HDL_1 = 3,
HDL_Z = 4,
HDL_W = 5,
HDL_L = 6,
HDL_H = 7,
HDL_D = 8,
};

#endif
