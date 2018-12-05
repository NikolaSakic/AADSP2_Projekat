	.public _InputGain
	.public _outputSampleBuffer
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
	.xdata_ovly
_outputSampleBuffer
	.bss (0x80)
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

_main:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 17 | 
	i7 += 1			# LN: 17 | 
	i7 = i7 + (0x20d)			# LN: 17 | 
	i1 = i7 - (0x1)			# LN: 17 | 
	xmem[i1] = a0h			# LN: 17 | 
	i1 = i7 - (0x2)			# LN: 17 | 
	xmem[i1] = i0			# LN: 17 | 
cline_17_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 32 | 
	i1 = (0) + (_string_const_0)			# LN: 32 | 
	call (_strcpy)			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 33 | 
	call (_cl_wavread_open)			# LN: 33 | 
	AnyReg(i0, a0h)			# LN: 33 | 
	i1 = i7 - (0x103)			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 34 | 
	a0 = xmem[i0]			# LN: 34 | 
	a0 & a0			# LN: 34 | 
	if (a != 0) jmp (else_0)			# LN: 34 | 
cline_34_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 36 | 
	call (_printf)			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 37 | 
	jmp (__epilogue_242)			# LN: 37 | 
cline_37_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 43 | 
	i0 = xmem[i0]			# LN: 43 | 
	call (_cl_wavread_getnchannels)			# LN: 43 | 
	i0 = i7 - (0x104)			# LN: 43 | 
	xmem[i0] = a0h			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	call (_cl_wavread_bits_per_sample)			# LN: 44 | 
	i0 = i7 - (0x105)			# LN: 44 | 
	xmem[i0] = a0h			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	call (_cl_wavread_frame_rate)			# LN: 45 | 
	i0 = i7 - (0x106)			# LN: 45 | 
	xmem[i0] = a0h			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	call (_cl_wavread_number_of_frames)			# LN: 46 | 
	i0 = i7 - (0x107)			# LN: 46 | 
	xmem[i0] = a0h			# LN: 46 | 
cline_46_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 51 | 
	i1 = (0) + (_string_const_2)			# LN: 51 | 
	call (_strcpy)			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 52 | 
	i1 = i7 - (0x105)			# LN: 52 | 
	a0 = xmem[i1]			# LN: 52 | 
	uhalfword(a1) = (0x6)			# LN: 52 | 
	i1 = i7 - (0x106)			# LN: 52 | 
	b0 = xmem[i1]			# LN: 52 | 
	call (_cl_wavwrite_open)			# LN: 52 | 
	AnyReg(i0, a0h)			# LN: 52 | 
	i1 = i7 - (0x208)			# LN: 52 | 
	xmem[i1] = i0			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	a0 & a0			# LN: 53 | 
	if (a != 0) jmp (else_1)			# LN: 53 | 
cline_53_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 55 | 
	call (_printf)			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 56 | 
	jmp (__epilogue_242)			# LN: 56 | 
cline_56_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x10)			# LN: 74 | 
	call (__div)			# LN: 74 | 
	i0 = i7 - (0x209)			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
cline_74_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 76 | 
	a0 = 0			# LN: 76 | 
	xmem[i0] = a0h			# LN: 76 | 
for_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 76 | 
	a0 = xmem[i0]			# LN: 76 | 
	i0 = i7 - (0x209)			# LN: 76 | 
	a1 = xmem[i0]			# LN: 76 | 
	a0 - a1			# LN: 76 | 
	if (a >= 0) jmp (for_end_0)			# LN: 76 | 
cline_76_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 78 | 
	a0 = 0			# LN: 78 | 
	xmem[i0] = a0h			# LN: 78 | 
	do (0x10), label_end_92			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
for_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	i0 = i7 - (0x104)			# LN: 80 | 
	a1 = xmem[i0]			# LN: 80 | 
	a0 - a1			# LN: 80 | 
	if (a >= 0) jmp (for_end_2)			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	call (_cl_wavread_recvsample)			# LN: 82 | 
	i0 = i7 - (0x20d)			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	a0 = a0 << 4			# LN: 83 | 
	i0 = a0			# LN: 83 | 
	i1 = i7 - (0x20b)			# LN: 83 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 83 | 
	a0 = xmem[i1]			# LN: 83 | 
	a1 = i0			# LN: 83 | 
	a0 = a1 + a0			# LN: 83 | 
	AnyReg(i0, a0h)			# LN: 83 | 
	i1 = i7 - (0x20d)			# LN: 83 | 
	a0 = xmem[i1]			# LN: 83 | 
	ymem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0x20c)			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	jmp (for_2)			# LN: 80 | 
cline_80_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 78 | 
	a0 = xmem[i0]			# LN: 78 | 
	uhalfword(a1) = (0x1)			# LN: 78 | 
	a0 = a0 + a1			# LN: 78 | 
	i0 = i7 - (0x20b)			# LN: 78 | 
label_end_92:			# LN: 78 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 78 | 
cline_78_1:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 91 | 
	i1 = (0) + (_outputSampleBuffer)			# LN: 91 | 
	call (_processing)			# LN: 91 | 
cline_91_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 95 | 
	a0 = 0			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	do (0x10), label_end_94			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 97 | 
	a0 = 0			# LN: 97 | 
	xmem[i0] = a0h			# LN: 97 | 
	do (0x6), label_end_93			# LN: 97 | 
cline_97_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	a0 = a0 << 4			# LN: 99 | 
	i0 = a0			# LN: 99 | 
	i1 = i7 - (0x20b)			# LN: 99 | 
	i0 = i0 + (_outputSampleBuffer + 0)			# LN: 99 | 
	a0 = xmem[i1]			# LN: 99 | 
	a1 = i0			# LN: 99 | 
	a0 = a1 + a0			# LN: 99 | 
	AnyReg(i0, a0h)			# LN: 99 | 
	i1 = i7 - (0x20d)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	xmem[i1] = a0h			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 100 | 
	i1 = i7 - (0x20d)			# LN: 100 | 
	a0 = xmem[i1]			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	call (_cl_wavwrite_sendsample)			# LN: 100 | 
cline_100_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	uhalfword(a1) = (0x1)			# LN: 97 | 
	a0 = a0 + a1			# LN: 97 | 
	i0 = i7 - (0x20c)			# LN: 97 | 
label_end_93:			# LN: 97 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 97 | 
cline_97_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x1)			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x20b)			# LN: 95 | 
label_end_94:			# LN: 95 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 95 | 
cline_95_1:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 76 | 
	a0 = xmem[i0]			# LN: 76 | 
	uhalfword(a1) = (0x1)			# LN: 76 | 
	a0 = a0 + a1			# LN: 76 | 
	i0 = i7 - (0x20a)			# LN: 76 | 
	xmem[i0] = a0h			# LN: 76 | 
	jmp (for_0)			# LN: 76 | 
cline_76_1:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	call (_cl_wavread_close)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	call (_cl_wavwrite_close)			# LN: 109 | 
cline_109_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 112 | 
	jmp (__epilogue_242)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
__epilogue_242:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 113 | 
	i7 -= 1			# LN: 113 | 
	ret			# LN: 113 | 
