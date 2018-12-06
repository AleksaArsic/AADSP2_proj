#ifndef COMMON_H
#define COMMON_H

#define ARGERROR -1

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define N 2   // max number of input channels
#define M 6   // max number of output channels

#define IN_CHANNEL_NUM 2 // number of intput channels
#define OUT_CHANNEL_NUM 6 // number of output channels 
#define MAT_OUTPUT_GAIN 0.6309573444801932 // -4dB to decimal (power-ratio = 0.398107) - matrix value

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

float sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
float* samplePtr[MAX_NUM_CHANNEL];
float** input;

float outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
float* outputPtr[MAX_NUM_CHANNEL];
float** output;

const char* outputMode[] = {"2_2_0", "2_0_0", "2_2_1", "3_2_0", "3_2_1"};
char outputModeS[OUTPUT_MODE_LEN];
int outputModeInt = 0;
float* modePtr = &mode1[0];

float gOUTPUT_GAIN = 1; // 0dB(power - ration) - output_gain
int gENABLE = 1; // enable mixer

typedef struct {
    int enable; 	//non-zero to enable this function
    int n_input_channels;
    int m_output_channels;
    float output_gain;		//amount of gain to apply to all output channels
    float gain_matrix[N][M];  // gain_controls
} mixerNxM_data;

/* Mixer NxM structure*/
mixerNxM_data data;


#endif