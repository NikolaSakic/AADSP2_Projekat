#ifndef COMMON_H
#define COMMON_H

#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdio.h>
#include <circbuff.h>
//#include "WAVheader.h"

#include "stdfix_emu.h"
//#include "fixed_point_math.h"

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;					/* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */


#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define n_coeff 32

enum ENABLE_STATE {ON, OFF};
enum OUTPUT_MODE {MOD2_0_0, MOD2_2_0, MOD3_2_1};


//int stringToInt(char *s);
DSPfract fir_circular(DSPfract input,  DSPfract* history, unsigned int* p_state);
void processing(__memY DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE], __memX DSPfract outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE]);


#endif
