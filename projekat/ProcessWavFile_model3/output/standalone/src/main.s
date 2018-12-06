	.public _MAT_OUTPUT_GAIN
	.public _data
	.public _gENABLE
	.public _gOUTPUT_GAIN
	.public _input
	.public _output
	.public _outputPtr
	.public _outputSampleBuffer
	.public _sampleBuffer
	.public _samplePtr
	.public _strings
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
	.public _mixerNxM_init
	.public _mixerNxM_processing
	.extern _printf
	.extern _strcpy
	.extern __div
	.xdata_ovly
_MAT_OUTPUT_GAIN
	.dw  (0x32f52b91)
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x7fffffff)
	.xdata_ovly
__extractedConst_1_0
	.dw  (0x32f52b91)
	.xdata_ovly
_data
	.bss (0x10)
	.ydata_ovly
_gENABLE
	.dw  (0x0)
	.ydata_ovly
_gOUTPUT_GAIN
	.dw  (0x7fffffff)
	.xdata_ovly
_input
	.bss (0x1)
	.xdata_ovly
_output
	.bss (0x1)
	.xdata_ovly
_outputPtr
	.bss (0x6)
	.xdata_ovly
_outputSampleBuffer
	.bss (0x60)
	.xdata_ovly
_sampleBuffer
	.bss (0x60)
	.xdata_ovly
_samplePtr
	.bss (0x6)
	.xdata_ovly
_string_const_0
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x31)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_4
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x31)
	.dw  (0x0)
	.xdata_ovly
_string_const_5
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
_string_const_6
	.dw  (0x50)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x20)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x76)
	.dw  (0x61)
	.dw  (0x6c)
	.dw  (0x69)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x61)
	.dw  (0x72)
	.dw  (0x67)
	.dw  (0x75)
	.dw  (0x6d)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x73)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_7
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x20)
	.dw  (0x6d)
	.dw  (0x69)
	.dw  (0x78)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x5f)
	.dw  (0x67)
	.dw  (0x61)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x5b)
	.dw  (0x64)
	.dw  (0x42)
	.dw  (0x5d)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x20)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x61)
	.dw  (0x62)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_8
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
_strings
	.dw _string_const_0
	.dw _string_const_1
	.dw _string_const_2
	.dw _string_const_3
	.dw _string_const_4
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

_main:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 121 | 
	i7 += 1			# LN: 121 | 
	i7 = i7 + (0x318)			# LN: 121 | 
	i1 = i7 - (0x1)			# LN: 121 | 
	xmem[i1] = a0h			# LN: 121 | 
	i1 = i7 - (0x2)			# LN: 121 | 
	xmem[i1] = i0			# LN: 121 | 
cline_121_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 142 | 
	a0 = 0			# LN: 142 | 
	xmem[i0] = a0h			# LN: 142 | 
	do (0x8), label_end_98			# LN: 142 | 
cline_142_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 145 | 
	a0 = 0			# LN: 145 | 
	xmem[i0] = a0h			# LN: 145 | 
	do (0x10), label_end_97			# LN: 145 | 
cline_145_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 147 | 
	a0 = xmem[i0]; a1 = 0			# LN: 147, 147 | 
	a0 = a0 << 4			# LN: 147 | 
	i0 = a0			# LN: 147 | 
	i1 = i7 - (0x4)			# LN: 147 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 147 | 
	a0 = xmem[i1]			# LN: 147 | 
	b0 = i0			# LN: 147 | 
	a0 = a0 + b0			# LN: 147 | 
	AnyReg(i0, a0h)			# LN: 147 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 148 | 
	a0 = xmem[i0]; a1 = 0			# LN: 148, 148 | 
	a0 = a0 << 4			# LN: 148 | 
	i0 = a0			# LN: 148 | 
	i1 = i7 - (0x4)			# LN: 148 | 
	i0 = i0 + (_outputSampleBuffer + 0)			# LN: 148 | 
	a0 = xmem[i1]			# LN: 148 | 
	b0 = i0			# LN: 148 | 
	a0 = a0 + b0			# LN: 148 | 
	AnyReg(i0, a0h)			# LN: 148 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 148 | 
cline_148_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 145 | 
	a0 = xmem[i0]			# LN: 145 | 
	uhalfword(a1) = (0x1)			# LN: 145 | 
	a0 = a0 + a1			# LN: 145 | 
	i0 = i7 - (0x4)			# LN: 145 | 
label_end_97:			# LN: 145 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 145 | 
cline_145_1:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 151 | 
	a0 = xmem[i0]			# LN: 151 | 
	i0 = i7 - (0x3)			# LN: 151 | 
	a1 = xmem[i0]			# LN: 151 | 
	i0 = a0; a1 = a1 << 4			# LN: 151, 151 | 
	i1 = a1			# LN: 151 | 
	i0 = i0 + (_samplePtr + 0)			# LN: 151 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 151 | 
	xmem[i0] = i1			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	i0 = i7 - (0x3)			# LN: 152 | 
	a1 = xmem[i0]			# LN: 152 | 
	i0 = a0; a1 = a1 << 4			# LN: 152, 152 | 
	i1 = a1			# LN: 152 | 
	i0 = i0 + (_outputPtr + 0)			# LN: 152 | 
	i1 = i1 + (_outputSampleBuffer + 0)			# LN: 152 | 
	xmem[i0] = i1			# LN: 152 | 
cline_152_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 142 | 
	a0 = xmem[i0]			# LN: 142 | 
	uhalfword(a1) = (0x1)			# LN: 142 | 
	a0 = a0 + a1			# LN: 142 | 
	i0 = i7 - (0x3)			# LN: 142 | 
label_end_98:			# LN: 142 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 142 | 
cline_142_1:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 157 | 
	i0 = xmem[i0]			# LN: 157 | 
	i1 = i7 - (260 - 0)			# LN: 157 | 
	i4 = xmem[i0]			# LN: 157 | 
	i0 = i1			# LN: 157 | 
	i1 = i4			# LN: 157 | 
	call (_strcpy)			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 158 | 
	call (_cl_wavread_open)			# LN: 158 | 
	AnyReg(i0, a0h)			# LN: 158 | 
	i1 = i7 - (0x105)			# LN: 158 | 
	xmem[i1] = i0			# LN: 158 | 
cline_158_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 159 | 
	a0 = xmem[i0]			# LN: 159 | 
	a0 & a0			# LN: 159 | 
	if (a != 0) jmp (else_2)			# LN: 159 | 
cline_159_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_5)			# LN: 161 | 
	call (_printf)			# LN: 161 | 
cline_161_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 162 | 
	jmp (__epilogue_224)			# LN: 162 | 
cline_162_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 169 | 
	a0 = xmem[i0]			# LN: 169 | 
	uhalfword(a1) = (0x2)			# LN: 169 | 
	a0 - a1			# LN: 169 | 
	if (a != 0) jmp (else_3)			# LN: 169 | 
cline_169_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 172 | 
	ymem[_gENABLE + 0] = a0h			# LN: 172 | 
cline_172_0:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	a0 = (0x8000)			# LN: 173 | 
	ymem[_gOUTPUT_GAIN + 0] = a0h			# LN: 173 | 
	jmp (endif_3)			# LN: 173 | 
cline_173_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 175 | 
	a0 = xmem[i0]			# LN: 175 | 
	uhalfword(a1) = (0x5)			# LN: 175 | 
	a0 - a1			# LN: 175 | 
	if (a != 0) jmp (cline_175_0)			# LN: 175 | 
	i0 = i7 - (0x1)			# LN: 175 | 
	a0 = xmem[i0]			# LN: 175 | 
	uhalfword(a1) = (0x5)			# LN: 175 | 
	a0 - a1			# LN: 175 | 
	if (a <= 0) jmp (else_4)			# LN: 175 | 
cline_175_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_6)			# LN: 177 | 
	call (_printf)			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_7)			# LN: 178 | 
	call (_printf)			# LN: 178 | 
cline_178_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 180 | 
	jmp (__epilogue_224)			# LN: 180 | 
cline_180_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	i1 = i7 - (517 - 0)			# LN: 184 | 
	i0 = i0 + (0x3)			# LN: 184 | 
	i4 = xmem[i0]			# LN: 184 | 
	i0 = i1			# LN: 184 | 
	i1 = i4			# LN: 184 | 
	call (_strcpy)			# LN: 184 | 
cline_184_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 190 | 
	i0 = xmem[i0]			# LN: 190 | 
	i1 = i7 - (525 - 0)			# LN: 190 | 
	i0 = i0 + (0x4)			# LN: 190 | 
	i4 = xmem[i0]			# LN: 190 | 
	i0 = i1			# LN: 190 | 
	i1 = i4			# LN: 190 | 
	call (_strcpy)			# LN: 190 | 
cline_190_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	i1 = i7 - (527 - 0)			# LN: 191 | 
	i0 = i0 + (0x5)			# LN: 191 | 
	i4 = xmem[i0]			# LN: 191 | 
	i0 = i1			# LN: 191 | 
	i1 = i4			# LN: 191 | 
	call (_strcpy)			# LN: 191 | 
cline_191_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 198 | 
	i0 = xmem[i0]			# LN: 198 | 
	call (_cl_wavread_getnchannels)			# LN: 198 | 
	i0 = i7 - (0x210)			# LN: 198 | 
	xmem[i0] = a0h			# LN: 198 | 
cline_198_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 199 | 
	i0 = xmem[i0]			# LN: 199 | 
	call (_cl_wavread_bits_per_sample)			# LN: 199 | 
	i0 = i7 - (0x211)			# LN: 199 | 
	xmem[i0] = a0h			# LN: 199 | 
cline_199_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 200 | 
	i0 = xmem[i0]			# LN: 200 | 
	call (_cl_wavread_frame_rate)			# LN: 200 | 
	i0 = i7 - (0x212)			# LN: 200 | 
	xmem[i0] = a0h			# LN: 200 | 
cline_200_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 201 | 
	i0 = xmem[i0]			# LN: 201 | 
	call (_cl_wavread_number_of_frames)			# LN: 201 | 
	i0 = i7 - (0x213)			# LN: 201 | 
	xmem[i0] = a0h			# LN: 201 | 
cline_201_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 206 | 
	i0 = xmem[i0]			# LN: 206 | 
	i1 = i7 - (787 - 0)			# LN: 206 | 
	i0 += 1			# LN: 206 | 
	i4 = xmem[i0]			# LN: 206 | 
	i0 = i1			# LN: 206 | 
	i1 = i4			# LN: 206 | 
	call (_strcpy)			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (787 - 0)			# LN: 207 | 
	i1 = i7 - (0x211)			# LN: 207 | 
	a0 = xmem[i1]			# LN: 207 | 
	uhalfword(a1) = (0x6)			# LN: 207 | 
	i1 = i7 - (0x212)			# LN: 207 | 
	b0 = xmem[i1]			# LN: 207 | 
	call (_cl_wavwrite_open)			# LN: 207 | 
	AnyReg(i0, a0h)			# LN: 207 | 
	i1 = i7 - (0x314)			# LN: 207 | 
	xmem[i1] = i0			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x314)			# LN: 208 | 
	a0 = xmem[i0]			# LN: 208 | 
	a0 & a0			# LN: 208 | 
	if (a != 0) jmp (else_5)			# LN: 208 | 
cline_208_0:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_8)			# LN: 210 | 
	call (_printf)			# LN: 210 | 
cline_210_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 211 | 
	jmp (__epilogue_224)			# LN: 211 | 
cline_211_0:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	call (_mixerNxM_init)			# LN: 215 | 
cline_215_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x315)			# LN: 226 | 
	a0 = 0			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
for_11:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x213)			# LN: 226 | 
	a0 = xmem[i0]			# LN: 226 | 
	uhalfword(a1) = (0x10)			# LN: 226 | 
	call (__div)			# LN: 226 | 
	i0 = i7 - (0x315)			# LN: 226 | 
	a1 = xmem[i0]			# LN: 226 | 
	a1 - a0			# LN: 226 | 
	if (a >= 0) jmp (for_end_11)			# LN: 226 | 
cline_226_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x316)			# LN: 228 | 
	a0 = 0			# LN: 228 | 
	xmem[i0] = a0h			# LN: 228 | 
	do (0x10), label_end_99			# LN: 228 | 
cline_228_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
label_begin_99:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 230 | 
	a0 = 0			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
for_13:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 230 | 
	a0 = xmem[i0]			# LN: 230 | 
	i0 = i7 - (0x210)			# LN: 230 | 
	a1 = xmem[i0]			# LN: 230 | 
	a0 - a1			# LN: 230 | 
	if (a >= 0) jmp (for_end_13)			# LN: 230 | 
cline_230_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	call (_cl_wavread_recvsample)			# LN: 232 | 
	i0 = i7 - (0x318)			# LN: 232 | 
	xmem[i0] = a0h			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 233 | 
	a0 = xmem[i0]			# LN: 233 | 
	a0 = a0 << 4			# LN: 233 | 
	i0 = a0			# LN: 233 | 
	i1 = i7 - (0x316)			# LN: 233 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 233 | 
	a0 = xmem[i1]			# LN: 233 | 
	a1 = i0			# LN: 233 | 
	a0 = a1 + a0			# LN: 233 | 
	AnyReg(i0, a0h)			# LN: 233 | 
	i1 = i7 - (0x318)			# LN: 233 | 
	a0 = xmem[i1]			# LN: 233 | 
	xmem[i0] = a0h			# LN: 233 | 
cline_233_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 230 | 
	a0 = xmem[i0]			# LN: 230 | 
	uhalfword(a1) = (0x1)			# LN: 230 | 
	a0 = a0 + a1			# LN: 230 | 
	i0 = i7 - (0x317)			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
	jmp (for_13)			# LN: 230 | 
cline_230_1:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
init_latch_label_12:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
for_end_13:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x316)			# LN: 228 | 
	a0 = xmem[i0]			# LN: 228 | 
	uhalfword(a1) = (0x1)			# LN: 228 | 
	a0 = a0 + a1			# LN: 228 | 
	i0 = i7 - (0x316)			# LN: 228 | 
label_end_99:			# LN: 228 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 228 | 
cline_228_1:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
for_end_12:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	call (_mixerNxM_processing)			# LN: 239 | 
cline_239_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x316)			# LN: 242 | 
	a0 = 0			# LN: 242 | 
	xmem[i0] = a0h			# LN: 242 | 
	do (0x10), label_end_101			# LN: 242 | 
cline_242_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
label_begin_101:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 244 | 
	a0 = 0			# LN: 244 | 
	xmem[i0] = a0h			# LN: 244 | 
	do (0x6), label_end_100			# LN: 244 | 
cline_244_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
label_begin_100:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 246 | 
	a0 = xmem[i0]			# LN: 246 | 
	a0 = a0 << 4			# LN: 246 | 
	i0 = a0			# LN: 246 | 
	i1 = i7 - (0x316)			# LN: 246 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 246 | 
	a0 = xmem[i1]			# LN: 246 | 
	a1 = i0			# LN: 246 | 
	a0 = a1 + a0			# LN: 246 | 
	AnyReg(i0, a0h)			# LN: 246 | 
	i1 = i7 - (0x318)			# LN: 246 | 
	a0 = xmem[i0]			# LN: 246 | 
	xmem[i1] = a0h			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x314)			# LN: 247 | 
	i1 = i7 - (0x318)			# LN: 247 | 
	a0 = xmem[i1]			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	call (_cl_wavwrite_sendsample)			# LN: 247 | 
cline_247_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
init_latch_label_13:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x317)			# LN: 244 | 
	a0 = xmem[i0]			# LN: 244 | 
	uhalfword(a1) = (0x1)			# LN: 244 | 
	a0 = a0 + a1			# LN: 244 | 
	i0 = i7 - (0x317)			# LN: 244 | 
label_end_100:			# LN: 244 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 244 | 
cline_244_1:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
init_latch_label_14:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
for_end_15:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x316)			# LN: 242 | 
	a0 = xmem[i0]			# LN: 242 | 
	uhalfword(a1) = (0x1)			# LN: 242 | 
	a0 = a0 + a1			# LN: 242 | 
	i0 = i7 - (0x316)			# LN: 242 | 
label_end_101:			# LN: 242 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 242 | 
cline_242_1:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
init_latch_label_15:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
for_end_14:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x315)			# LN: 226 | 
	a0 = xmem[i0]			# LN: 226 | 
	uhalfword(a1) = (0x1)			# LN: 226 | 
	a0 = a0 + a1			# LN: 226 | 
	i0 = i7 - (0x315)			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
	jmp (for_11)			# LN: 226 | 
cline_226_1:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	call (_cl_wavread_close)			# LN: 255 | 
cline_255_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x314)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	call (_cl_wavwrite_close)			# LN: 256 | 
cline_256_0:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 259 | 
	jmp (__epilogue_224)			# LN: 259 | 
cline_259_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x318)			# LN: 260 | 
	i7 -= 1			# LN: 260 | 
	ret			# LN: 260 | 



_mixerNxM_init:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x2)			# LN: 12 | 
cline_12_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_gENABLE + 0]			# LN: 17 | 
	xmem[_data + 0] = a0h			# LN: 17 | 
cline_17_0:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 18 | 
	xmem[_data + 1] = a0h			# LN: 18 | 
cline_18_0:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x6)			# LN: 19 | 
	xmem[_data + 2] = a0h			# LN: 19 | 
cline_19_0:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 20 | 
	xmem[_data + 3] = a0h			# LN: 20 | 
cline_20_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 26 | 
	uhalfword(a0) = (_data + 4)			# LN: 26 | 
	xmem[i0] = a0			# LN: 26 | 
for_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 26 | 
	a0 = xmem[i0]			# LN: 26 | 
	uhalfword(a1) = (_data + 16)			# LN: 26 | 
	a0 - a1			# LN: 26 | 
	if (a >= 0) jmp (for_end_0)			# LN: 26 | 
cline_26_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 28 | 
	xmem[i0] = a0h			# LN: 28 | 
cline_28_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 26 | 
	i0 = xmem[i0]			# LN: 26 | 
	i1 = i7 - (0x1)			# LN: 26 | 
	i0 += 1			# LN: 26 | 
	xmem[i1] = i0			# LN: 26 | 
	jmp (for_0)			# LN: 26 | 
cline_26_1:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 31 | 
	a0 = 0			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
	i0 = (0) + (_outputPtr + 0)			# LN: 31 | 
	do (0x8), label_end_92			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x2)			# LN: 32 | 
	a0 = xmem[i1]			# LN: 32 | 
	i1 = i7 - (0x2)			# LN: 32 | 
	a1 = xmem[i1]			# LN: 32 | 
	i1 = a0; a1 = a1 << 4			# LN: 32, 32 | 
	i4 = a1			# LN: 32 | 
	i1 = i1 + (_samplePtr + 0)			# LN: 32 | 
	i4 = i4 + (_sampleBuffer + 0)			# LN: 32 | 
	xmem[i1] = i4			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x2)			# LN: 33 | 
	a0 = xmem[i1]			# LN: 33 | 
	a0 = a0 << 4			# LN: 33 | 
	i1 = a0			# LN: 33 | 
	nop #empty cycle
	i1 = i1 + (_outputSampleBuffer + 0)			# LN: 33 | 
	xmem[i0] = i1			# LN: 33 | 
cline_33_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x2)			# LN: 31 | 
	a0 = xmem[i1]			# LN: 31 | 
	uhalfword(a1) = (0x1)			# LN: 31 | 
	i0 += 1; a0 = a0 + a1			# LN: 31, 31 | 
	i1 = i7 - (0x2)			# LN: 31 | 
label_end_92:			# LN: 31 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 31 | 
cline_31_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_samplePtr + 0)			# LN: 36 | 
	xmem[_input + 0] = i0			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_outputPtr + 0)			# LN: 37 | 
	xmem[_output + 0] = i0			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 38 | 
__epilogue_220:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 38 | 
	i7 -= 1			# LN: 38 | 
	ret			# LN: 38 | 



_mixerNxM_processing:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 48 | 
	i7 += 1			# LN: 48 | 
	i7 = i7 + (0x7)			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 50 | 
	a0 = 0			# LN: 50 | 
	xmem[i0] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 51 | 
	a0 = 0			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 52 | 
	a0 = 0			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 55 | 
	uhalfword(a0) = (_data + 4)			# LN: 55 | 
	xmem[i0] = a0			# LN: 55 | 
cline_55_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_data + 0]			# LN: 59 | 
	a0 & a0			# LN: 59 | 
	if (a != 0) jmp (else_0)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 61 | 
	a0 = 0			# LN: 61 | 
	xmem[i0] = a0h			# LN: 61 | 
	i0 = xmem[_output + 0]			# LN: 61 | 
for_2:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_data + 2]			# LN: 61 | 
	i1 = i7 - (0x3)			# LN: 61 | 
	a1 = xmem[i1]			# LN: 61 | 
	a1 - a0			# LN: 61 | 
	if (a >= 0) jmp (for_end_2)			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i1 = xmem[i0]			# LN: 63 | 
	i4 = i7 - (0x5)			# LN: 63 | 
	xmem[i4] = i1			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 64 | 
	a0 = xmem[i1]			# LN: 64 | 
	a1 = xmem[_input + 0]			# LN: 64 | 
	a0 = a1 + a0			# LN: 64 | 
	AnyReg(i1, a0h)			# LN: 64 | 
	i4 = i7 - (0x6)			# LN: 64 | 
	i1 = xmem[i1]			# LN: 64 | 
	xmem[i4] = i1			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x1)			# LN: 66 | 
	a0 = 0			# LN: 66 | 
	xmem[i1] = a0h			# LN: 66 | 
	do (0x10), label_end_93			# LN: 66 | 
cline_66_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_data + 1]			# LN: 69 | 
	i1 = i7 - (0x3)			# LN: 69 | 
	a1 = xmem[i1]			# LN: 69 | 
	a1 - a0			# LN: 69 | 
	if (a < 0) jmp (else_1)			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x5)			# LN: 71 | 
	i1 = xmem[i1]			# LN: 71 | 
	a0 = 0			# LN: 71 | 
	xmem[i1] = a0h			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x5)			# LN: 72 | 
	i1 = xmem[i1]			# LN: 72 | 
	i4 = i7 - (0x5)			# LN: 72 | 
	i1 += 1			# LN: 72 | 
	xmem[i4] = i1			# LN: 72 | 
	jmp (endif_1)			# LN: 72 | 
cline_72_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x6)			# LN: 76 | 
	i1 = xmem[i1]			# LN: 76 | 
	i4 = i7 - (0x5)			# LN: 76 | 
	i4 = xmem[i4]			# LN: 76 | 
	a0 = xmem[i1]			# LN: 76 | 
	xmem[i4] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x5)			# LN: 77 | 
	i1 = xmem[i1]			# LN: 77 | 
	i4 = i7 - (0x5)			# LN: 77 | 
	i1 += 1			# LN: 77 | 
	xmem[i4] = i1			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x6)			# LN: 78 | 
	i1 = xmem[i1]			# LN: 78 | 
	i4 = i7 - (0x6)			# LN: 78 | 
	i1 += 1			# LN: 78 | 
	xmem[i4] = i1			# LN: 78 | 
cline_78_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x1)			# LN: 66 | 
	a0 = xmem[i1]			# LN: 66 | 
	uhalfword(a1) = (0x1)			# LN: 66 | 
	a0 = a0 + a1			# LN: 66 | 
	i1 = i7 - (0x1)			# LN: 66 | 
label_end_93:			# LN: 66 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 66 | 
cline_66_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x5)			# LN: 61 | 
	i1 = xmem[i1]			# LN: 61 | 
	i4 = i7 - (0x5)			# LN: 61 | 
	i1 += 1			# LN: 61 | 
	xmem[i4] = i1			# LN: 61 | 
	i1 = i7 - (0x3)			# LN: 61 | 
	a0 = xmem[i1]			# LN: 61 | 
	uhalfword(a1) = (0x1)			# LN: 61 | 
	i0 += 1; a0 = a0 + a1			# LN: 61, 61 | 
	i1 = i7 - (0x3)			# LN: 61 | 
	xmem[i1] = a0h			# LN: 61 | 
	jmp (for_2)			# LN: 61 | 
for_end_2:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	jmp (endif_0)			# LN: 61 | 
cline_61_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 87 | 
	a0 = 0			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
for_4:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_data + 2]			# LN: 87 | 
	i0 = i7 - (0x3)			# LN: 87 | 
	a1 = xmem[i0]			# LN: 87 | 
	a1 - a0			# LN: 87 | 
	if (a >= 0) jmp (for_end_4)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	a1 = xmem[_output + 0]			# LN: 89 | 
	a0 = a1 + a0			# LN: 89 | 
	AnyReg(i0, a0h)			# LN: 89 | 
	i1 = i7 - (0x5)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	xmem[i1] = i0			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	a0 = 0			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
	do (0x10), label_end_94			# LN: 91 | 
cline_91_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = 0			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	i1 = i7 - (0x5)			# LN: 94 | 
	i0 += 1			# LN: 94 | 
	xmem[i1] = i0			# LN: 94 | 
cline_94_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	uhalfword(a1) = (0x1)			# LN: 91 | 
	a0 = a0 + a1			# LN: 91 | 
	i0 = i7 - (0x1)			# LN: 91 | 
label_end_94:			# LN: 91 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 91 | 
cline_91_1:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	a1 = xmem[_output + 0]			# LN: 97 | 
	a0 = a1 + a0			# LN: 97 | 
	AnyReg(i0, a0h)			# LN: 97 | 
	i1 = i7 - (0x5)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
cline_97_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 99 | 
	a0 = 0			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
for_6:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_data + 1]			# LN: 99 | 
	i0 = i7 - (0x2)			# LN: 99 | 
	a1 = xmem[i0]			# LN: 99 | 
	a1 - a0			# LN: 99 | 
	if (a >= 0) jmp (for_end_6)			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	a1 = xmem[_input + 0]			# LN: 101 | 
	a0 = a1 + a0			# LN: 101 | 
	AnyReg(i0, a0h)			# LN: 101 | 
	i1 = i7 - (0x6)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	xmem[i1] = i0			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 102 | 
	a0 = 0			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
	do (0x10), label_end_95			# LN: 102 | 
cline_102_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	x0 = xmem[_data + 1]			# LN: 104 | 
	i0 = i7 - (0x2)			# LN: 104 | 
	x1 = xmem[i0]			# LN: 104 | 
	a0 = x1 * x0			# LN: 104 | 
	a0 = a0 >> 1			# LN: 104 | 
	AnyReg(a0h, a0l)			# LN: 104 | 
	a0l = (0x0)			# LN: 104 | 
	i0 = a0			# LN: 104 | 
	i1 = i7 - (0x3)			# LN: 104 | 
	i0 = i0 + (_data + 4)			# LN: 104 | 
	a0 = xmem[i1]			# LN: 104 | 
	a1 = i0			# LN: 104 | 
	a0 = a1 + a0			# LN: 104 | 
	AnyReg(i0, a0h)			# LN: 104 | 
	i1 = i7 - (0x7)			# LN: 104 | 
	xmem[i1] = i0			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	i1 = i7 - (0x7)			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	i0 = xmem[i1]			# LN: 105 | 
	i1 = i7 - (0x6)			# LN: 105 | 
	i1 = xmem[i1]			# LN: 105 | 
	x0 = xmem[i0]			# LN: 105 | 
	x1 = xmem[i1]			# LN: 105 | 
	i0 = i7 - (0x5)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	a0 += x0 * x1			# LN: 105 | 
	xmem[i0] = a0			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 106 | 
	i0 = xmem[i0]			# LN: 106 | 
	i1 = i7 - (0x5)			# LN: 106 | 
	i0 += 1			# LN: 106 | 
	xmem[i1] = i0			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	i1 = i7 - (0x6)			# LN: 107 | 
	i0 += 1			# LN: 107 | 
	xmem[i1] = i0			# LN: 107 | 
cline_107_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	uhalfword(a1) = (0x1)			# LN: 102 | 
	a0 = a0 + a1			# LN: 102 | 
	i0 = i7 - (0x1)			# LN: 102 | 
label_end_95:			# LN: 102 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 102 | 
cline_102_1:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 109 | 
	a0 = xmem[i0]			# LN: 109 | 
	a1 = xmem[_output + 0]			# LN: 109 | 
	a0 = a1 + a0			# LN: 109 | 
	AnyReg(i0, a0h)			# LN: 109 | 
	i1 = i7 - (0x5)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	xmem[i1] = i0			# LN: 109 | 
cline_109_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	uhalfword(a1) = (0x1)			# LN: 99 | 
	a0 = a0 + a1			# LN: 99 | 
	i0 = i7 - (0x2)			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
	jmp (for_6)			# LN: 99 | 
cline_99_1:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 112 | 
	a0 = 0			# LN: 112 | 
	xmem[i0] = a0h			# LN: 112 | 
	do (0x10), label_end_96			# LN: 112 | 
cline_112_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	x0 = xmem[_data + 3]			# LN: 114 | 
	x1 = xmem[i0]			# LN: 114 | 
	i0 = i7 - (0x5)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	a0 = x1 * x0			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 115 | 
	i0 = xmem[i0]			# LN: 115 | 
	i1 = i7 - (0x5)			# LN: 115 | 
	i0 += 1			# LN: 115 | 
	xmem[i1] = i0			# LN: 115 | 
cline_115_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 112 | 
	a0 = xmem[i0]			# LN: 112 | 
	uhalfword(a1) = (0x1)			# LN: 112 | 
	a0 = a0 + a1			# LN: 112 | 
	i0 = i7 - (0x1)			# LN: 112 | 
label_end_96:			# LN: 112 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 112 | 
cline_112_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	uhalfword(a1) = (0x1)			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	i0 = i7 - (0x3)			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
	jmp (for_4)			# LN: 87 | 
cline_87_1:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 119 | 
__epilogue_222:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 119 | 
	i7 -= 1			# LN: 119 | 
	ret			# LN: 119 | 
