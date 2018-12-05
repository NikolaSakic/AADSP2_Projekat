#ifndef COMMON_H
#define COMMON_H

#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define n_coeff 128

enum ENABLE_STATE {ON, OFF};
enum OUTPUT_MODE {MOD2_0_0, MOD2_2_0, MOD3_2_1};


int stringToInt(char *s);
double fir_circular(double input, int ind);
void processing(double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE], double outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE]);


#endif