#include "common.h"


double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

double history_global[2][Ntap];
unsigned int p_state_global[2]; 

ENABLE_STATE enable;
OUTPUT_MODE outputMode;
int InputGain;



int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	
	
	for(int i=0; i < Ntap; i++){ history1[0][i] = 0;}
	for(int i=0; i < Ntap; i++){ history2[1][i] = 0;}
	p_state[0] = 0;
	p_state[1] = 0;

	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	//outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels; 
	// change number of channels

	if(!strcmp(argv[3], "On"))
    {
        enable = ON;
    }else{
        enable = OFF;
    }

    if(!strcmp(argv[5], "2_0_0"))
    {
        outputMode = MOD2_0_0;
    }
    else if(!strcmp(argv[5], "2_2_0"))
    {
        outputMode = MOD2_2_0;
    }
    else
    {
        outputMode = MOD3_2_1;
    }

    InputGain = stringToInt(argv[4]);

	

	if(enable == ON && outputMode == MOD3_2_1)
	{
		outputWAVhdr.fmt.NumChannels = 6;
	}
	if(enable == ON && outputMode == MOD2_2_0)
	{
		outputWAVhdr.fmt.NumChannels = 4;
	}
	if(enable == OFF || outputMode == MOD2_0_0)
	{
		outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels;
	}




	


	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


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

			//processing();

			processing(sampleBuffer, outputSampleBuffer);

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = outputSampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
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