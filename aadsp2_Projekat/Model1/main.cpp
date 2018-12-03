#include "common.h"




double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

ENABLE_STATE enable;
OUTPUT_MODE outputMode;
int InputGain;

WAV_HEADER inputWAVhdr,outputWAVhdr;


void processing(double pInbuf[MAX_NUM_CHANNEL][BLOCK_SIZE], double pOutbuf[MAX_NUM_CHANNEL][BLOCK_SIZE])
{
	/* 10^(-4/20) */
	//double gain = 0.63095735;
	double gain = pow(10.0, InputGain/20.0);

	double history1[n_coeff];
	double history2[n_coeff];
	for(int i=0; i < n_coeff; i++){ history1[i] = 0;}
	for(int i=0; i < n_coeff; i++){ history2[i] = 0;}
	unsigned int p_state1 = 0;
	unsigned int p_state2 = 0;

	
	if(enable == ON && outputMode == MOD3_2_1)
	{
		for(int j=0; j<BLOCK_SIZE; j++)
		{
			pInbuf[0][j] *= gain;
			pInbuf[1][j] *= gain;
			/*
			pOutbuf[3][j] = fir_circular(pInbuf[0][j], FIRCoef, history1, Ntap, &p_state1);			//Ls
            pOutbuf[0][j] = pInbuf[0][j];															//L
            pOutbuf[1][j] = pInbuf[0][j] + pInbuf[1][j];											//C
            pOutbuf[2][j] = pInbuf[1][j];															//R
            pOutbuf[4][j] = fir_circular(pInbuf[1][j], FIRCoef, history2, Ntap, &p_state2);			//Rs
            pOutbuf[5][j] = pOutbuf[4][j] + pOutbuf[3][j];											//LFE
			*/
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], history1, &p_state1);	
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[0][j] + pInbuf[1][j];     
			pOutbuf[3][j] = pInbuf[1][j];
			pOutbuf[4][j] = fir_circular(pInbuf[1][j], history2, &p_state2);
			pOutbuf[5][j] = pOutbuf[4][j] + pOutbuf[0][j];
			
		}
	}
	if(enable == ON && outputMode == MOD2_2_0)
	{
		for(int j=0; j<BLOCK_SIZE; j++)
		{
			pInbuf[0][j] *= gain;
			pInbuf[1][j] *= gain;
		    /*
			pOutbuf[3][j] = fir_circular(pInbuf[0][j], FIRCoef, history1, Ntap, &p_state1);         //Ls
            pOutbuf[0][j] = pInbuf[0][j];                                                           //L
            pOutbuf[2][j] = pInbuf[1][j];                                                           //R
            pOutbuf[4][j] = fir_circular(pInbuf[1][j], FIRCoef, history2, Ntap, &p_state2);         //Rs
			*/
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], history1, &p_state1);
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[1][j];
			pOutbuf[3][j] = fir_circular(pInbuf[1][j], history2, &p_state2);
			
		}
	}
	if(enable == OFF || outputMode == MOD2_0_0)
	{
		for(int j=0; j<BLOCK_SIZE; j++)
		{
			pInbuf[0][j] *= gain;
			pInbuf[1][j] *= gain;
			/*
			pOutbuf[0][j] = pInbuf[0][j];        //L
            pOutbuf[2][j] = pInbuf[1][j];        //R
			*/
			
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[1][j];
			
		}

	}
	
}

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	//WAV_HEADER inputWAVhdr,outputWAVhdr;	
	

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