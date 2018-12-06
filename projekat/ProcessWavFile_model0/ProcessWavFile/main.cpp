
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "gainMatrixModes.h"

#define ERROR -1

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define BLOCK_SIZE 16
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

float sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE]; // input buffer
float* samplePtr[MAX_NUM_CHANNEL]; // pointer to input buffer (pointer to channels)
float** samplePtrPtr; // pointer to addresses of input channels 

float outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE]; // output buffer
float* outputPtr[MAX_NUM_CHANNEL]; // pointer to output buffer (pointer to channels)
float** outputPtrPtr; // pointer to addresses of output channels 

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
    float gain_matrix [N][M];  // gain_controls
} mixerNxM_data;

/* Mixer NxM structure*/
mixerNxM_data data;

void mixerNxM_init ()
{
    /* init mixerNxM structure */
    data.enable = gENABLE;
    data.n_input_channels = IN_CHANNEL_NUM;
    data.m_output_channels = OUT_CHANNEL_NUM;
    data.output_gain = gOUTPUT_GAIN;

    /* init gain_matrix */
	unsigned int i, j;

	for (i = 0; i < MODE_NUM; i++)
	{
		if (!strcmp(outputModeS, outputMode[i]))
		{
			outputModeInt = i;
		}
	}

	switch(outputModeInt)
	{
		case 0:
			modePtr = &mode1[0];
			break;
		case 1:
			modePtr = &mode2[0];
			break;
		case 2:
			modePtr = &mode3[0];
			break;
		case 3:
			modePtr = &mode4[0];
			break;
		case 4:
			modePtr = &mode5[0];
			break;
		default:
			modePtr = &mode1[0];
			break;
	}

	for (i = 0; i < N; i++)
	{
		for(j = 0; j < M; j++)
		{
            data.gain_matrix[i][j] = MAT_OUTPUT_GAIN;
		}
	}

    /* init pointer to addresses of input and output channels */
	for(int i=0; i < MAX_NUM_CHANNEL; i++){
		samplePtr[i] = (float*) &sampleBuffer[i];
		outputPtr[i] = (float*) &outputSampleBuffer[i];
	}
				
    /* set pointer to the first address of input and output channel */
	samplePtrPtr = (float**) &samplePtr;
	outputPtrPtr = (float**) &outputPtr;
}

/* calculates amplitude from dB*/
float dBToAmplitude(float dB)
{
    return pow(10.0f, dB / 20.0f);
}

void mixerNxM_processing(float** input, float** output, mixerNxM_data data)
{
	int i = 0;
	int in = 0;
	int out = 0;
	int gain_index = 0;
	float temp = 0;
	float current_gain;
	float* brick_in;
	float* brick_out;
	
	/* bypass */
	if(!(data.enable))
	{
		for(out = 0; out < data.m_output_channels; out++)
		{
			brick_out = output[out];
			brick_in = input[out];

			for(i = 0; i < BLOCK_SIZE; i++)
			{
				/* if N < M, bypass N channels to output, other outputs set to zero*/
				if(out >= data.n_input_channels)
				{
					brick_out[i] = 0;
				}
				else
				{
					brick_out[i] = brick_in[i];
				}
			}
		}
	}
	/* processing */
	else
	{
		for(out = 0; out < data.m_output_channels; out++)
		{
			brick_out = output[out];
			/* clear old out values */
			for(i = 0; i < BLOCK_SIZE; i++)
			{
				brick_out[i] = 0;
			}

			/* MODE CHECK */
			if(modePtr[out] == 0) continue;

			for(in = 0; in < data.n_input_channels; in++)
			{
				brick_in = input[in];
				for(i = 0; i < BLOCK_SIZE; i++)
				{
					brick_out[i] += data.gain_matrix[in][out] * brick_in[i];
				}
			}

			for(i = 0; i < BLOCK_SIZE; i++)
			{
				brick_out[i] = brick_out[i] * data.output_gain;
			}
		}
	}
}

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	

	char outputGain[256];
	char* gainPtr;
	char enable[2];
    char* enablePtr;

	// Init channel buffers
	for(int i=0; i < MAX_NUM_CHANNEL; i++){
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);
		memset(&outputSampleBuffer[i], 0, BLOCK_SIZE);

		samplePtr[i] = (float*) &sampleBuffer[i];
		outputPtr[i] = (float*) &outputSampleBuffer[i];
	}

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Set default values of enable, gain and outputmode
	//-------------------------------------------------

    if (argc == 3)
    {
        // Default values for enable, output gain and mixer mode
        gENABLE = 1;
        gOUTPUT_GAIN = 1;
    }
	else if (argc != 6 || argc > 6)
	{
		printf("Please set valid input arguments.\n");
		printf("input_file output_file mixer_gain[dB] output_mode enable\n");

		return ERROR;
    }
    else
    {
        strcpy(outputGain, argv[3]);
        gOUTPUT_GAIN = strtol(outputGain, &gainPtr, 10);
        gOUTPUT_GAIN = dBToAmplitude(gOUTPUT_GAIN); // calculate power-ratio from dB

        strcpy(outputModeS, argv[4]);
        strcpy(enable, argv[5]);
        gENABLE = strtol(enable, &enablePtr, 10);
    }


	//-------------------------------------------------
	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = OUT_CHANNEL_NUM; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);

	// INIT STRUCTURE mixerNxM and other parameters
	mixerNxM_init();

	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			// Processing loop
			mixerNxM_processing(samplePtrPtr, outputPtrPtr, data);

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
                    /* Clipping */
                    if (outputSampleBuffer[k][j] > 1.0)
                    {
                        outputSampleBuffer[k][j] = 1.0;
                    }

                    if (outputSampleBuffer[k][j] < -1.0)
                    {
                        outputSampleBuffer[k][j] = -1.0;
                    }

					sample = outputSampleBuffer[k][j] * (SAMPLE_SCALE - 1);	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}