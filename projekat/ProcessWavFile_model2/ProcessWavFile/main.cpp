
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"
#include "fixed_point_math.h"

void mixerNxM_init ()
{
    data.enable = gENABLE;
    data.n_input_channels = IN_CHANNEL_NUM;
    data.m_output_channels = OUT_CHANNEL_NUM;
    data.output_gain = gOUTPUT_GAIN;

    DSPfract* gainPtr;

	for (int i = 0; i < MODE_NUM; i++)
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

	for (gainPtr = &(data.gain_matrix[0][0]); 
         gainPtr < &(data.gain_matrix[0][0]) + N * M; 
         gainPtr++)
	{
        *gainPtr = MAT_OUTPUT_GAIN;
	}

	for(DSPshort i=0; i < MAX_NUM_CHANNEL; i++){
		samplePtr[i] = (DSPfract*) &sampleBuffer[i];
		outputPtr[i] = (DSPfract*) &outputSampleBuffer[i];
	}
				
	input = (DSPfract**) &samplePtr;
	output = (DSPfract**) &outputPtr;
}

#if 0
/* calculates amplitude from dB*/
float dBToAmplitude(float dB)
{
    return pow(10.0f, dB / 20.0f);
}
#endif

void mixerNxM_processing()
{
	DSPint i = 0;
    DSPint in = 0;
    DSPint out = 0;
    DSPint gain_index = 0;
    DSPfract temp = 0;
    DSPfract current_gain;
    DSPfract* brick_in;
    DSPfract* brick_out;
    DSPfract* gainPtr = &(data.gain_matrix[0][0]);
    DSPfract* ptrIn;

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
					*brick_out = 0.;
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
				*brick_out = 0.;
                brick_out++;
			}

			/* MODE CHECK */
			if(modePtr[out] == 0) continue;

            brick_out = *(output + out);

			for(in = 0; in < data.n_input_channels; in++)
			{
				brick_in = *(input + in);
				for(i = 0; i < BLOCK_SIZE; i++)
				{
                    ptrIn = gainPtr + (in * data.n_input_channels) + out; // gain matrix
					*brick_out = FRACT_NUM((*brick_out).toDouble() + (*ptrIn).toDouble() * (*brick_in).toDouble() );
                    brick_out++;
                    brick_in++;
                }
                brick_out = *(output + out);
			}

			for(i = 0; i < BLOCK_SIZE; i++)
			{
				*brick_out = FRACT_NUM((*brick_out).toDouble() * (data.output_gain).toDouble());
                brick_out++;
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
		for (int j = 0; j < BLOCK_SIZE; j++) 
		{
			sampleBuffer[i][j] = (DSPfract) 0;
			outputSampleBuffer[i][j] = (DSPfract) 0;
		}

		samplePtr[i] = (DSPfract*) &sampleBuffer[i];
		outputPtr[i] = (DSPfract*) &outputSampleBuffer[i];
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
        gOUTPUT_GAIN = 1.;
    }
	else if (argc != 6 || argc > 6)
	{
		printf("Please set valid input arguments.\n");
		printf("input_file output_file mixer_gain[dB] output_mode enable\n");

		return ARGERROR;
    }
    else
    {
        strcpy(outputGain, argv[3]);
        //gOUTPUT_GAIN = strtol(outputGain, &gainPtr, 10);
        gOUTPUT_GAIN = atof(outputGain);
        // Must use linear values as command line arguments
        //gOUTPUT_GAIN = dBToAmplitude(); // calculate power-ratio from dB

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

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
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
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
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

			mixerNxM_processing();

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = outputSampleBuffer[k][j].toLong();	// crude, non-rounding 			
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