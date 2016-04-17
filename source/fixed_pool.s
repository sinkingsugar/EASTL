	.text
	.def	 "?init@fixed_pool_base@eastl@@QEAAXPEAXIIII@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?init@fixed_pool_base@eastl@@QEAAXPEAXIIII@Z"
	.align	16, 0x90
"?init@fixed_pool_base@eastl@@QEAAXPEAXIIII@Z": # @"\01?init@fixed_pool_base@eastl@@QEAAXPEAXIIII@Z"
.Ltmp0:
.seh_proc "?init@fixed_pool_base@eastl@@QEAAXPEAXIIII@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp1:
	.seh_stackalloc 40
.Ltmp2:
	.seh_endprologue
	movl	88(%rsp), %eax
	movl	80(%rsp), %r10d
	movl	%eax, 36(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%r9d, 28(%rsp)
	movl	%r8d, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rcx
	cmpq	$0, 16(%rsp)
	movq	%rcx, (%rsp)            # 8-byte Spill
	je	.LBB0_6
# BB#1:                                 # %if.then
	cmpl	$1, 32(%rsp)
	jae	.LBB0_3
# BB#2:                                 # %if.then2
	movl	$1, 32(%rsp)
.LBB0_3:                                # %if.end
	movq	16(%rsp), %rax
	movl	32(%rsp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movl	32(%rsp), %ecx
	subl	$1, %ecx
	xorl	$-1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	andq	%rdx, %rax
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rax, 8(%rdx)
	movq	8(%rdx), %rax
	movq	16(%rsp), %r8
	subq	%r8, %rax
	movl	24(%rsp), %ecx
	movl	%ecx, %r8d
	subq	%rax, %r8
	movl	%r8d, %ecx
	movl	%ecx, 24(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 16(%rsp)
	movl	28(%rsp), %ecx
	movl	%ecx, %eax
	cmpq	$8, %rax
	jae	.LBB0_5
# BB#4:                                 # %if.then13
	movl	32(%rsp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	$8, %rcx
	movl	32(%rsp), %eax
	subl	$1, %eax
	xorl	$-1, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	andq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, 28(%rsp)
.LBB0_5:                                # %if.end22
	movl	24(%rsp), %eax
	xorl	%edx, %edx
	divl	28(%rsp)
	imull	28(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	16(%rsp), %rcx
	movl	24(%rsp), %eax
	movl	%eax, %r8d
	addq	%r8, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	movq	%rcx, 16(%r8)
	movq	$0, (%r8)
	movl	28(%rsp), %eax
	movl	%eax, 24(%r8)
.LBB0_6:                                # %if.end25
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc


