	.text
	.def	 "?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
	.align	16, 0x90
"?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z":    # @"\01?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
.Ltmp0:
.seh_proc "?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp1:
	.seh_stackalloc 24
.Ltmp2:
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movl	%ecx, 4(%rsp)
	cmpl	$128, 4(%rsp)
	jae	.LBB0_2
# BB#1:                                 # %if.then
	movl	4(%rsp), %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_18
.LBB0_2:                                # %if.else
	cmpl	$2048, 4(%rsp)          # imm = 0x800
	jae	.LBB0_4
# BB#3:                                 # %if.then2
	movl	4(%rsp), %eax
	shrl	$6, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_17
.LBB0_4:                                # %if.else8
	cmpl	$65535, 4(%rsp)         # imm = 0xFFFF
	ja	.LBB0_6
# BB#5:                                 # %if.then10
	movl	4(%rsp), %eax
	shrl	$12, %eax
	orl	$224, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_16
.LBB0_6:                                # %if.else24
	cmpl	$2097151, 4(%rsp)       # imm = 0x1FFFFF
	ja	.LBB0_8
# BB#7:                                 # %if.then26
	movl	4(%rsp), %eax
	shrl	$18, %eax
	orl	$240, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_15
.LBB0_8:                                # %if.else45
	cmpl	$67108863, 4(%rsp)      # imm = 0x3FFFFFF
	ja	.LBB0_10
# BB#9:                                 # %if.then47
	movl	4(%rsp), %eax
	shrl	$24, %eax
	orl	$248, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$18, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_14
.LBB0_10:                               # %if.else70
	cmpl	$2147483647, 4(%rsp)    # imm = 0x7FFFFFFF
	ja	.LBB0_12
# BB#11:                                # %if.then72
	movl	4(%rsp), %eax
	shrl	$30, %eax
	orl	$252, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$24, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$18, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	movl	4(%rsp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	8(%rsp), %rdx
	movq	(%rdx), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, (%rdx)
	movb	%cl, (%r8)
	jmp	.LBB0_13
.LBB0_12:                               # %if.else101
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movb	$1, (%rcx)
	movb	$0, 23(%rsp)
	jmp	.LBB0_19
.LBB0_13:                               # %if.end
	jmp	.LBB0_14
.LBB0_14:                               # %if.end103
	jmp	.LBB0_15
.LBB0_15:                               # %if.end104
	jmp	.LBB0_16
.LBB0_16:                               # %if.end105
	jmp	.LBB0_17
.LBB0_17:                               # %if.end106
	jmp	.LBB0_18
.LBB0_18:                               # %if.end107
	movb	$1, 23(%rsp)
.LBB0_19:                               # %return
	movb	23(%rsp), %al
	andb	$1, %al
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc

	.def	 "?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"
	.align	16, 0x90
"?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z":    # @"\01?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"
.Ltmp4:
.seh_proc "?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp5:
	.seh_stackalloc 56
.Ltmp6:
	.seh_endprologue
	movw	%cx, %ax
	movq	%rdx, 48(%rsp)
	movw	%ax, 46(%rsp)
	movq	48(%rsp), %rdx
	movzwl	46(%rsp), %ecx
	callq	"?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp7:
	.seh_endproc

	.def	 "?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"
	.align	16, 0x90
"?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z": # @"\01?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"
.Ltmp8:
.seh_proc "?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"
# BB#0:                                 # %entry
	subq	$48, %rsp
.Ltmp9:
	.seh_stackalloc 48
.Ltmp10:
	.seh_endprologue
	movq	%r8, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movb	$1, 23(%rsp)
	movl	$65535, 16(%rsp)        # imm = 0xFFFF
	movq	$0, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	cmpq	32(%rsp), %rcx
	jae	.LBB2_52
# BB#1:                                 # %if.then
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, 7(%rsp)
	movzbl	7(%rsp), %edx
	cmpl	$128, %edx
	jge	.LBB2_3
# BB#2:                                 # %if.then2
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, 8(%rsp)
	movzbl	7(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	jmp	.LBB2_51
.LBB2_3:                                # %if.else
	movzbl	7(%rsp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.LBB2_5
# BB#4:                                 # %if.then6
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_5:                                # %if.end
	movzbl	7(%rsp), %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	.LBB2_14
# BB#6:                                 # %if.then10
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB2_12
# BB#7:                                 # %if.then13
	movzbl	7(%rsp), %eax
	andl	$31, %eax
	shll	$6, %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	1(%rcx), %dl
	movb	%dl, 6(%rsp)
	movzbl	6(%rsp), %eax
	andl	$63, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movzbl	6(%rsp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB2_10
# BB#8:                                 # %lor.lhs.false
	cmpl	$128, 16(%rsp)
	jb	.LBB2_10
# BB#9:                                 # %land.lhs.true
	cmpl	$2048, 16(%rsp)         # imm = 0x800
	jb	.LBB2_11
.LBB2_10:                               # %if.then23
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_11:                               # %if.end24
	jmp	.LBB2_13
.LBB2_12:                               # %if.else25
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_13:                               # %if.end26
	jmp	.LBB2_50
.LBB2_14:                               # %if.else27
	movzbl	7(%rsp), %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	.LBB2_24
# BB#15:                                # %if.then31
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB2_22
# BB#16:                                # %if.then34
	movzbl	7(%rsp), %eax
	andl	$15, %eax
	shll	$12, %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	1(%rcx), %dl
	movb	%dl, 6(%rsp)
	movzbl	6(%rsp), %eax
	andl	$63, %eax
	shll	$6, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	2(%rcx), %dl
	movb	%dl, 5(%rsp)
	movzbl	5(%rsp), %eax
	andl	$63, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movzbl	6(%rsp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB2_20
# BB#17:                                # %lor.lhs.false50
	movzbl	5(%rsp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB2_20
# BB#18:                                # %lor.lhs.false54
	cmpl	$2048, 16(%rsp)         # imm = 0x800
	jb	.LBB2_20
# BB#19:                                # %land.lhs.true56
	cmpl	$65536, 16(%rsp)        # imm = 0x10000
	jb	.LBB2_21
.LBB2_20:                               # %if.then58
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_21:                               # %if.end59
	jmp	.LBB2_23
.LBB2_22:                               # %if.else60
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_23:                               # %if.end61
	jmp	.LBB2_49
.LBB2_24:                               # %if.else62
	movzbl	7(%rsp), %eax
	andl	$248, %eax
	cmpl	$240, %eax
	jne	.LBB2_35
# BB#25:                                # %if.then66
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB2_33
# BB#26:                                # %if.then69
	movzbl	7(%rsp), %eax
	andl	$7, %eax
	shll	$18, %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	1(%rcx), %dl
	movb	%dl, 6(%rsp)
	movzbl	6(%rsp), %eax
	andl	$63, %eax
	shll	$12, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	2(%rcx), %dl
	movb	%dl, 5(%rsp)
	movzbl	5(%rsp), %eax
	andl	$63, %eax
	shll	$6, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movb	3(%rcx), %dl
	movb	%dl, 4(%rsp)
	movzbl	4(%rsp), %eax
	andl	$63, %eax
	orl	16(%rsp), %eax
	movl	%eax, 16(%rsp)
	movzbl	7(%rsp), %eax
	andl	$248, %eax
	cmpl	$240, %eax
	jne	.LBB2_31
# BB#27:                                # %lor.lhs.false90
	movzbl	6(%rsp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB2_31
# BB#28:                                # %lor.lhs.false94
	movzbl	5(%rsp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB2_31
# BB#29:                                # %lor.lhs.false98
	cmpl	$65536, 16(%rsp)        # imm = 0x10000
	jb	.LBB2_31
# BB#30:                                # %land.lhs.true100
	cmpl	$1114111, 16(%rsp)      # imm = 0x10FFFF
	jbe	.LBB2_32
.LBB2_31:                               # %if.then102
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_32:                               # %if.end103
	jmp	.LBB2_34
.LBB2_33:                               # %if.else104
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_34:                               # %if.end105
	jmp	.LBB2_48
.LBB2_35:                               # %if.else106
	movzbl	7(%rsp), %eax
	andl	$252, %eax
	cmpl	$248, %eax
	jne	.LBB2_40
# BB#36:                                # %if.then110
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB2_38
# BB#37:                                # %if.then113
	jmp	.LBB2_39
.LBB2_38:                               # %if.else114
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_39:                               # %if.end115
	jmp	.LBB2_47
.LBB2_40:                               # %if.else116
	movzbl	7(%rsp), %eax
	andl	$254, %eax
	cmpl	$252, %eax
	jne	.LBB2_45
# BB#41:                                # %if.then120
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$5, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB2_43
# BB#42:                                # %if.then123
	jmp	.LBB2_44
.LBB2_43:                               # %if.else124
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_44:                               # %if.end125
	jmp	.LBB2_46
.LBB2_45:                               # %if.else126
	movb	$0, 23(%rsp)
	jmp	.LBB2_54
.LBB2_46:                               # %if.end127
	jmp	.LBB2_47
.LBB2_47:                               # %if.end128
	jmp	.LBB2_48
.LBB2_48:                               # %if.end129
	jmp	.LBB2_49
.LBB2_49:                               # %if.end130
	jmp	.LBB2_50
.LBB2_50:                               # %if.end131
	jmp	.LBB2_51
.LBB2_51:                               # %if.end132
	jmp	.LBB2_53
.LBB2_52:                               # %if.else133
	movb	$0, 23(%rsp)
.LBB2_53:                               # %if.end134
	jmp	.LBB2_54
.LBB2_54:                               # %Failure
	testb	$1, 23(%rsp)
	je	.LBB2_56
# BB#55:                                # %if.then135
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movl	16(%rsp), %edx
	movq	40(%rsp), %rax
	movl	%edx, (%rax)
	jmp	.LBB2_57
.LBB2_56:                               # %if.else136
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	40(%rsp), %rax
	movl	$65535, (%rax)          # imm = 0xFFFF
.LBB2_57:                               # %if.end138
	movb	23(%rsp), %al
	andb	$1, %al
	addq	$48, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp11:
	.seh_endproc

	.def	 "?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"
	.align	16, 0x90
"?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z": # @"\01?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"
.Ltmp12:
.seh_proc "?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp13:
	.seh_stackalloc 72
.Ltmp14:
	.seh_endprologue
	leaq	36(%rsp), %rax
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	movq	%rax, %r8
	callq	"?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_4
.LBB3_1:                                # %if.then
	cmpl	$65535, 36(%rsp)        # imm = 0xFFFF
	ja	.LBB3_3
# BB#2:                                 # %if.then1
	movl	36(%rsp), %eax
	movw	%ax, %cx
	movq	56(%rsp), %rdx
	movw	%cx, (%rdx)
	movb	$1, 71(%rsp)
	jmp	.LBB3_5
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end2
	movq	56(%rsp), %rax
	movw	$-1, (%rax)
	movb	$0, 71(%rsp)
.LBB3_5:                                # %return
	movb	71(%rsp), %al
	andb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp15:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z"
.Ltmp16:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp17:
	.seh_stackalloc 72
.Ltmp18:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, 36(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, 32(%rsp)
	movl	36(%rsp), %eax
	cmpl	32(%rsp), %eax
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movl	32(%rsp), %eax
	movl	%eax, 36(%rsp)
.LBB4_2:                                # %if.end
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movl	36(%rsp), %r8d
                                        # 
	callq	memmove
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
	movb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp19:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_SPEA_S@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_SPEA_S@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_SPEA_S@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_SPEA_S@Z"
.Ltmp20:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_SPEA_S@Z"
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp21:
	.seh_stackalloc 88
.Ltmp22:
	.seh_endprologue
	movq	%r9, 80(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movb	$1, 55(%rsp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, 55(%rsp)
	movb	%cl, 54(%rsp)           # 1-byte Spill
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpq	64(%rsp), %rdx
	movb	%cl, 54(%rsp)           # 1-byte Spill
	jae	.LBB5_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	cmpq	80(%rsp), %rax
	setb	%cl
	movb	%cl, 54(%rsp)           # 1-byte Spill
.LBB5_4:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	54(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_5
	jmp	.LBB5_6
.LBB5_5:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	72(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, (%rax)
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	callq	"?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"
	andb	$1, %al
	movb	%al, 55(%rsp)
	jmp	.LBB5_1
.LBB5_6:                                # %while.end
	movb	55(%rsp), %al
	andb	$1, %al
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp23:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_UPEA_U@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_UPEA_U@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_UPEA_U@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_UPEA_U@Z"
.Ltmp24:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEA_UPEA_U@Z"
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp25:
	.seh_stackalloc 88
.Ltmp26:
	.seh_endprologue
	movq	%r9, 80(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movb	$1, 55(%rsp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, 55(%rsp)
	movb	%cl, 54(%rsp)           # 1-byte Spill
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpq	64(%rsp), %rdx
	movb	%cl, 54(%rsp)           # 1-byte Spill
	jae	.LBB6_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	cmpq	80(%rsp), %rax
	setb	%cl
	movb	%cl, 54(%rsp)           # 1-byte Spill
.LBB6_4:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	54(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_6
.LBB6_5:                                # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	72(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	callq	"?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"
	andb	$1, %al
	movb	%al, 55(%rsp)
	jmp	.LBB6_1
.LBB6_6:                                # %while.end
	movb	55(%rsp), %al
	andb	$1, %al
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp27:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEADPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEADPEAD@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEADPEAD@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEADPEAD@Z"
.Ltmp28:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEADPEAD@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp29:
	.seh_stackalloc 72
.Ltmp30:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movb	$1, 39(%rsp)
	movq	64(%rsp), %rcx
	addq	$-6, %rcx
	movq	%rcx, 64(%rsp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, 39(%rsp)
	movb	%cl, 38(%rsp)           # 1-byte Spill
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpq	48(%rsp), %rdx
	movb	%cl, 38(%rsp)           # 1-byte Spill
	jae	.LBB7_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	cmpq	64(%rsp), %rax
	setb	%cl
	movb	%cl, 38(%rsp)           # 1-byte Spill
.LBB7_4:                                # %land.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	38(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_5
	jmp	.LBB7_6
.LBB7_5:                                # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	56(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %r8
	addq	$2, %r8
	movq	%r8, (%rax)
	movzwl	(%rcx), %ecx
	callq	"?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"
	andb	$1, %al
	movb	%al, 39(%rsp)
	jmp	.LBB7_1
.LBB7_6:                                # %while.end
	movb	39(%rsp), %al
	andb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp31:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_SPEA_S@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_SPEA_S@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_SPEA_S@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_SPEA_S@Z"
.Ltmp32:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_SPEA_S@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp33:
	.seh_stackalloc 72
.Ltmp34:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, 36(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, 32(%rsp)
	movl	36(%rsp), %eax
	cmpl	32(%rsp), %eax
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	32(%rsp), %eax
	movl	%eax, 36(%rsp)
.LBB8_2:                                # %if.end
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movl	36(%rsp), %r8d
	movl	%r8d, %eax
	addq	%rax, %rax
	movq	%rax, %r8
	callq	memmove
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	leaq	(%rcx,%rdx,2), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	leaq	(%rcx,%rdx,2), %rcx
	movq	%rcx, (%rax)
	movb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp35:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_UPEA_U@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_UPEA_U@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_UPEA_U@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_UPEA_U@Z"
.Ltmp36:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_SPEB_SAEAPEA_UPEA_U@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp37:
	.seh_stackalloc 40
.Ltmp38:
	.seh_endprologue
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, (%rsp)
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rsp), %ecx
	movl	%ecx, %edx
	shlq	$1, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rsp)
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB9_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, (%rax)
	movzwl	(%rcx), %r8d
	movq	24(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movl	%r8d, (%rcx)
	jmp	.LBB9_3
.LBB9_5:                                # %while.end
	movb	$1, %al
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp39:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEADPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEADPEAD@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEADPEAD@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEADPEAD@Z"
.Ltmp40:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEADPEAD@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp41:
	.seh_stackalloc 72
.Ltmp42:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movb	$1, 39(%rsp)
	movq	64(%rsp), %rcx
	addq	$-6, %rcx
	movq	%rcx, 64(%rsp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, 39(%rsp)
	movb	%cl, 38(%rsp)           # 1-byte Spill
	je	.LBB10_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpq	48(%rsp), %rdx
	movb	%cl, 38(%rsp)           # 1-byte Spill
	jae	.LBB10_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	cmpq	64(%rsp), %rax
	setb	%cl
	movb	%cl, 38(%rsp)           # 1-byte Spill
.LBB10_4:                               # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	38(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_5
	jmp	.LBB10_6
.LBB10_5:                               # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	56(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %r8
	addq	$4, %r8
	movq	%r8, (%rax)
	movl	(%rcx), %ecx
	callq	"?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
	andb	$1, %al
	movb	%al, 39(%rsp)
	jmp	.LBB10_1
.LBB10_6:                               # %while.end
	movb	39(%rsp), %al
	andb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp43:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_SPEA_S@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_SPEA_S@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_SPEA_S@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_SPEA_S@Z"
.Ltmp44:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_SPEA_S@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp45:
	.seh_stackalloc 40
.Ltmp46:
	.seh_endprologue
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, (%rsp)
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rsp), %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rsp)
.LBB11_2:                               # %if.end
	jmp	.LBB11_3
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB11_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movl	(%rcx), %r8d
	movw	%r8w, %r9w
	movq	24(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, (%rax)
	movw	%r9w, (%rcx)
	jmp	.LBB11_3
.LBB11_5:                               # %while.end
	movb	$1, %al
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp47:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_UPEA_U@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_UPEA_U@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_UPEA_U@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_UPEA_U@Z"
.Ltmp48:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEB_UPEB_UAEAPEA_UPEA_U@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp49:
	.seh_stackalloc 72
.Ltmp50:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, 36(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, 32(%rsp)
	movl	36(%rsp), %eax
	cmpl	32(%rsp), %eax
	jbe	.LBB12_2
# BB#1:                                 # %if.then
	movl	32(%rsp), %eax
	movl	%eax, 36(%rsp)
.LBB12_2:                               # %if.end
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	40(%rsp), %rax
	movq	(%rax), %rdx
	movl	36(%rsp), %r8d
	movl	%r8d, %eax
	shlq	$2, %rax
	movq	%rax, %r8
	callq	memmove
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movl	36(%rsp), %r9d
	movl	%r9d, %edx
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, (%rax)
	movb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp51:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z"
.Ltmp52:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp53:
	.seh_stackalloc 72
.Ltmp54:
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movb	$1, 39(%rsp)
	movq	64(%rsp), %rcx
	addq	$-6, %rcx
	movq	%rcx, 64(%rsp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, 39(%rsp)
	movb	%cl, 38(%rsp)           # 1-byte Spill
	je	.LBB13_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	40(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpq	48(%rsp), %rdx
	movb	%cl, 38(%rsp)           # 1-byte Spill
	jae	.LBB13_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	cmpq	64(%rsp), %rax
	setb	%cl
	movb	%cl, 38(%rsp)           # 1-byte Spill
.LBB13_4:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	38(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_5
	jmp	.LBB13_6
.LBB13_5:                               # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	56(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %r8
	addq	$4, %r8
	movq	%r8, (%rax)
	movl	(%rcx), %ecx
	callq	"?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"
	andb	$1, %al
	movb	%al, 39(%rsp)
	jmp	.LBB13_1
.LBB13_6:                               # %while.end
	movb	39(%rsp), %al
	andb	$1, %al
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp55:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_SPEA_S@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_SPEA_S@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_SPEA_S@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_SPEA_S@Z"
.Ltmp56:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_SPEA_S@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp57:
	.seh_stackalloc 40
.Ltmp58:
	.seh_endprologue
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, (%rsp)
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rsp), %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rsp)
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB14_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movl	(%rcx), %r8d
	movw	%r8w, %r9w
	movq	24(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, (%rax)
	movw	%r9w, (%rcx)
	jmp	.LBB14_3
.LBB14_5:                               # %while.end
	movb	$1, %al
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp59:
	.seh_endproc

	.def	 "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_UPEA_U@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_UPEA_U@Z"
	.align	16, 0x90
"?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_UPEA_U@Z": # @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_UPEA_U@Z"
.Ltmp60:
.seh_proc "?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEA_UPEA_U@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp61:
	.seh_stackalloc 40
.Ltmp62:
	.seh_endprologue
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, 4(%rsp)
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, (%rsp)
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jbe	.LBB15_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rsp), %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rsp)
.LBB15_2:                               # %if.end
	jmp	.LBB15_3
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB15_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movl	(%rcx), %r8d
	movq	24(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
	movl	%r8d, (%rcx)
	jmp	.LBB15_3
.LBB15_5:                               # %while.end
	movb	$1, %al
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp63:
	.seh_endproc

	.bss
	.globl	"?gEmptyString@eastl@@3TEmptyString@1@A" # @"\01?gEmptyString@eastl@@3TEmptyString@1@A"
	.align	4
"?gEmptyString@eastl@@3TEmptyString@1@A":
	.zero	4


