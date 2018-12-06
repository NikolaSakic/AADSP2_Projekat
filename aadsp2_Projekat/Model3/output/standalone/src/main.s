	.public _InputGain
	.public _history_global
	.public _outputSampleBuffer
	.public _p_state_global
	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
_InputGain
	.bss (0x1)
	.xdata_ovly align 128
_history_global
	.bss (0x100)
	.xdata_ovly
_outputSampleBuffer
	.bss (0x80)
	.xdata_ovly
_p_state_global
	.bss (0x2)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x4d)
	.dw  (0x79)
	.dw  (0x57)
	.dw  (0x68)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x4e)
	.dw  (0x6f)
	.dw  (0x69)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x4f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x6d)
	.dw  (0x79)
	.dw  (0x57)
	.dw  (0x68)
	.dw  (0x69)
	.dw  (0x74)
	.dw  (0x65)
	.dw  (0x4e)
	.dw  (0x6f)
	.dw  (0x69)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 20 | 
	i7 += 1			# LN: 20 | 
	i7 = i7 + (0x20e)			# LN: 20 | 
	i1 = i7 - (0x1)			# LN: 20 | 
	xmem[i1] = a0h			# LN: 20 | 
	i1 = i7 - (0x2)			# LN: 20 | 
	xmem[i1] = i0			# LN: 20 | 
cline_20_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 34 | 
	a0 = 0			# LN: 34 | 
	xmem[i0] = a0h			# LN: 34 | 
	i0 = (0) + (_history_global + 0)			# LN: 34 | 
	do (0x80), label_end_92			# LN: 34 | 
label_begin_92:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 34 | 
	xmem[i0] = a0h			# LN: 34 | 
init_latch_label_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 34 | 
	a0 = xmem[i1]			# LN: 34 | 
	uhalfword(a1) = (0x1)			# LN: 34 | 
	i0 += 1; a0 = a0 + a1			# LN: 34, 34 | 
	i1 = i7 - (0x3)			# LN: 34 | 
label_end_92:			# LN: 34 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	i0 = (0) + (_history_global + 128)			# LN: 35 | 
	do (0x80), label_end_93			# LN: 35 | 
label_begin_93:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
init_latch_label_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 35 | 
	a0 = xmem[i1]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	i0 += 1; a0 = a0 + a1			# LN: 35, 35 | 
	i1 = i7 - (0x3)			# LN: 35 | 
label_end_93:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 36 | 
	xmem[_p_state_global + 0] = a0h			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 37 | 
	xmem[_p_state_global + 1] = a0h			# LN: 37 | 
cline_37_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 41 | 
	i1 = (0) + (_string_const_0)			# LN: 41 | 
	call (_strcpy)			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 42 | 
	call (_cl_wavread_open)			# LN: 42 | 
	AnyReg(i0, a0h)			# LN: 42 | 
	i1 = i7 - (0x104)			# LN: 42 | 
	xmem[i1] = i0			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 43 | 
	a0 = xmem[i0]			# LN: 43 | 
	a0 & a0			# LN: 43 | 
	if (a != 0) jmp (else_0)			# LN: 43 | 
cline_43_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 45 | 
	call (_printf)			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 46 | 
	jmp (__epilogue_242)			# LN: 46 | 
cline_46_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	call (_cl_wavread_getnchannels)			# LN: 52 | 
	i0 = i7 - (0x105)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_bits_per_sample)			# LN: 53 | 
	i0 = i7 - (0x106)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_frame_rate)			# LN: 54 | 
	i0 = i7 - (0x107)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	call (_cl_wavread_number_of_frames)			# LN: 55 | 
	i0 = i7 - (0x108)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 60 | 
	i1 = (0) + (_string_const_2)			# LN: 60 | 
	call (_strcpy)			# LN: 60 | 
cline_60_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 61 | 
	i1 = i7 - (0x106)			# LN: 61 | 
	a0 = xmem[i1]			# LN: 61 | 
	uhalfword(a1) = (0x6)			# LN: 61 | 
	i1 = i7 - (0x107)			# LN: 61 | 
	b0 = xmem[i1]			# LN: 61 | 
	call (_cl_wavwrite_open)			# LN: 61 | 
	AnyReg(i0, a0h)			# LN: 61 | 
	i1 = i7 - (0x209)			# LN: 61 | 
	xmem[i1] = i0			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	a0 & a0			# LN: 62 | 
	if (a != 0) jmp (else_1)			# LN: 62 | 
cline_62_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 64 | 
	call (_printf)			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 65 | 
	jmp (__epilogue_242)			# LN: 65 | 
cline_65_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	uhalfword(a1) = (0x10)			# LN: 83 | 
	call (__div)			# LN: 83 | 
	i0 = i7 - (0x20a)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 85 | 
	a0 = 0			# LN: 85 | 
	xmem[i0] = a0h			# LN: 85 | 
for_2:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	i0 = i7 - (0x20a)			# LN: 85 | 
	a1 = xmem[i0]			# LN: 85 | 
	a0 - a1			# LN: 85 | 
	if (a >= 0) jmp (for_end_2)			# LN: 85 | 
cline_85_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 87 | 
	a0 = 0			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
	do (0x10), label_end_94			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 89 | 
	a0 = 0			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
for_4:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	i0 = i7 - (0x105)			# LN: 89 | 
	a1 = xmem[i0]			# LN: 89 | 
	a0 - a1			# LN: 89 | 
	if (a >= 0) jmp (for_end_4)			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	call (_cl_wavread_recvsample)			# LN: 91 | 
	i0 = i7 - (0x20e)			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	a0 = a0 << 4			# LN: 92 | 
	i0 = a0			# LN: 92 | 
	i1 = i7 - (0x20c)			# LN: 92 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 92 | 
	a0 = xmem[i1]			# LN: 92 | 
	a1 = i0			# LN: 92 | 
	a0 = a1 + a0			# LN: 92 | 
	AnyReg(i0, a0h)			# LN: 92 | 
	i1 = i7 - (0x20e)			# LN: 92 | 
	a0 = xmem[i1]			# LN: 92 | 
	ymem[i0] = a0h			# LN: 92 | 
cline_92_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	uhalfword(a1) = (0x1)			# LN: 89 | 
	a0 = a0 + a1			# LN: 89 | 
	i0 = i7 - (0x20d)			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
	jmp (for_4)			# LN: 89 | 
cline_89_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	uhalfword(a1) = (0x1)			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	i0 = i7 - (0x20c)			# LN: 87 | 
label_end_94:			# LN: 87 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 87 | 
cline_87_1:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 100 | 
	i1 = (0) + (_outputSampleBuffer)			# LN: 100 | 
	call (_processing)			# LN: 100 | 
cline_100_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 104 | 
	a0 = 0			# LN: 104 | 
	xmem[i0] = a0h			# LN: 104 | 
	do (0x10), label_end_96			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 106 | 
	a0 = 0			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
	do (0x6), label_end_95			# LN: 106 | 
cline_106_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	a0 = a0 << 4			# LN: 108 | 
	i0 = a0			# LN: 108 | 
	i1 = i7 - (0x20c)			# LN: 108 | 
	i0 = i0 + (_outputSampleBuffer + 0)			# LN: 108 | 
	a0 = xmem[i1]			# LN: 108 | 
	a1 = i0			# LN: 108 | 
	a0 = a1 + a0			# LN: 108 | 
	AnyReg(i0, a0h)			# LN: 108 | 
	i1 = i7 - (0x20e)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	xmem[i1] = a0h			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 109 | 
	i1 = i7 - (0x20e)			# LN: 109 | 
	a0 = xmem[i1]			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	call (_cl_wavwrite_sendsample)			# LN: 109 | 
cline_109_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	uhalfword(a1) = (0x1)			# LN: 106 | 
	a0 = a0 + a1			# LN: 106 | 
	i0 = i7 - (0x20d)			# LN: 106 | 
label_end_95:			# LN: 106 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 106 | 
cline_106_1:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 104 | 
	a0 = xmem[i0]			# LN: 104 | 
	uhalfword(a1) = (0x1)			# LN: 104 | 
	a0 = a0 + a1			# LN: 104 | 
	i0 = i7 - (0x20c)			# LN: 104 | 
label_end_96:			# LN: 104 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 104 | 
cline_104_1:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	uhalfword(a1) = (0x1)			# LN: 85 | 
	a0 = a0 + a1			# LN: 85 | 
	i0 = i7 - (0x20b)			# LN: 85 | 
	xmem[i0] = a0h			# LN: 85 | 
	jmp (for_2)			# LN: 85 | 
cline_85_1:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	call (_cl_wavread_close)			# LN: 117 | 
cline_117_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 118 | 
	i0 = xmem[i0]			# LN: 118 | 
	call (_cl_wavwrite_close)			# LN: 118 | 
cline_118_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 121 | 
	jmp (__epilogue_242)			# LN: 121 | 
cline_121_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
__epilogue_242:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 122 | 
	i7 -= 1			# LN: 122 | 
	ret			# LN: 122 | 
