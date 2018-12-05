	.public _coeffs
	.public _fir_circular
	.public _processing
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x50c335df)
	.xdata_ovly align 32
_coeffs
	.dw  (0xfecf18c1)
	.dw  (0xfecaa82b)
	.dw  (0xfec668d8)
	.dw  (0xfec25ec0)
	.dw  (0xfebe8df3)
	.dw  (0xfebafa9c)
	.dw  (0xfeb7a8f9)
	.dw  (0xfeb49d64)
	.dw  (0xfeb1dc47)
	.dw  (0xfeaf6a26)
	.dw  (0xfead4b95)
	.dw  (0xfeab853c)
	.dw  (0xfeaa1bd2)
	.dw  (0xfea91421)
	.dw  (0xfea872fd)
	.dw  (0x7d79998a)
	.dw  (0xfea872fd)
	.dw  (0xfea91421)
	.dw  (0xfeaa1bd2)
	.dw  (0xfeab853c)
	.dw  (0xfead4b95)
	.dw  (0xfeaf6a26)
	.dw  (0xfeb1dc47)
	.dw  (0xfeb49d64)
	.dw  (0xfeb7a8f9)
	.dw  (0xfebafa9c)
	.dw  (0xfebe8df3)
	.dw  (0xfec25ec0)
	.dw  (0xfec668d8)
	.dw  (0xfecaa82b)
	.dw  (0xfecf18c1)
	.dw  (0x0)
	.code_ovly



_fir_circular:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 182 | 
	i7 += 1			# LN: 182 | 
	i7 = i7 + (0x7)			# LN: 182 | 
	i4 = i7 - (0x1)			# LN: 182 | 
	xmem[i4] = a0h			# LN: 182 | 
	i4 = i7 - (0x2)			# LN: 182 | 
	xmem[i4] = i0			# LN: 182 | 
	i0 = i7 - (0x3)			# LN: 182 | 
	xmem[i0] = i1			# LN: 182 | 
cline_182_0:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 218 | 
	a0 = xmem[i0]			# LN: 218 | 
	i0 = i7 - (0x4)			# LN: 218 | 
	xmem[i0] = a0			# LN: 218 | 
cline_218_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 219 | 
	uhalfword(a0) = (_coeffs + 0)			# LN: 219 | 
	xmem[i0] = a0			# LN: 219 | 
cline_219_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 221 | 
	i0 = xmem[i0]			# LN: 221 | 
	i1 = i7 - (0x6)			# LN: 221 | 
	a0 = xmem[i0]			# LN: 221 | 
	xmem[i1] = a0h			# LN: 221 | 
cline_221_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 228 | 
	a0 = xmem[i0]			# LN: 228 | 
	i0 = i7 - (0x4)			# LN: 228 | 
	a1 = xmem[i0]			# LN: 228 | 
	a0 = a1 + a0			# LN: 228 | 
	AnyReg(i0, a0h)			# LN: 228 | 
	i1 = i7 - (0x4)			# LN: 228 | 
	xmem[i1] = i0			# LN: 228 | 
cline_228_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 229 | 
	i1 = i7 - (0x4)			# LN: 229 | 
	i1 = xmem[i1]			# LN: 229 | 
	a0 = xmem[i0]			# LN: 229 | 
	xmem[i1] = a0h			# LN: 229 | 
cline_229_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 232 | 
	a0 = xmem[i0]			# LN: 232 | 
	uhalfword(a1) = (0x1)			# LN: 232 | 
	a0 = a0 + a1			# LN: 232 | 
	i0 = i7 - (0x6)			# LN: 232 | 
	xmem[i0] = a0h			# LN: 232 | 
	i0 = i7 - (0x6)			# LN: 232 | 
	a0 = xmem[i0]			# LN: 232 | 
	uhalfword(a1) = (0x20)			# LN: 232 | 
	a0 = a0 - a1			# LN: 232 | 
	if (a < 0) jmp (else_0)			# LN: 232 | 
cline_232_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 234 | 
	a0 = 0			# LN: 234 | 
	xmem[i0] = a0h			# LN: 234 | 
	jmp (endif_0)			# LN: 234 | 
cline_234_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 238 | 
	a0 = 0			# LN: 238 | 
	xmem[i0] = a0h			# LN: 238 | 
cline_238_0:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 241 | 
	uhalfword(a0) = (_coeffs + 31)			# LN: 241 | 
	xmem[i0] = a0			# LN: 241 | 
for_3:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 241 | 
	i0 = xmem[i0]			# LN: 241 | 
	a0 = i0			# LN: 241 | 
	uhalfword(a1) = (_coeffs + 0)			# LN: 241 | 
	a0 - a1			# LN: 241 | 
	if (a < 0) jmp (for_end_3)			# LN: 241 | 
cline_241_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 243 | 
	a0 = xmem[i0]			# LN: 243 | 
	i0 = i7 - (0x2)			# LN: 243 | 
	a1 = xmem[i0]			# LN: 243 | 
	a0 = a1 + a0			# LN: 243 | 
	AnyReg(i0, a0h)			# LN: 243 | 
	i1 = i7 - (0x4)			# LN: 243 | 
	xmem[i1] = i0			# LN: 243 | 
cline_243_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 244 | 
	i0 = xmem[i0]			# LN: 244 | 
	i1 = i7 - (0x4)			# LN: 244 | 
	x0 = xmem[i0]			# LN: 244 | 
	i0 = xmem[i1]			# LN: 244 | 
	i1 = i7 - (0x7)			# LN: 244 | 
	a0 = xmem[i1]			# LN: 244 | 
	x1 = xmem[i0]			# LN: 244 | 
	a0 += x0 * x1			# LN: 244 | 
	i0 = i7 - (0x7)			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
cline_244_0:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 249 | 
	a0 = xmem[i0]			# LN: 249 | 
	uhalfword(a1) = (0x1)			# LN: 249 | 
	a0 = a0 + a1			# LN: 249 | 
	i0 = i7 - (0x6)			# LN: 249 | 
	xmem[i0] = a0h			# LN: 249 | 
	i0 = i7 - (0x6)			# LN: 249 | 
	a0 = xmem[i0]			# LN: 249 | 
	uhalfword(a1) = (0x20)			# LN: 249 | 
	a0 = a0 - a1			# LN: 249 | 
	if (a < 0) jmp (else_1)			# LN: 249 | 
cline_249_0:			/* LN: 251 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 251 | 
	a0 = 0			# LN: 251 | 
	xmem[i0] = a0h			# LN: 251 | 
	jmp (endif_1)			# LN: 251 | 
cline_251_0:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 241 | 
	i0 = xmem[i0]			# LN: 241 | 
	i1 = i7 - (0x5)			# LN: 241 | 
	i0 -= 1			# LN: 241 | 
	xmem[i1] = i0			# LN: 241 | 
	jmp (for_3)			# LN: 241 | 
cline_241_1:			/* LN: 272 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 272 | 
	i1 = i7 - (0x3)			# LN: 272 | 
	i1 = xmem[i1]			# LN: 272 | 
	a0 = xmem[i0]			# LN: 272 | 
	xmem[i1] = a0h			# LN: 272 | 
cline_272_0:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 282 | 
	a0 = xmem[i0]			# LN: 282 | 
	jmp (__epilogue_214)			# LN: 282 | 
cline_282_0:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
__epilogue_214:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 287 | 
	i7 -= 1			# LN: 287 | 
	ret			# LN: 287 | 



_processing:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 53 | 
	i7 += 1			# LN: 53 | 
	xmem[i7] = i2; i7 += 1			# LN: 53, 53 | 
	i7 = i7 + (0x47)			# LN: 53 | 
	i4 = i7 - (0x1)			# LN: 53 | 
	xmem[i4] = i0			# LN: 53 | 
	i0 = i7 - (0x2)			# LN: 53 | 
	xmem[i0] = i1			# LN: 53 | 
cline_53_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 56 | 
	a0 = 0			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 57 | 
	a0 = 0			# LN: 57 | 
	xmem[i0] = a0h			# LN: 57 | 
cline_57_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 63 | 
	i0 = i7 - (0x5)			# LN: 63 | 
	xmem[i0] = a0h			# LN: 63 | 
cline_63_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 67 | 
	a0 = 0			# LN: 67 | 
	xmem[i0] = a0h			# LN: 67 | 
	i0 = i7 - (38 - 0)			# LN: 67 | 
	do (0x20), label_end_92			# LN: 67 | 
label_begin_92:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 67 | 
	xmem[i0] = a0h			# LN: 67 | 
init_latch_label_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x6)			# LN: 67 | 
	a0 = xmem[i1]			# LN: 67 | 
	uhalfword(a1) = (0x1)			# LN: 67 | 
	i0 += 1; a0 = a0 + a1			# LN: 67, 67 | 
	i1 = i7 - (0x6)			# LN: 67 | 
label_end_92:			# LN: 67 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 68 | 
	a0 = 0			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
	i0 = i7 - (70 - 0)			# LN: 68 | 
	do (0x20), label_end_93			# LN: 68 | 
label_begin_93:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
init_latch_label_1:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x6)			# LN: 68 | 
	a0 = xmem[i1]			# LN: 68 | 
	uhalfword(a1) = (0x1)			# LN: 68 | 
	i0 += 1; a0 = a0 + a1			# LN: 68, 68 | 
	i1 = i7 - (0x6)			# LN: 68 | 
label_end_93:			# LN: 68 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 68 | 
cline_68_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x47)			# LN: 73 | 
	a0 = 0			# LN: 73 | 
	xmem[i0] = a0h			# LN: 73 | 
	i0 = i7 - (0x2)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	nop #empty cycle
	i0 = i0 + (0x50)			# LN: 73 | 
	i5 = i0			# LN: 73 | 
	do (0x10), label_end_94			# LN: 73 | 
cline_73_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	i1 = i7 - (0x47)			# LN: 75 | 
	a0 = xmem[i1]			# LN: 75 | 
	a1 = i0			# LN: 75 | 
	i0 = i7 - (0x1)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	i1 = i7 - (0x47)			# LN: 75 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 75, 75 | 
	a1 = i0			# LN: 75 | 
	a1 = a1 + b0			# LN: 75 | 
	AnyReg(i0, a1h)			# LN: 75 | 
	AnyReg(i1, a0h)			# LN: 75 | 
	x0 = ymem[i0]			# LN: 75 | 
	i0 = i7 - (0x5)			# LN: 75 | 
	x1 = xmem[i0]			# LN: 75 | 
	a0 = x0 * x1			# LN: 75 | 
	ymem[i1] = a0			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 76 | 
	i0 = xmem[i0]			# LN: 76 | 
	i1 = i7 - (0x47)			# LN: 76 | 
	i0 = i0 + (0x10)			# LN: 76 | 
	a0 = xmem[i1]			# LN: 76 | 
	i1 = i7 - (0x1)			# LN: 76 | 
	i1 = xmem[i1]			# LN: 76 | 
	a1 = i0			# LN: 76 | 
	i0 = i1 + (0x10)			# LN: 76 | 
	i1 = i7 - (0x47)			# LN: 76 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 76, 76 | 
	a1 = i0			# LN: 76 | 
	a1 = a1 + b0			# LN: 76 | 
	AnyReg(i0, a1h)			# LN: 76 | 
	AnyReg(i1, a0h)			# LN: 76 | 
	x0 = ymem[i0]			# LN: 76 | 
	i0 = i7 - (0x5)			# LN: 76 | 
	x1 = xmem[i0]			# LN: 76 | 
	a0 = x0 * x1			# LN: 76 | 
	ymem[i1] = a0			# LN: 76 | 
cline_76_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	i1 = i7 - (0x47)			# LN: 86 | 
	i4 = i7 - (0x1)			# LN: 86 | 
	i4 = xmem[i4]			# LN: 86 | 
	i2 = i7 - (0x47)			# LN: 86 | 
	a0 = xmem[i2]			# LN: 86 | 
	a1 = i4			# LN: 86 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 86, 86 | 
	AnyReg(i1, a0h)			# LN: 86 | 
	a0 = i0			# LN: 86 | 
	a0 = ymem[i1]; a1 = a0 + b0			# LN: 86, 86 | 
	i0 = i7 - (38 - 0)			# LN: 86 | 
	i1 = i7 - (0x3)			# LN: 86 | 
	AnyReg(i2, a1h)			# LN: 86 | 
	call (_fir_circular)			# LN: 86 | 
	xmem[i2] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = i7 - (0x47)			# LN: 87 | 
	i0 = i0 + (0x10)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	a1 = i0			# LN: 87 | 
	i0 = i7 - (0x1)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = i7 - (0x47)			# LN: 87 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 87, 87 | 
	a1 = i0			# LN: 87 | 
	a1 = a1 + b0			# LN: 87 | 
	AnyReg(i0, a1h)			# LN: 87 | 
	AnyReg(i1, a0h)			# LN: 87 | 
	a0 = ymem[i0]			# LN: 87 | 
	xmem[i1] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	i1 = i7 - (0x47)			# LN: 88 | 
	i0 = i0 + (0x20)			# LN: 88 | 
	a0 = xmem[i1]			# LN: 88 | 
	a1 = i0			# LN: 88 | 
	a0 = a1 + a0			# LN: 88 | 
	AnyReg(i0, a0h)			# LN: 88 | 
	i1 = i7 - (0x1)			# LN: 88 | 
	i1 = xmem[i1]			# LN: 88 | 
	i4 = i7 - (0x47)			# LN: 88 | 
	a0 = xmem[i4]			# LN: 88 | 
	a1 = i1			# LN: 88 | 
	a0 = a1 + a0			# LN: 88 | 
	i1 = i7 - (0x1)			# LN: 88 | 
	i1 = xmem[i1]			# LN: 88 | 
	AnyReg(i4, a0h)			# LN: 88 | 
	i1 = i1 + (0x10)			# LN: 88 | 
	i2 = i7 - (0x47)			# LN: 88 | 
	a0 = xmem[i2]			# LN: 88 | 
	a1 = i1			# LN: 88 | 
	a1 = ymem[i4]; a0 = a1 + a0			# LN: 88, 88 | 
	AnyReg(i1, a0h)			# LN: 88 | 
	nop #empty cycle
	a0 = ymem[i1]			# LN: 88 | 
	a0 = a1 + a0			# LN: 88 | 
	xmem[i0] = a0h			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	i1 = i7 - (0x47)			# LN: 89 | 
	i0 = i0 + (0x30)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	i1 = i7 - (0x1)			# LN: 89 | 
	i1 = xmem[i1]			# LN: 89 | 
	a1 = i0			# LN: 89 | 
	i0 = i1 + (0x10)			# LN: 89 | 
	i1 = i7 - (0x47)			# LN: 89 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 89, 89 | 
	a1 = i0			# LN: 89 | 
	a1 = a1 + b0			# LN: 89 | 
	AnyReg(i0, a1h)			# LN: 89 | 
	AnyReg(i1, a0h)			# LN: 89 | 
	a0 = ymem[i0]			# LN: 89 | 
	xmem[i1] = a0h			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	i1 = i7 - (0x1)			# LN: 90 | 
	i0 = i0 + (0x40)			# LN: 90 | 
	i1 = xmem[i1]			# LN: 90 | 
	i4 = i7 - (0x47)			# LN: 90 | 
	i1 = i1 + (0x10)			# LN: 90 | 
	i2 = i7 - (0x47)			# LN: 90 | 
	a0 = xmem[i2]			# LN: 90 | 
	a1 = i1			# LN: 90 | 
	b0 = xmem[i4]; a0 = a1 + a0			# LN: 90, 90 | 
	AnyReg(i1, a0h)			# LN: 90 | 
	a0 = i0			# LN: 90 | 
	a0 = ymem[i1]; a1 = a0 + b0			# LN: 90, 90 | 
	i0 = i7 - (70 - 0)			# LN: 90 | 
	i1 = i7 - (0x4)			# LN: 90 | 
	AnyReg(i2, a1h)			# LN: 90 | 
	call (_fir_circular)			# LN: 90 | 
	xmem[i2] = a0h			# LN: 90 | 
cline_90_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0x47)			# LN: 91 | 
	i0 = i0 + (0x40)			# LN: 91 | 
	a0 = xmem[i1]			# LN: 91 | 
	a1 = i0			# LN: 91 | 
	a0 = a1 + a0			# LN: 91 | 
	AnyReg(i0, a0h)			# LN: 91 | 
	i1 = i7 - (0x2)			# LN: 91 | 
	i1 = xmem[i1]			# LN: 91 | 
	i4 = i7 - (0x47)			# LN: 91 | 
	a0 = xmem[i4]			# LN: 91 | 
	a1 = i1			# LN: 91 | 
	a1 = xmem[i0]; a0 = a1 + a0			# LN: 91, 91 | 
	AnyReg(i0, a0h)			# LN: 91 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 91 | 
	a0 = a1 + a0			# LN: 91 | 
	xmem[i5] = a0h			# LN: 91 | 
cline_91_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x47)			# LN: 73 | 
	a0 = xmem[i0]			# LN: 73 | 
	uhalfword(a1) = (0x1)			# LN: 73 | 
	i5 += 1; a0 = a0 + a1			# LN: 73, 73 | 
	i0 = i7 - (0x47)			# LN: 73 | 
label_end_94:			# LN: 73 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 73 | 
cline_73_1:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_212)			# LN: 135 | 
__epilogue_212:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x47)			# LN: 135 | 
	i7 -= 1			# LN: 135 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 135, 135 | 
	ret			# LN: 135 | 
