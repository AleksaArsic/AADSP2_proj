#ifndef COMMON_H
#define COMMON_H

#include "stdfix_emu.h"

#define ARGERROR -1

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 6
#define N 2   // max number of input channels
#define M 6   // max number of output channels

#define IN_CHANNEL_NUM 2 // number of intput channels
#define OUT_CHANNEL_NUM 6 // number of output channels 

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;				    /* DSP fixed-point fractional */
typedef long_accum DSPaccum;            /* DSP Accumulator */

const DSPfract MAT_OUTPUT_GAIN = FRACT_NUM(0.398107); // -4dB to decimal (power-ratio = 0.398107) - matrix value

__memX DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memX DSPfract* samplePtr[MAX_NUM_CHANNEL];
__memX DSPfract* __memX* input;

__memX DSPfract outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memX DSPfract* outputPtr[MAX_NUM_CHANNEL];
__memX DSPfract* __memX* output;

const char* strings[] = { "2_2_0", "2_0_0", "2_2_1", "3_2_0", "3_2_1" };

__memY DSPfract gOUTPUT_GAIN = FRACT_NUM(1.); // 0dB(power - ration) - output_gain
__memY DSPint gENABLE = FRACT_NUM(1.); // enable mixer

typedef struct {
    DSPint enable; 	//non-zero to enable this function
    DSPint n_input_channels;
    DSPint m_output_channels;
    DSPfract output_gain;		//amount of gain to apply to all output channels
    DSPfract gain_matrix[N][M];  // gain_controls
} mixerNxM_data;

/* Mixer NxM structure*/
__memX mixerNxM_data data;


#endif
