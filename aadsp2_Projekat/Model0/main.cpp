
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double outputSampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

#define Ntap 31

double FIRCoef[Ntap] = { 
        -0.00930491020808503140,
        -0.00944040203390978520,
        -0.00957002117828420830,
        -0.00969329473373671360,
        -0.00980973811652527740,
        -0.00991885539807379170,
        -0.01002013967501371900,
        -0.01011307347900127600,
        -0.01019712922744179600,
        -0.01027176971623380500,
        -0.01033644865559729500,
        -0.01039061125002338000,
        -0.01043369482332797600,
        -0.01046512948974967800,
        -0.01048433887197771500,
        0.98027343068895101000,
        -0.01048433887197771500,
        -0.01046512948974967800,
        -0.01043369482332797600,
        -0.01039061125002338000,
        -0.01033644865559729500,
        -0.01027176971623380500,
        -0.01019712922744179600,
        -0.01011307347900127600,
        -0.01002013967501371900,
        -0.00991885539807379170,
        -0.00980973811652527740,
        -0.00969329473373671360,
        -0.00957002117828420830,
        -0.00944040203390978520,
        -0.00930491020808503140
    };

enum ENABLE_STATE {ON, OFF};
enum OUTPUT_MODE {MOD2_0_0, MOD2_2_0, MOD3_2_1};

ENABLE_STATE enable;
OUTPUT_MODE outputMode;
int InputGain;

WAV_HEADER inputWAVhdr,outputWAVhdr;

int stringToInt(char *s)
{ 
    int retVal = 0;
    int strLen = 0;
	char *k = s;
	while(*k != '\0')
	{
		strLen++;
		k++;
	}

    int i;
    int adder = 1;
    for(i = strLen - 1; i >= 1 ; i--)
    {
        retVal += (s[i] - 48) * adder;
        adder *= 10;
    }

    if(s[0] == '-')
    {
        retVal *= -1;
    }
    else
    {
        retVal += (s[0] - 48) * adder;
    }

    return retVal;

}


double fir_circular(double input, double *coeffs, double *history, unsigned int n_coeff, unsigned int *p_state)
{
	int i;
    unsigned int state;
    double ret_val;

    state = *p_state;               /* copy the filter's state to a local */


	/* store input at the beginning of the delay line */
    history[state] = input;
	if (++state >= n_coeff)
	{         /* incr state and check for wrap */
		state = 0;
	}

	/* calc FIR and shift data */
	ret_val = 0;
	for (i = n_coeff - 1; i >= 0; i--)
	{
		ret_val += coeffs[i] * history[state];
		if (++state >= n_coeff) /* incr state and check for wrap */
		{
			state = 0;
		}
	}

    *p_state = state;               /* return new state to caller */

    return ret_val;
}

void processing(double pInbuf[MAX_NUM_CHANNEL][BLOCK_SIZE], double pOutbuf[MAX_NUM_CHANNEL][BLOCK_SIZE])
{
	/* 10^(-4/20) */
	//double gain = 0.63095735;
	double gain = pow(10.0, InputGain/20.0);

	double history1[Ntap];
	double history2[Ntap];
	for(int i=0; i < Ntap; i++){ history1[i] = 0;}
	for(int i=0; i < Ntap; i++){ history2[i] = 0;}
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
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], FIRCoef, history1, Ntap, &p_state1);	
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[0][j] + pInbuf[1][j];     
			pOutbuf[3][j] = pInbuf[1][j];
			pOutbuf[4][j] = fir_circular(pInbuf[1][j], FIRCoef, history2, Ntap, &p_state2);
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
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], FIRCoef, history1, Ntap, &p_state1);
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[1][j];
			pOutbuf[3][j] = fir_circular(pInbuf[1][j], FIRCoef, history2, Ntap, &p_state2);
			
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