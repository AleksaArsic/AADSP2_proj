#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

//fract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

void mixerNxM_init ()
{
	__memX DSPfract* gainPtr;
    DSPshort i;

    data.enable = gENABLE;
    data.n_input_channels = IN_CHANNEL_NUM;
    data.m_output_channels = OUT_CHANNEL_NUM;
    data.output_gain = FRACT_NUM(1.);



	for (gainPtr = &(data.gain_matrix[0][0]);
         gainPtr < &(data.gain_matrix[0][0]) + N * M;
         gainPtr++)
	{
        *gainPtr = MAT_OUTPUT_GAIN;
	}

	for (i=0; i < MAX_NUM_CHANNEL; i++){
		samplePtr[i] = (DSPfract*) &sampleBuffer[i];
		outputPtr[i] = (DSPfract*) &outputSampleBuffer[i];
	}

	input = (__memX DSPfract* __memX*) &samplePtr;
	output = (__memX DSPfract* __memX*) &outputPtr;
}

#if 0
float dbToAmplitude()
{
    return pow(10.0f, gOUTPUT_GAIN / 20.0f);
}
#endif


void mixerNxM_processing()
{
	DSPint i = 0;
    DSPint in = 0;
    DSPint out = 0;
    __memX DSPfract* brick_in;
    __memX DSPfract* brick_out;
    __memX DSPfract* gainPtr = &(data.gain_matrix[0][0]);
    __memX DSPfract* ptrIn;

	/* bypass */
	if(!(data.enable))
	{
        for (out = 0; out < data.m_output_channels; out++)
		{
            brick_out = *(output + out);
            brick_in = *(input + out);

			for(i = 0; i < BLOCK_SIZE; i++)
			{
				/* if N < M, bypass N channels to output, other outputs set to zero*/
		        if (out >= data.n_input_channels)
				{
					*brick_out = FRACT_NUM(0.);
                    brick_out++;
                }
				else
				{
					*brick_out = *brick_in;
                    brick_out++;
                    brick_in++;
				}
			}
		}
	}
	/* processing */
	else
	{

		for(out = 0; out < data.m_output_channels; out++)
		{
			brick_out = *(output + out);
			/* clear old out values */
			for(i = 0; i < BLOCK_SIZE; i++)
			{
				*brick_out = FRACT_NUM(0.);
                brick_out++;
			}

            brick_out = *(output + out);

			for(in = 0; in < data.n_input_channels; in++)
			{
				brick_in = *(input + in);
				for(i = 0; i < BLOCK_SIZE; i++)
				{
                    ptrIn = gainPtr + (in * data.n_input_channels) + out; // gain matrix
					*brick_out = (*brick_out) + (*ptrIn) * (*brick_in);
                    brick_out++;
                    brick_in++;
                }
                brick_out = *(output + out);
			}

			for(i = 0; i < BLOCK_SIZE; i++)
			{
				*brick_out = (*brick_out) * (data.output_gain);
                brick_out++;
            }
		}
	}
}

int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i, j;

	char outputGain[256];
	__memX char* gainPtr;
	char outputModeS[8];
	char enable[2];
	__memX char* enablePtr;

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
	{
		//memset(&sampleBuffer[i],0,BLOCK_SIZE);
		for (j = 0; j < BLOCK_SIZE; j++)
		{
			sampleBuffer[i][j] = (DSPfract) 0;
			outputSampleBuffer[i][j] = (DSPfract) 0;
		}

		samplePtr[i] = (DSPfract*) &sampleBuffer[i];
		outputPtr[i] = (DSPfract*) &outputSampleBuffer[i];
	}
    
	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Set default values of enable, gain and outputmode
	//-------------------------------------------------

	if (argc == 2)
	{
		// Default values for enable, output gain and mixer mode
		gENABLE = 1;
		gOUTPUT_GAIN = 1.;
	}
	else if (argc != 5 || argc > 5)
	{
		printf("Please set valid input arguments.\n");
		printf("input_file output_file mixer_gain[dB] output_mode enable\n");

		return ARGERROR;
	}
	else
	{
		strcpy(outputGain, argv[3]);
		//gOUTPUT_GAIN = strtol(outputGain, &gainPtr, 10);
		//gOUTPUT_GAIN = atof(outputGain);
		// Must use linear values as command line arguments
		//gOUTPUT_GAIN = dBToPower(); // calculate power-ratio from dB

		strcpy(outputModeS, argv[4]);
		strcpy(enable, argv[5]);
		//gENABLE = strtol(enable, &enablePtr, 10);
	}


	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, OUT_CHANNEL_NUM, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	mixerNxM_init();

	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			// Processing loop

			mixerNxM_processing();


			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<OUT_CHANNEL_NUM; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
