#ifndef COMMON_H
#define COMMON_H

#include "stdfix_emu.h"

#define ARGERROR -1

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define N 16   // max number of input channels
#define M 16   // max number of output channels

#define IN_CHANNEL_NUM 2 // number of intput channels
#define OUT_CHANNEL_NUM 6 // number of output channels 

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;				    /* DSP fixed-point fractional */
typedef long_accum DSPaccum;            /* DSP Accumulator */

const DSPfract MAT_OUTPUT_GAIN = FRACT_NUM(0.6309573444801932); // -4dB to decimal (power-ratio = 0.398107) - matrix value

#define MODE_NUM 5
#define OUTPUT_MODE_LEN 5

/* MODE 2_2_0 */
float mode1[OUT_CHANNEL_NUM] = { 1, 1, 0, 1, 1, 0 };

/* MODE 2_0_0 */
float mode2[OUT_CHANNEL_NUM] = { 1, 1, 0, 0, 0, 0 };

/* MODE 2_2_1 */
float mode3[OUT_CHANNEL_NUM] = { 1, 1, 0, 1, 1, 1 };

/* MODE 3_2_0 */
float mode4[OUT_CHANNEL_NUM] = { 1, 1, 1, 1, 1, 0 };

/* MODE 3_2_1 */
float mode5[OUT_CHANNEL_NUM] = { 1, 1, 1, 1, 1, 1};

DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
DSPfract* samplePtr[MAX_NUM_CHANNEL];
DSPfract** input;

DSPfract outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
DSPfract* outputPtr[MAX_NUM_CHANNEL];
DSPfract** output;

const char* outputMode[] = {"2_2_0", "2_0_0", "2_2_1", "3_2_0", "3_2_1"};
char outputModeS[OUTPUT_MODE_LEN];
int outputModeInt = 0;
float* modePtr = &mode1[0];

DSPfract gOUTPUT_GAIN = FRACT_NUM(1.); // 0dB(power - ration) - output_gain
DSPint gENABLE = FRACT_NUM(1.); // enable mixer

typedef struct {
    DSPint enable; 	//non-zero to enable this function
    DSPint n_input_channels;
    DSPint m_output_channels;
    DSPfract output_gain;		//amount of gain to apply to all output channels
    DSPfract gain_matrix[N][M];  // gain_controls
} mixerNxM_data;

/* Mixer NxM structure*/
mixerNxM_data data;


#endif