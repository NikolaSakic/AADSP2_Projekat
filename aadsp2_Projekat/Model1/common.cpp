#include "common.h"

extern double history_global[2][Ntap];
extern unsigned int p_state_global[2]; 

double coeffs[n_coeff] = { 
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
        -0.00930491020808503140,
		0.0
    };

int stringToInt(char *s)
{ 
	char *s_ptr = s;

    int retVal = 0;
    int strLen = 0;
	char *k = s;
	while(*s_ptr != '\0')
	{
		strLen++;
		s_ptr++;
	}

    int i;
    int adder = 1;
	
	for(s_ptr = s + strLen - 1; s_ptr >= s + 1; s_ptr--)
	{
		retVal += (*s_ptr - 48) * adder;
		adder *= 10;
	}


    if(*s == '-')
    {
        retVal *= -1;
    }
    else
    {
        retVal += (*s - 48) * adder;
    }

    return retVal;

}


double fir_circular(double input, int ind)
{
	
	int i;
    unsigned int state;
    double ret_val;

    double* history = history_global[ind];
	unsigned int* p_state = &p_state_global[ind];

	//*******************

	double *h_ptr = history;
	double *c_ptr = coeffs;

	//*******************

    state = *p_state;               // copy the filter's state to a local 


	// store input at the beginning of the delay line 
    
	//history[state] = input;
	//*******************
	h_ptr += state;
	*h_ptr = input;
	//*******************

	if ((int)(++state) - (int)n_coeff >= 0)
	{         // incr state and check for wrap 
		state = 0;
	}

	// calc FIR and shift data 
	ret_val = 0;
	

	for (c_ptr = coeffs + n_coeff - 1; c_ptr >= coeffs; c_ptr--)
	{
		h_ptr = history + state;
		ret_val += *c_ptr * *h_ptr;
		//if(++state >= n_coeff)

		unsigned int temp = (state) - n_coeff;
		if((int)(++state) - (int)n_coeff >= 0)
		{
			state = 0;
		}
	}


    *p_state = state;               // return new state to caller 

	if(ret_val > 0.99999999)
		ret_val = 0.99999999;
	if(ret_val < -0.99999999)
		ret_val = -0.99999999;

    return ret_val;
	
	
}



void processing(double pInbuf[MAX_NUM_CHANNEL][BLOCK_SIZE], double pOutbuf[MAX_NUM_CHANNEL][BLOCK_SIZE])
{
	/* 10^(-4/20) */
	//double gain = 0.63095735;
	double gain = pow(10.0, InputGain/20.0);


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
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], 0);	
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[0][j] + pInbuf[1][j];   
			if(pOutbuf[2][j] > 0.99999999)
				pOutbuf[2][j] = 0.99999999;
			if(pOutbuf[2][j] < -0.99999999)
				pOutbuf[2][j] = -0.99999999;

			pOutbuf[3][j] = pInbuf[1][j];
			pOutbuf[4][j] = fir_circular(pInbuf[1][j], 1);
			pOutbuf[5][j] = pOutbuf[4][j] + pOutbuf[0][j];
			if(pOutbuf[5][j] > 0.99999999)
				pOutbuf[5][j] = 0.99999999;
			if(pOutbuf[5][j] < -0.99999999)
				pOutbuf[5][j] = -0.99999999;


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
			
			pOutbuf[0][j] = fir_circular(pInbuf[0][j], 0);
			pOutbuf[1][j] = pInbuf[0][j];
			pOutbuf[2][j] = pInbuf[1][j];
			pOutbuf[3][j] = fir_circular(pInbuf[1][j], 1);
			
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
