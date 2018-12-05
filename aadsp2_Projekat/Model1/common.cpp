#include "common.h"

extern double history_global[2][Ntap];
extern unsigned int p_state_global[2]; 

double coeffs[n_coeff] = { 
        -0.00207513724778647140,
        -0.00217637838099327610,
        -0.00228078465861456620,
        -0.00238837128101942760,
        -0.00249914882226101890,
        -0.00261312296509078010,
        -0.00273029423146596430,
        -0.00285065770884099280,
        -0.00297420277258046750,
        -0.00310091280484182810,
        -0.00323076491031552320,
        -0.00336372962922661160,
        -0.00349977064803202750,
        -0.00363884450827982880,
        -0.00378090031411331810,
        -0.00392587943895232080,
        -0.00407371523188311550,
        -0.00422433272435441920,
        -0.00437764833776308620,
        -0.00453356959259002080,
        -0.00469199481973614760,
        -0.00485281287476664520,
        -0.00501590285578391690,
        -0.00518113382569273740,
        -0.00534836453964335040,
        -0.00551744317847007330,
        -0.00568820708897802530,
        -0.00586048253195674270,
        -0.00603408443881176420,
        -0.00620881617778555260,
        -0.00638446933069648090,
        -0.00656082348121125960,
        -0.00673764601566220930,
        -0.00691469193745850380,
        -0.00709170369616382060,
        -0.00726841103233338580,
        -0.00744453083923316780,
        -0.00761976704258055140,
        -0.00779381049947177730,
        -0.00796633891767073270,
        -0.00813701679646679220,
        -0.00830549539030860790,
        -0.00847141269644654560,
        -0.00863439346782395550,
        -0.00879404925246547730,
        -0.00894997846062089120,
        -0.00910176646093054790,
        -0.00924898570687218880,
        -0.00939119589475915020,
        -0.00952794415454925880,
        -0.00965876527472230360,
        -0.00978318196247196340,
        -0.00990070514044585210,
        -0.01001083428125532300,
        -0.01011305778094857300,
        -0.01020685337262810900,
        -0.01029168858135474600,
        -0.01036702122146096300,
        -0.01043229993734798000,
        -0.01048696478881336800,
        -0.01053044788190094300,
        -0.01056217404622181200,
        -0.01058156155964070000,
        0.98936363835392083000,
        -0.01058156155964070000,
        -0.01056217404622181200,
        -0.01053044788190094300,
        -0.01048696478881336800,
        -0.01043229993734798000,
        -0.01036702122146096300,
        -0.01029168858135474600,
        -0.01020685337262810900,
        -0.01011305778094857300,
        -0.01001083428125532300,
        -0.00990070514044585210,
        -0.00978318196247196340,
        -0.00965876527472230360,
        -0.00952794415454925880,
        -0.00939119589475915020,
        -0.00924898570687218880,
        -0.00910176646093054790,
        -0.00894997846062089120,
        -0.00879404925246547730,
        -0.00863439346782395550,
        -0.00847141269644654560,
        -0.00830549539030860790,
        -0.00813701679646679220,
        -0.00796633891767073270,
        -0.00779381049947177730,
        -0.00761976704258055140,
        -0.00744453083923316780,
        -0.00726841103233338580,
        -0.00709170369616382060,
        -0.00691469193745850380,
        -0.00673764601566220930,
        -0.00656082348121125960,
        -0.00638446933069648090,
        -0.00620881617778555260,
        -0.00603408443881176420,
        -0.00586048253195674270,
        -0.00568820708897802530,
        -0.00551744317847007330,
        -0.00534836453964335040,
        -0.00518113382569273740,
        -0.00501590285578391690,
        -0.00485281287476664520,
        -0.00469199481973614760,
        -0.00453356959259002080,
        -0.00437764833776308620,
        -0.00422433272435441920,
        -0.00407371523188311550,
        -0.00392587943895232080,
        -0.00378090031411331810,
        -0.00363884450827982880,
        -0.00349977064803202750,
        -0.00336372962922661160,
        -0.00323076491031552320,
        -0.00310091280484182810,
        -0.00297420277258046750,
        -0.00285065770884099280,
        -0.00273029423146596430,
        -0.00261312296509078010,
        -0.00249914882226101890,
        -0.00238837128101942760,
        -0.00228078465861456620,
        -0.00217637838099327610,
        -0.00207513724778647140,
        -0.00197704169248794470
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
