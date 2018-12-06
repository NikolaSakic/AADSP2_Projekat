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
cline_155_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 162 | 
	a0 = xmem[i0]			# LN: 162 | 
	i0 = i7 - (0x5)			# LN: 162 | 
	a1 = xmem[i0]			# LN: 162 | 
	a0 = a1 + a0			# LN: 162 | 
	AnyReg(i0, a0h)			# LN: 162 | 
	i1 = i7 - (0x5)			# LN: 162 | 
	xmem[i1] = i0			# LN: 162 | 
cline_162_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 163 | 
	i1 = i7 - (0x5)			# LN: 163 | 
	i1 = xmem[i1]			# LN: 163 | 
	a0 = xmem[i0]			# LN: 163 | 
	xmem[i1] = a0h			# LN: 163 | 
cline_163_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 166 | 
	a0 = xmem[i0]			# LN: 166 | 
	uhalfword(a1) = (0x1)			# LN: 166 | 
	a0 = a0 + a1			# LN: 166 | 
	i0 = i7 - (0x7)			# LN: 166 | 
	xmem[i0] = a0h			# LN: 166 | 
	i0 = i7 - (0x7)			# LN: 166 | 
	a0 = xmem[i0]			# LN: 166 | 
	uhalfword(a1) = (0x80)			# LN: 166 | 
	a0 = a0 - a1			# LN: 166 | 
	if (a < 0) jmp (else_0)			# LN: 166 | 
cline_166_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 168 | 
	a0 = 0			# LN: 168 | 
	xmem[i0] = a0h			# LN: 168 | 
	jmp (endif_0)			# LN: 168 | 
cline_168_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 172 | 
	a0 = 0			# LN: 172 | 
	xmem[i0] = a0h			# LN: 172 | 
cline_172_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 175 | 
	uhalfword(a0) = (_coeffs + 127)			# LN: 175 | 
	xmem[i0] = a0			# LN: 175 | 
cline_175_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 176 | 
	a0 = 0			# LN: 176 | 
	xmem[i0] = a0h			# LN: 176 | 
	do (0x80), label_end_92			# LN: 176 | 
cline_176_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 178 | 
	a0 = xmem[i0]			# LN: 178 | 
	i0 = i7 - (0x3)			# LN: 178 | 
	a1 = xmem[i0]			# LN: 178 | 
	a0 = a1 + a0			# LN: 178 | 
	AnyReg(i0, a0h)			# LN: 178 | 
	i1 = i7 - (0x5)			# LN: 178 | 
	xmem[i1] = i0			# LN: 178 | 
cline_178_0:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 179 | 
	i0 = xmem[i0]			# LN: 179 | 
	i1 = i7 - (0x5)			# LN: 179 | 
	x0 = ymem[i0]			# LN: 179 | 
	i0 = xmem[i1]			# LN: 179 | 
	i1 = i7 - (0x8)			# LN: 179 | 
	a0 = xmem[i1]			# LN: 179 | 
	x1 = xmem[i0]			# LN: 179 | 
	a0 += x0 * x1			# LN: 179 | 
	i0 = i7 - (0x8)			# LN: 179 | 
	xmem[i0] = a0h			# LN: 179 | 
cline_179_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 181 | 
	a0 = xmem[i0]			# LN: 181 | 
	uhalfword(a1) = (0x1)			# LN: 181 | 
	a0 = a0 + a1			# LN: 181 | 
	i0 = i7 - (0x7)			# LN: 181 | 
	xmem[i0] = a0h			# LN: 181 | 
	i0 = i7 - (0x7)			# LN: 181 | 
	a0 = xmem[i0]			# LN: 181 | 
	uhalfword(a1) = (0x80)			# LN: 181 | 
	a0 = a0 - a1			# LN: 181 | 
	if (a < 0) jmp (else_1)			# LN: 181 | 
cline_181_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 183 | 
	a0 = 0			# LN: 183 | 
	xmem[i0] = a0h			# LN: 183 | 
	jmp (endif_1)			# LN: 183 | 
cline_183_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 186 | 
	i0 = xmem[i0]			# LN: 186 | 
	i1 = i7 - (0x6)			# LN: 186 | 
	i0 -= 1			# LN: 186 | 
	xmem[i1] = i0			# LN: 186 | 
cline_186_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 176 | 
	a0 = xmem[i0]			# LN: 176 | 
	uhalfword(a1) = (0x1)			# LN: 176 | 
	a0 = a0 + a1			# LN: 176 | 
	i0 = i7 - (0x9)			# LN: 176 | 
label_end_92:			# LN: 176 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 176 | 
cline_176_1:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 224 | 
	i1 = i7 - (0x4)			# LN: 224 | 
	i1 = xmem[i1]			# LN: 224 | 
	a0 = xmem[i0]			# LN: 224 | 
	xmem[i1] = a0h			# LN: 224 | 
cline_224_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	jmp (__epilogue_212)			# LN: 234 | 
cline_234_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
__epilogue_212:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x9)			# LN: 238 | 
	i7 -= 1			# LN: 238 | 
	ret			# LN: 238 | 



_processing:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 242 | 
	i7 += 1			# LN: 242 | 
	i7 = i7 + (0x4)			# LN: 242 | 
	i4 = i7 - (0x1)			# LN: 242 | 
	xmem[i4] = i0			# LN: 242 | 
	i0 = i7 - (0x2)			# LN: 242 | 
	xmem[i0] = i1			# LN: 242 | 
cline_242_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 246 | 
	i0 = i7 - (0x3)			# LN: 246 | 
	xmem[i0] = a0h			# LN: 246 | 
cline_246_0:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 253 | 
	a0 = 0			# LN: 253 | 
	xmem[i0] = a0h			# LN: 253 | 
	do (0x10), label_end_93			# LN: 253 | 
cline_253_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	i1 = i7 - (0x4)			# LN: 255 | 
	a0 = xmem[i1]			# LN: 255 | 
	a1 = i0			# LN: 255 | 
	i0 = i7 - (0x1)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	i1 = i7 - (0x4)			# LN: 255 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 255, 255 | 
	a1 = i0			# LN: 255 | 
	a1 = a1 + b0			# LN: 255 | 
	AnyReg(i0, a1h)			# LN: 255 | 
	AnyReg(i1, a0h)			# LN: 255 | 
	x0 = ymem[i0]			# LN: 255 | 
	i0 = i7 - (0x3)			# LN: 255 | 
	x1 = xmem[i0]			# LN: 255 | 
	a0 = x0 * x1			# LN: 255 | 
	ymem[i1] = a0			# LN: 255 | 
cline_255_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	i1 = i7 - (0x4)			# LN: 256 | 
	i0 = i0 + (0x10)			# LN: 256 | 
	a0 = xmem[i1]			# LN: 256 | 
	i1 = i7 - (0x1)			# LN: 256 | 
	i1 = xmem[i1]			# LN: 256 | 
	a1 = i0			# LN: 256 | 
	i0 = i1 + (0x10)			# LN: 256 | 
	i1 = i7 - (0x4)			# LN: 256 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 256, 256 | 
	a1 = i0			# LN: 256 | 
	a1 = a1 + b0			# LN: 256 | 
	AnyReg(i0, a1h)			# LN: 256 | 
	AnyReg(i1, a0h)			# LN: 256 | 
	x0 = ymem[i0]			# LN: 256 | 
	i0 = i7 - (0x3)			# LN: 256 | 
	x1 = xmem[i0]			# LN: 256 | 
	a0 = x0 * x1			# LN: 256 | 
	ymem[i1] = a0			# LN: 256 | 
cline_256_0:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 266 | 
	i0 = xmem[i0]			# LN: 266 | 
	i1 = i7 - (0x4)			# LN: 266 | 
	i4 = i7 - (0x1)			# LN: 266 | 
	i4 = xmem[i4]			# LN: 266 | 
	i5 = i7 - (0x4)			# LN: 266 | 
	a0 = xmem[i5]; a1 = 0			# LN: 266, 266 | 
	b0 = i4			# LN: 266 | 
	b1 = xmem[i1]; a0 = a0 + b0			# LN: 266, 266 | 
	AnyReg(i1, a0h)			# LN: 266 | 
	a0 = i0			# LN: 266 | 
	a0 = ymem[i1]; b0 = b1 + a0			# LN: 266, 266 | 
	AnyReg(i4, b0h)			# LN: 266 | 
	call (_fir_circular)			# LN: 266 | 
	xmem[i4] = a0h			# LN: 266 | 
cline_266_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 267 | 
	i0 = xmem[i0]			# LN: 267 | 
	i1 = i7 - (0x4)			# LN: 267 | 
	i0 = i0 + (0x10)			# LN: 267 | 
	a0 = xmem[i1]			# LN: 267 | 
	a1 = i0			# LN: 267 | 
	i0 = i7 - (0x1)			# LN: 267 | 
	i0 = xmem[i0]			# LN: 267 | 
	i1 = i7 - (0x4)			# LN: 267 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 267, 267 | 
	a1 = i0			# LN: 267 | 
	a1 = a1 + b0			# LN: 267 | 
	AnyReg(i0, a1h)			# LN: 267 | 
	AnyReg(i1, a0h)			# LN: 267 | 
	a0 = ymem[i0]			# LN: 267 | 
	xmem[i1] = a0h			# LN: 267 | 
cline_267_0:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 268 | 
	i0 = xmem[i0]			# LN: 268 | 
	i1 = i7 - (0x4)			# LN: 268 | 
	i0 = i0 + (0x20)			# LN: 268 | 
	a0 = xmem[i1]			# LN: 268 | 
	a1 = i0			# LN: 268 | 
	a0 = a1 + a0			# LN: 268 | 
	AnyReg(i0, a0h)			# LN: 268 | 
	i1 = i7 - (0x1)			# LN: 268 | 
	i1 = xmem[i1]			# LN: 268 | 
	i4 = i7 - (0x4)			# LN: 268 | 
	a0 = xmem[i4]			# LN: 268 | 
	a1 = i1			# LN: 268 | 
	a0 = a1 + a0			# LN: 268 | 
	i1 = i7 - (0x1)			# LN: 268 | 
	i1 = xmem[i1]			# LN: 268 | 
	AnyReg(i4, a0h)			# LN: 268 | 
	i1 = i1 + (0x10)			# LN: 268 | 
	i5 = i7 - (0x4)			# LN: 268 | 
	a0 = xmem[i5]			# LN: 268 | 
	a1 = i1			# LN: 268 | 
	a1 = ymem[i4]; a0 = a1 + a0			# LN: 268, 268 | 
	AnyReg(i1, a0h)			# LN: 268 | 
	nop #empty cycle
	a0 = ymem[i1]			# LN: 268 | 
	a0 = a1 + a0			# LN: 268 | 
	xmem[i0] = a0h			# LN: 268 | 
cline_268_0:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 269 | 
	i0 = xmem[i0]			# LN: 269 | 
	i1 = i7 - (0x4)			# LN: 269 | 
	i0 = i0 + (0x30)			# LN: 269 | 
	a0 = xmem[i1]			# LN: 269 | 
	i1 = i7 - (0x1)			# LN: 269 | 
	i1 = xmem[i1]			# LN: 269 | 
	a1 = i0			# LN: 269 | 
	i0 = i1 + (0x10)			# LN: 269 | 
	i1 = i7 - (0x4)			# LN: 269 | 
	b0 = xmem[i1]; a0 = a1 + a0			# LN: 269, 269 | 
	a1 = i0			# LN: 269 | 
	a1 = a1 + b0			# LN: 269 | 
	AnyReg(i0, a1h)			# LN: 269 | 
	AnyReg(i1, a0h)			# LN: 269 | 
	a0 = ymem[i0]			# LN: 269 | 
	xmem[i1] = a0h			# LN: 269 | 
cline_269_0:			/* LN: 270 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 270 | 
	i0 = xmem[i0]			# LN: 270 | 
	i1 = i7 - (0x1)			# LN: 270 | 
	i0 = i0 + (0x40)			# LN: 270 | 
	i1 = xmem[i1]			# LN: 270 | 
	i4 = i7 - (0x4)			# LN: 270 | 
	i1 = i1 + (0x10)			# LN: 270 | 
	i5 = i7 - (0x4)			# LN: 270 | 
	a0 = xmem[i5]			# LN: 270 | 
	a1 = i1			# LN: 270 | 
	b0 = xmem[i4]; a0 = a1 + a0			# LN: 270, 270 | 
	AnyReg(i1, a0h)			# LN: 270 | 
	a0 = i0			# LN: 270 | 
	a0 = ymem[i1]; b0 = b0 + a0			# LN: 270, 270 | 
	uhalfword(a1) = (0x1)			# LN: 270 | 
	AnyReg(i4, b0h)			# LN: 270 | 
	call (_fir_circular)			# LN: 270 | 
	xmem[i4] = a0h			# LN: 270 | 
cline_270_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	i1 = i7 - (0x4)			# LN: 271 | 
	i0 = i0 + (0x50)			# LN: 271 | 
	a0 = xmem[i1]			# LN: 271 | 
	a1 = i0			# LN: 271 | 
	a0 = a1 + a0			# LN: 271 | 
	i0 = i7 - (0x2)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	AnyReg(i1, a0h)			# LN: 271 | 
	i0 = i0 + (0x40)			# LN: 271 | 
	i4 = i7 - (0x4)			# LN: 271 | 
	a0 = xmem[i4]			# LN: 271 | 
	a1 = i0			# LN: 271 | 
	a0 = a1 + a0			# LN: 271 | 
	AnyReg(i0, a0h)			# LN: 271 | 
	i4 = i7 - (0x2)			# LN: 271 | 
	i4 = xmem[i4]			# LN: 271 | 
	i5 = i7 - (0x4)			# LN: 271 | 
	a0 = xmem[i5]			# LN: 271 | 
	a1 = i4			# LN: 271 | 
	a1 = xmem[i0]; a0 = a1 + a0			# LN: 271, 271 | 
	AnyReg(i0, a0h)			# LN: 271 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 271 | 
	a0 = a1 + a0			# LN: 271 | 
	xmem[i1] = a0h			# LN: 271 | 
cline_271_0:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 253 | 
	a0 = xmem[i0]			# LN: 253 | 
	uhalfword(a1) = (0x1)			# LN: 253 | 
	a0 = a0 + a1			# LN: 253 | 
	i0 = i7 - (0x4)			# LN: 253 | 
label_end_93:			# LN: 253 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 253 | 
cline_253_1:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_214)			# LN: 315 | 
__epilogue_214:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 315 | 
	i7 -= 1			# LN: 315 | 
	ret			# LN: 315 | 
