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
cline_65_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x10)			# LN: 77 | 
	call (__div)			# LN: 77 | 
	i0 = i7 - (0x20a)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 79 | 
	a0 = 0			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
for_2:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	i0 = i7 - (0x20a)			# LN: 79 | 
	a1 = xmem[i0]			# LN: 79 | 
	a0 - a1			# LN: 79 | 
	if (a >= 0) jmp (for_end_2)			# LN: 79 | 
cline_79_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 81 | 
	a0 = 0			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
	do (0x10), label_end_94			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 83 | 
	a0 = 0			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
for_4:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	i0 = i7 - (0x105)			# LN: 83 | 
	a1 = xmem[i0]			# LN: 83 | 
	a0 - a1			# LN: 83 | 
	if (a >= 0) jmp (for_end_4)			# LN: 83 | 
cline_83_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	call (_cl_wavread_recvsample)			# LN: 85 | 
	i0 = i7 - (0x20e)			# LN: 85 | 
	xmem[i0] = a0h			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	a0 = a0 << 4			# LN: 86 | 
	i0 = a0			# LN: 86 | 
	i1 = i7 - (0x20c)			# LN: 86 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 86 | 
	a0 = xmem[i1]			# LN: 86 | 
	a1 = i0			# LN: 86 | 
	a0 = a1 + a0			# LN: 86 | 
	AnyReg(i0, a0h)			# LN: 86 | 
	i1 = i7 - (0x20e)			# LN: 86 | 
	a0 = xmem[i1]			# LN: 86 | 
	ymem[i0] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	uhalfword(a1) = (0x1)			# LN: 83 | 
	a0 = a0 + a1			# LN: 83 | 
	i0 = i7 - (0x20d)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
	jmp (for_4)			# LN: 83 | 
cline_83_1:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	uhalfword(a1) = (0x1)			# LN: 81 | 
	a0 = a0 + a1			# LN: 81 | 
	i0 = i7 - (0x20c)			# LN: 81 | 
label_end_94:			# LN: 81 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 81 | 
cline_81_1:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 92 | 
	i1 = (0) + (_outputSampleBuffer)			# LN: 92 | 
	call (_processing)			# LN: 92 | 
cline_92_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 96 | 
	a0 = 0			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
	do (0x10), label_end_96			# LN: 96 | 
cline_96_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 98 | 
	a0 = 0			# LN: 98 | 
	xmem[i0] = a0h			# LN: 98 | 
	do (0x6), label_end_95			# LN: 98 | 
cline_98_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	a0 = a0 << 4			# LN: 100 | 
	i0 = a0			# LN: 100 | 
	i1 = i7 - (0x20c)			# LN: 100 | 
	i0 = i0 + (_outputSampleBuffer + 0)			# LN: 100 | 
	a0 = xmem[i1]			# LN: 100 | 
	a1 = i0			# LN: 100 | 
	a0 = a1 + a0			# LN: 100 | 
	AnyReg(i0, a0h)			# LN: 100 | 
	i1 = i7 - (0x20e)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	xmem[i1] = a0h			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 101 | 
	i1 = i7 - (0x20e)			# LN: 101 | 
	a0 = xmem[i1]			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	call (_cl_wavwrite_sendsample)			# LN: 101 | 
cline_101_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	uhalfword(a1) = (0x1)			# LN: 98 | 
	a0 = a0 + a1			# LN: 98 | 
	i0 = i7 - (0x20d)			# LN: 98 | 
label_end_95:			# LN: 98 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 98 | 
cline_98_1:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	uhalfword(a1) = (0x1)			# LN: 96 | 
	a0 = a0 + a1			# LN: 96 | 
	i0 = i7 - (0x20c)			# LN: 96 | 
label_end_96:			# LN: 96 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 96 | 
cline_96_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	uhalfword(a1) = (0x1)			# LN: 79 | 
	a0 = a0 + a1			# LN: 79 | 
	i0 = i7 - (0x20b)			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
	jmp (for_2)			# LN: 79 | 
cline_79_1:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	call (_cl_wavread_close)			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 110 | 
	i0 = xmem[i0]			# LN: 110 | 
	call (_cl_wavwrite_close)			# LN: 110 | 
cline_110_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 113 | 
	jmp (__epilogue_242)			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
__epilogue_242:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 114 | 
	i7 -= 1			# LN: 114 | 
	ret			# LN: 114 | 
