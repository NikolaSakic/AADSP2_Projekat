	.public _coeffs
	.extern _history_global
	.extern _p_state_global
	.public _fir_circular
	.public _processing
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x50c335df)
	.ydata_ovly align 128
_coeffs
	.dw  (0xffbc007c)
	.dw  (0xffb8af37)
	.dw  (0xffb54364)
	.dw  (0xffb1bce3)
	.dw  (0xffae1b9e)
	.dw  (0xffaa5f89)
	.dw  (0xffa688a1)
	.dw  (0xffa296f3)
	.dw  (0xff9e8a94)
	.dw  (0xff9a63a8)
	.dw  (0xff962261)
	.dw  (0xff91c6fd)
	.dw  (0xff8d51cb)
	.dw  (0xff88c328)
	.dw  (0xff841b82)
	.dw  (0xff7f5b56)
	.dw  (0xff7a8333)
	.dw  (0xff7593ba)
	.dw  (0xff708d9f)
	.dw  (0xff6b71a9)
	.dw  (0xff6640b1)
	.dw  (0xff60fba7)
	.dw  (0xff5ba38e)
	.dw  (0xff56397f)
	.dw  (0xff50beaa)
	.dw  (0xff4b3454)
	.dw  (0xff459bdc)
	.dw  (0xff3ff6b5)
	.dw  (0xff3a466e)
	.dw  (0xff348cac)
	.dw  (0xff2ecb30)
	.dw  (0xff2903d2)
	.dw  (0xff233887)
	.dw  (0xff1d6b5c)
	.dw  (0xff179e7a)
	.dw  (0xff11d426)
	.dw  (0xff0c0ebf)
	.dw  (0xff0650c2)
	.dw  (0xff009cc7)
	.dw  (0xfefaf581)
	.dw  (0xfef55dc1)
	.dw  (0xfeefd874)
	.dw  (0xfeea68a3)
	.dw  (0xfee51175)
	.dw  (0xfedfd62b)
	.dw  (0xfedaba23)
	.dw  (0xfed5c0d9)
	.dw  (0xfed0ede2)
	.dw  (0xfecc44f0)
	.dw  (0xfec7c9cf)
	.dw  (0xfec38067)
	.dw  (0xfebf6cb8)
	.dw  (0xfebb92dd)
	.dw  (0xfeb7f709)
	.dw  (0xfeb49d85)
	.dw  (0xfeb18ab5)
	.dw  (0xfeaec30f)
	.dw  (0xfeac4b1f)
	.dw  (0xfeaa2786)
	.dw  (0xfea85cf6)
	.dw  (0xfea6f033)
	.dw  (0xfea5e60f)
	.dw  (0xfea5436d)
	.dw  (0x7ea377bb)
	.dw  (0xfea5436d)
	.dw  (0xfea5e60f)
	.dw  (0xfea6f033)
	.dw  (0xfea85cf6)
	.dw  (0xfeaa2786)
	.dw  (0xfeac4b1f)
	.dw  (0xfeaec30f)
	.dw  (0xfeb18ab5)
	.dw  (0xfeb49d85)
	.dw  (0xfeb7f709)
	.dw  (0xfebb92dd)
	.dw  (0xfebf6cb8)
	.dw  (0xfec38067)
	.dw  (0xfec7c9cf)
	.dw  (0xfecc44f0)
	.dw  (0xfed0ede2)
	.dw  (0xfed5c0d9)
	.dw  (0xfedaba23)
	.dw  (0xfedfd62b)
	.dw  (0xfee51175)
	.dw  (0xfeea68a3)
	.dw  (0xfeefd874)
	.dw  (0xfef55dc1)
	.dw  (0xfefaf581)
	.dw  (0xff009cc7)
	.dw  (0xff0650c2)
	.dw  (0xff0c0ebf)
	.dw  (0xff11d426)
	.dw  (0xff179e7a)
	.dw  (0xff1d6b5c)
	.dw  (0xff233887)
	.dw  (0xff2903d2)
	.dw  (0xff2ecb30)
	.dw  (0xff348cac)
	.dw  (0xff3a466e)
	.dw  (0xff3ff6b5)
	.dw  (0xff459bdc)
	.dw  (0xff4b3454)
	.dw  (0xff50beaa)
	.dw  (0xff56397f)
	.dw  (0xff5ba38e)
	.dw  (0xff60fba7)
	.dw  (0xff6640b1)
	.dw  (0xff6b71a9)
	.dw  (0xff708d9f)
	.dw  (0xff7593ba)
	.dw  (0xff7a8333)
	.dw  (0xff7f5b56)
	.dw  (0xff841b82)
	.dw  (0xff88c328)
	.dw  (0xff8d51cb)
	.dw  (0xff91c6fd)
	.dw  (0xff962261)
	.dw  (0xff9a63a8)
	.dw  (0xff9e8a94)
	.dw  (0xffa296f3)
	.dw  (0xffa688a1)
	.dw  (0xffaa5f89)
	.dw  (0xffae1b9e)
	.dw  (0xffb1bce3)
	.dw  (0xffb54364)
	.dw  (0xffb8af37)
	.dw  (0xffbc007c)
	.dw  (0xffbf375f)
	.code_ovly



_fir_circular:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 141 | 
	i7 += 1			# LN: 141 | 
	i7 = i7 + (0x9)			# LN: 141 | 
	i0 = i7 - (0x1)			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	i0 = i7 - (0x2)			# LN: 141 | 
	xmem[i0] = a1h			# LN: 141 | 
cline_141_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 145 | 
	a0 = xmem[i0]			# LN: 145 | 
	a0 = a0 << 8			# LN: 145 | 
	a0 = a0 >> 1			# LN: 145 | 
	a0l = (0x0)			# LN: 145 | 
	i0 = a0			# LN: 145 | 
	i1 = i7 - (0x3)			# LN: 145 | 
	i0 = i0 + (_history_global + 0)			# LN: 145 | 
	xmem[i1] = i0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	i0 = a0			# LN: 146 | 
	i1 = i7 - (0x4)			# LN: 146 | 
	i0 = i0 + (_p_state_global + 0)			# LN: 146 | 
	xmem[i1] = i0			# LN: 146 | 
cline_146_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	i0 = i7 - (0x5)			# LN: 152 | 
	xmem[i0] = a0			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 153 | 
	uhalfword(a0) = (_coeffs + 0)			# LN: 153 | 
	xmem[i0] = a0			# LN: 153 | 
cline_153_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	i1 = i7 - (0x7)			# LN: 155 | 
	a0 = xmem[i0]			# LN: 155 | 
	xmem[i1] = a0h			# LN: 155 | 
cline_155_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 160 | 
	a0 = xmem[i0]			# LN: 160 | 
	i0 = i7 - (0x5)			# LN: 160 | 
	a1 = xmem[i0]			# LN: 160 | 
	a0 = a1 + a0			# LN: 160 | 
	AnyReg(i0, a0h)			# LN: 160 | 
	i1 = i7 - (0x5)			# LN: 160 | 
	xmem[i1] = i0			# LN: 160 | 
cline_160_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 161 | 
	i1 = i7 - (0x5)			# LN: 161 | 
	i1 = xmem[i1]			# LN: 161 | 
	a0 = xmem[i0]			# LN: 161 | 
	xmem[i1] = a0h			# LN: 161 | 
cline_161_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 163 | 
	a0 = xmem[i0]			# LN: 163 | 
	uhalfword(a1) = (0x1)			# LN: 163 | 
	a0 = a0 + a1			# LN: 163 | 
	i0 = i7 - (0x7)			# LN: 163 | 
	xmem[i0] = a0h			# LN: 163 | 
	i0 = i7 - (0x7)			# LN: 163 | 
	a0 = xmem[i0]			# LN: 163 | 
	uhalfword(a1) = (0x80)			# LN: 163 | 
	a0 = a0 - a1			# LN: 163 | 
	if (a < 0) jmp (else_0)			# LN: 163 | 
cline_163_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 166 | 
	a0 = 0			# LN: 166 | 
	xmem[i0] = a0h			# LN: 166 | 
	jmp (endif_0)			# LN: 166 | 
cline_166_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 170 | 
	a0 = 0			# LN: 170 | 
	xmem[i0] = a0h			# LN: 170 | 
cline_170_0:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 173 | 
	uhalfword(a0) = (_coeffs + 127)			# LN: 173 | 
	xmem[i0] = a0			# LN: 173 | 
cline_173_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 174 | 
	a0 = 0			# LN: 174 | 
	xmem[i0] = a0h			# LN: 174 | 
	do (0x80), label_end_92			# LN: 174 | 
cline_174_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 176 | 
	a0 = xmem[i0]			# LN: 176 | 
	i0 = i7 - (0x3)			# LN: 176 | 
	a1 = xmem[i0]			# LN: 176 | 
	a0 = a1 + a0			# LN: 176 | 
	AnyReg(i0, a0h)			# LN: 176 | 
	i1 = i7 - (0x5)			# LN: 176 | 
	xmem[i1] = i0			# LN: 176 | 
cline_176_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	i1 = i7 - (0x5)			# LN: 177 | 
	x0 = ymem[i0]			# LN: 177 | 
	i0 = xmem[i1]			# LN: 177 | 
	i1 = i7 - (0x8)			# LN: 177 | 
	a0 = xmem[i1]			# LN: 177 | 
	x1 = xmem[i0]			# LN: 177 | 
	a0 += x0 * x1			# LN: 177 | 
	i0 = i7 - (0x8)			# LN: 177 | 
	xmem[i0] = a0h			# LN: 177 | 
cline_177_0:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 179 | 
	a0 = xmem[i0]			# LN: 179 | 
	uhalfword(a1) = (0x1)			# LN: 179 | 
	a0 = a0 + a1			# LN: 179 | 
	i0 = i7 - (0x7)			# LN: 179 | 
	xmem[i0] = a0h			# LN: 179 | 
	i0 = i7 - (0x7)			# LN: 179 | 
	a0 = xmem[i0]			# LN: 179 | 
	uhalfword(a1) = (0x80)			# LN: 179 | 
	a0 = a0 - a1			# LN: 179 | 
	if (a < 0) jmp (else_1)			# LN: 179 | 
cline_179_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 181 | 
	a0 = 0			# LN: 181 | 
	xmem[i0] = a0h			# LN: 181 | 
	jmp (endif_1)			# LN: 181 | 
cline_181_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	i1 = i7 - (0x6)			# LN: 184 | 
	i0 -= 1			# LN: 184 | 
	xmem[i1] = i0			# LN: 184 | 
cline_184_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 174 | 
	a0 = xmem[i0]			# LN: 174 | 
	uhalfword(a1) = (0x1)			# LN: 174 | 
	a0 = a0 + a1			# LN: 174 | 
	i0 = i7 - (0x9)			# LN: 174 | 
label_end_92:			# LN: 174 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 174 | 
cline_174_1:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 189 | 
	i1 = i7 - (0x4)			# LN: 189 | 
	i1 = xmem[i1]			# LN: 189 | 
	a0 = xmem[i0]			# LN: 189 | 
	xmem[i1] = a0h			# LN: 189 | 
cline_189_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 192 | 
	a0 = xmem[i0]			# LN: 192 | 
	jmp (__epilogue_212)			# LN: 192 | 
cline_192_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
__epilogue_212:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x9)			# LN: 196 | 
	i7 -= 1			# LN: 196 | 
	ret			# LN: 196 | 



_processing:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 200 | 
	i7 += 1			# LN: 200 | 
	i7 = i7 + (0x4)			# LN: 200 | 
	i4 = i7 - (0x1)			# LN: 200 | 
	xmem[i4] = i0			# LN: 200 | 
	i0 = i7 - (0x2)			# LN: 200 | 
	xmem[i0] = i1			# LN: 200 | 
cline_200_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 204 | 
	i0 = i7 - (0x3)			# LN: 204 | 
	xmem[i0] = a0h			# LN: 204 | 
cline_204_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 211 | 
	a0 = 0			# LN: 211 | 
	xmem[i0] = a0h			# LN: 211 | 
	do (0x10), label_end_93			# LN: 211 | 
cline_211_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 213 | 
	i0 = xmem[i0]			# LN: 213 | 
	i1 = i7 - (0x4)			# LN: 213 | 
	a0 = xmem[i1]			# LN: 213 | 
	a1 = i0			# LN: 213 | 
	i0 = i7 - (0x1)			# LN: 213 | 
	i0 = xmem[i0]			# LN: 213 | 
	i1 = i7 - (0x4)			# LN: 213 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 213, 213 | 
	a1 = i0			# LN: 213 | 
	a1 = a1 + b0			# LN: 213 | 
	AnyReg(i0, a1h)			# LN: 213 | 
	AnyReg(i1, a0h)			# LN: 213 | 
	x0 = ymem[i0]			# LN: 213 | 
	i0 = i7 - (0x3)			# LN: 213 | 
	x1 = xmem[i0]			# LN: 213 | 
	a0 = x0 * x1			# LN: 213 | 
	ymem[i1] = a0			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 214 | 
	i0 = xmem[i0]			# LN: 214 | 
	i1 = i7 - (0x4)			# LN: 214 | 
	i0 = i0 + (0x10)			# LN: 214 | 
	a0 = xmem[i1]			# LN: 214 | 
	i1 = i7 - (0x1)			# LN: 214 | 
	i1 = xmem[i1]			# LN: 214 | 
	a1 = i0			# LN: 214 | 
	i0 = i1 + (0x10)			# LN: 214 | 
	i1 = i7 - (0x4)			# LN: 214 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 214, 214 | 
	a1 = i0			# LN: 214 | 
	a1 = a1 + b0			# LN: 214 | 
	AnyReg(i0, a1h)			# LN: 214 | 
	AnyReg(i1, a0h)			# LN: 214 | 
	x0 = ymem[i0]			# LN: 214 | 
	i0 = i7 - (0x3)			# LN: 214 | 
	x1 = xmem[i0]			# LN: 214 | 
	a0 = x0 * x1			# LN: 214 | 
	ymem[i1] = a0			# LN: 214 | 
cline_214_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 224 | 
	i0 = xmem[i0]			# LN: 224 | 
	i1 = i7 - (0x4)			# LN: 224 | 
	i4 = i7 - (0x1)			# LN: 224 | 
	i4 = xmem[i4]			# LN: 224 | 
	i5 = i7 - (0x4)			# LN: 224 | 
	a0 = xmem[i5]; a1 = 0			# LN: 224, 224 | 
	b0 = i4			# LN: 224 | 
	b1 = xmem[i1]; a0 = a0 + b0			# LN: 224, 224 | 
	AnyReg(i1, a0h)			# LN: 224 | 
	a0 = i0			# LN: 224 | 
	a0 = ymem[i1]; b0 = b1 + a0			# LN: 224, 224 | 
	AnyReg(i4, b0h)			# LN: 224 | 
	call (_fir_circular)			# LN: 224 | 
	xmem[i4] = a0h			# LN: 224 | 
cline_224_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	i1 = i7 - (0x4)			# LN: 225 | 
	i0 = i0 + (0x10)			# LN: 225 | 
	a0 = xmem[i1]			# LN: 225 | 
	a1 = i0			# LN: 225 | 
	i0 = i7 - (0x1)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	i1 = i7 - (0x4)			# LN: 225 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 225, 225 | 
	a1 = i0			# LN: 225 | 
	a1 = a1 + b0			# LN: 225 | 
	AnyReg(i0, a1h)			# LN: 225 | 
	AnyReg(i1, a0h)			# LN: 225 | 
	a0 = ymem[i0]			# LN: 225 | 
	xmem[i1] = a0h			# LN: 225 | 
cline_225_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	i1 = i7 - (0x4)			# LN: 226 | 
	i0 = i0 + (0x20)			# LN: 226 | 
	a0 = xmem[i1]			# LN: 226 | 
	a1 = i0			# LN: 226 | 
	a0 = a1 + a0			# LN: 226 | 
	AnyReg(i0, a0h)			# LN: 226 | 
	i1 = i7 - (0x1)			# LN: 226 | 
	i1 = xmem[i1]			# LN: 226 | 
	i4 = i7 - (0x4)			# LN: 226 | 
	a0 = xmem[i4]			# LN: 226 | 
	a1 = i1			# LN: 226 | 
	a0 = a1 + a0			# LN: 226 | 
	i1 = i7 - (0x1)			# LN: 226 | 
	i1 = xmem[i1]			# LN: 226 | 
	AnyReg(i4, a0h)			# LN: 226 | 
	i1 = i1 + (0x10)			# LN: 226 | 
	i5 = i7 - (0x4)			# LN: 226 | 
	a0 = xmem[i5]			# LN: 226 | 
	a1 = i1			# LN: 226 | 
	a1 = ymem[i4]; a0 = a1 + a0			# LN: 226, 226 | 
	AnyReg(i1, a0h)			# LN: 226 | 
	nop #empty cycle
	a0 = ymem[i1]			# LN: 226 | 
	a0 = a1 + a0			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
cline_226_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	i1 = i7 - (0x4)			# LN: 227 | 
	i0 = i0 + (0x30)			# LN: 227 | 
	a0 = xmem[i1]			# LN: 227 | 
	i1 = i7 - (0x1)			# LN: 227 | 
	i1 = xmem[i1]			# LN: 227 | 
	a1 = i0			# LN: 227 | 
	i0 = i1 + (0x10)			# LN: 227 | 
	i1 = i7 - (0x4)			# LN: 227 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 227, 227 | 
	a1 = i0			# LN: 227 | 
	a1 = a1 + b0			# LN: 227 | 
	AnyReg(i0, a1h)			# LN: 227 | 
	AnyReg(i1, a0h)			# LN: 227 | 
	a0 = ymem[i0]			# LN: 227 | 
	xmem[i1] = a0h			# LN: 227 | 
cline_227_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	i1 = i7 - (0x1)			# LN: 228 | 
	i0 = i0 + (0x40)			# LN: 228 | 
	i1 = xmem[i1]			# LN: 228 | 
	i4 = i7 - (0x4)			# LN: 228 | 
	i1 = i1 + (0x10)			# LN: 228 | 
	i5 = i7 - (0x4)			# LN: 228 | 
	a0 = xmem[i5]			# LN: 228 | 
	a1 = i1			# LN: 228 | 
	b0 = xmem[i4]; a0 = a1 + a0			# LN: 228, 228 | 
	AnyReg(i1, a0h)			# LN: 228 | 
	a0 = i0			# LN: 228 | 
	a0 = ymem[i1]; b0 = b0 + a0			# LN: 228, 228 | 
	uhalfword(a1) = (0x1)			# LN: 228 | 
	AnyReg(i4, b0h)			# LN: 228 | 
	call (_fir_circular)			# LN: 228 | 
	xmem[i4] = a0h			# LN: 228 | 
cline_228_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 229 | 
	i0 = xmem[i0]			# LN: 229 | 
	i1 = i7 - (0x4)			# LN: 229 | 
	i0 = i0 + (0x50)			# LN: 229 | 
	a0 = xmem[i1]			# LN: 229 | 
	a1 = i0			# LN: 229 | 
	a0 = a1 + a0			# LN: 229 | 
	i0 = i7 - (0x2)			# LN: 229 | 
	i0 = xmem[i0]			# LN: 229 | 
	AnyReg(i1, a0h)			# LN: 229 | 
	i0 = i0 + (0x40)			# LN: 229 | 
	i4 = i7 - (0x4)			# LN: 229 | 
	a0 = xmem[i4]			# LN: 229 | 
	a1 = i0			# LN: 229 | 
	a0 = a1 + a0			# LN: 229 | 
	AnyReg(i0, a0h)			# LN: 229 | 
	i4 = i7 - (0x2)			# LN: 229 | 
	i4 = xmem[i4]			# LN: 229 | 
	i5 = i7 - (0x4)			# LN: 229 | 
	a0 = xmem[i5]			# LN: 229 | 
	a1 = i4			# LN: 229 | 
	a1 = xmem[i0]; a0 = a1 + a0			# LN: 229, 229 | 
	AnyReg(i0, a0h)			# LN: 229 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 229 | 
	a0 = a1 + a0			# LN: 229 | 
	xmem[i1] = a0h			# LN: 229 | 
cline_229_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 211 | 
	a0 = xmem[i0]			# LN: 211 | 
	uhalfword(a1) = (0x1)			# LN: 211 | 
	a0 = a0 + a1			# LN: 211 | 
	i0 = i7 - (0x4)			# LN: 211 | 
label_end_93:			# LN: 211 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 211 | 
cline_211_1:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_214)			# LN: 273 | 
__epilogue_214:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 273 | 
	i7 -= 1			# LN: 273 | 
	ret			# LN: 273 | 
