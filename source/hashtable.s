	.text
	.def	 "?GetPrevBucketCountOnly@prime_rehash_policy@eastl@@SAII@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?GetPrevBucketCountOnly@prime_rehash_policy@eastl@@SAII@Z"
	.align	16, 0x90
"?GetPrevBucketCountOnly@prime_rehash_policy@eastl@@SAII@Z": # @"\01?GetPrevBucketCountOnly@prime_rehash_policy@eastl@@SAII@Z"
.Ltmp0:
.seh_proc "?GetPrevBucketCountOnly@prime_rehash_policy@eastl@@SAII@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp1:
	.seh_stackalloc 40
.Ltmp2:
	.seh_endprologue
	movl	%ecx, 36(%rsp)
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"(%rip), %rcx
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"+1024(%rip), %rdx
	leaq	36(%rsp), %r8
	callq	"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	movl	-4(%rax), %r9d
	movl	%r9d, 32(%rsp)
	movl	%r9d, %eax
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc

	.def	 "??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	.globl	"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	.align	16, 0x90
"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z": # @"\01??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
.Ltmp4:
.seh_proc "??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp5:
	.seh_stackalloc 88
.Ltmp6:
	.seh_endprologue
	movq	%r8, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rcx
	callq	"??$distance@PEBI@eastl@@YA_JPEBI0@Z"
	movq	%rax, 56(%rsp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	jle	.LBB1_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	48(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	sarq	$1, %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rdx
	callq	"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
	movq	80(%rsp), %rax
	movl	(%rax), %r8d
	movq	48(%rsp), %rax
	cmpl	(%rax), %r8d
	jb	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	56(%rsp), %rcx
	subq	%rax, %rcx
	movq	%rcx, 56(%rsp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_6:                                # %while.end
	movq	64(%rsp), %rax
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
.Ltmp7:
	.seh_endproc

	.def	 "?GetPrevBucketCount@prime_rehash_policy@eastl@@QEBAII@Z";
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	"?GetPrevBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
	.align	16, 0x90
"?GetPrevBucketCount@prime_rehash_policy@eastl@@QEBAII@Z": # @"\01?GetPrevBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
.Ltmp8:
.seh_proc "?GetPrevBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp9:
	.seh_stackalloc 72
.Ltmp10:
	.seh_endprologue
	movl	%edx, 68(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"(%rip), %rax
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"+1024(%rip), %rdx
	leaq	68(%rsp), %r8
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	"??$upper_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	movl	-4(%rax), %r9d
	movl	%r9d, %eax
	movl	%eax, %r9d
	movl	%r9d, 52(%rsp)
	cvtsi2ssq	%rax, %xmm0
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movl	%eax, %r9d
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%r9d, 8(%rax)
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp11:
	.seh_endproc

	.def	 "?GetNextBucketCount@prime_rehash_policy@eastl@@QEBAII@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?GetNextBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
	.align	16, 0x90
"?GetNextBucketCount@prime_rehash_policy@eastl@@QEBAII@Z": # @"\01?GetNextBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
.Ltmp12:
.seh_proc "?GetNextBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp13:
	.seh_stackalloc 72
.Ltmp14:
	.seh_endprologue
	movl	%edx, 68(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"(%rip), %rax
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"+1024(%rip), %rdx
	leaq	68(%rsp), %r8
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	movl	(%rax), %r9d
	movl	%r9d, %eax
	movl	%eax, %r9d
	movl	%r9d, 52(%rsp)
	cvtsi2ssq	%rax, %xmm0
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movl	%eax, %r9d
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%r9d, 8(%rax)
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp15:
	.seh_endproc

	.def	 "??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	.globl	"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	.align	16, 0x90
"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z": # @"\01??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
.Ltmp16:
.seh_proc "??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp17:
	.seh_stackalloc 88
.Ltmp18:
	.seh_endprologue
	movq	%r8, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rcx
	callq	"??$distance@PEBI@eastl@@YA_JPEBI0@Z"
	movq	%rax, 56(%rsp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	jle	.LBB4_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	48(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	sarq	$1, %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rdx
	callq	"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
	movq	48(%rsp), %rax
	movl	(%rax), %r8d
	movq	80(%rsp), %rax
	cmpl	(%rax), %r8d
	jae	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	56(%rsp), %rcx
	subq	%rax, %rcx
	movq	%rcx, 56(%rsp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_1
.LBB4_6:                                # %while.end
	movq	64(%rsp), %rax
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
.Ltmp19:
	.seh_endproc

	.def	 "?GetBucketCount@prime_rehash_policy@eastl@@QEBAII@Z";
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	"?GetBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
	.align	16, 0x90
"?GetBucketCount@prime_rehash_policy@eastl@@QEBAII@Z": # @"\01?GetBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
.Ltmp20:
.seh_proc "?GetBucketCount@prime_rehash_policy@eastl@@QEBAII@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp21:
	.seh_stackalloc 72
.Ltmp22:
	.seh_endprologue
	movl	%edx, 68(%rsp)
	movq	%rcx, 56(%rsp)
	movl	68(%rsp), %edx
	movl	%edx, %eax
	cvtsi2ssq	%rax, %xmm0
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
	movl	%eax, %edx
	movl	%edx, 52(%rsp)
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"(%rip), %rax
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"+1024(%rip), %rdx
	leaq	52(%rsp), %r8
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	callq	"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	movl	(%rax), %r9d
	movl	%r9d, %eax
	movl	%eax, %r9d
	movl	%r9d, 48(%rsp)
	cvtsi2ssq	%rax, %xmm0
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movl	%eax, %r9d
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%r9d, 8(%rax)
	movl	48(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp23:
	.seh_endproc

	.def	 "?GetRehashRequired@prime_rehash_policy@eastl@@QEBA?AU?$pair@_NI@2@III@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?GetRehashRequired@prime_rehash_policy@eastl@@QEBA?AU?$pair@_NI@2@III@Z"
	.align	16, 0x90
"?GetRehashRequired@prime_rehash_policy@eastl@@QEBA?AU?$pair@_NI@2@III@Z": # @"\01?GetRehashRequired@prime_rehash_policy@eastl@@QEBA?AU?$pair@_NI@2@III@Z"
.Ltmp24:
.seh_proc "?GetRehashRequired@prime_rehash_policy@eastl@@QEBA?AU?$pair@_NI@2@III@Z"
# BB#0:                                 # %entry
	subq	$184, %rsp
.Ltmp25:
	.seh_stackalloc 184
.Ltmp26:
	.seh_endprologue
	movq	%rdx, %rax
	movl	224(%rsp), %r10d
	movl	%r10d, 180(%rsp)
	movl	%r9d, 176(%rsp)
	movl	%r8d, 172(%rsp)
	movq	%rcx, 160(%rsp)
	movq	160(%rsp), %rcx
	movl	176(%rsp), %r8d
	addl	180(%rsp), %r8d
	cmpl	8(%rcx), %r8d
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	jbe	.LBB6_6
# BB#1:                                 # %if.then
	cmpl	$1, 172(%rsp)
	jne	.LBB6_3
# BB#2:                                 # %if.then3
	movl	$0, 172(%rsp)
.LBB6_3:                                # %if.end
	movl	176(%rsp), %eax
	movl	180(%rsp), %ecx
	addl	%ecx, %eax
	movl	%eax, %edx
	cvtsi2ssq	%rdx, %xmm0
	movq	104(%rsp), %rdx         # 8-byte Reload
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 156(%rsp)
	movl	172(%rsp), %eax
	movl	%eax, %r8d
	cvtsi2ssq	%r8, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB6_5
# BB#4:                                 # %if.then7
	leaq	147(%rsp), %rdx
	leaq	152(%rsp), %r8
	movq	104(%rsp), %rax         # 8-byte Reload
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	172(%rsp), %ecx
	movl	%ecx, %r9d
	cvtsi2ssq	%r9, %xmm1
	mulss	%xmm1, %xmm0
	movss	156(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, 100(%rsp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	100(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	callq	"?max_alt@eastl@@YAMMM@Z"
	movss	%xmm0, 156(%rsp)
	cvttss2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, 148(%rsp)
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"(%rip), %rcx
	leaq	"?gPrimeNumberArray@eastl@@3QBIB"+1024(%rip), %rdx
	leaq	148(%rsp), %r8
	callq	"??$lower_bound@PEBII@eastl@@YAPEBIPEBI0AEBI@Z"
	movl	(%rax), %r10d
	movl	%r10d, %eax
	movl	%eax, %r10d
	movl	%r10d, 152(%rsp)
	cvtsi2ssq	%rax, %xmm0
	movq	104(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movl	%eax, %r10d
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%r10d, 8(%rax)
	movb	$1, 147(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	callq	"??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB6_7
.LBB6_5:                                # %if.else
	leaq	139(%rsp), %rdx
	leaq	140(%rsp), %r8
	movl	172(%rsp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movq	104(%rsp), %rcx         # 8-byte Reload
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	callq	ceilf
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 8(%rcx)
	movl	$0, 140(%rsp)
	movb	$0, 139(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %if.end28
	leaq	131(%rsp), %rdx
	leaq	132(%rsp), %r8
	movl	$0, 132(%rsp)
	movb	$0, 131(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB6_7:                                # %return
	movq	112(%rsp), %rax         # 8-byte Reload
	addq	$184, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp27:
	.seh_endproc

	.def	 "?max_alt@eastl@@YAMMM@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?max_alt@eastl@@YAMMM@Z"
	.globl	"?max_alt@eastl@@YAMMM@Z"
	.align	16, 0x90
"?max_alt@eastl@@YAMMM@Z":              # @"\01?max_alt@eastl@@YAMMM@Z"
.Ltmp28:
.seh_proc "?max_alt@eastl@@YAMMM@Z"
# BB#0:                                 # %entry
	subq	$16, %rsp
.Ltmp29:
	.seh_stackalloc 16
.Ltmp30:
	.seh_endprologue
	movss	%xmm1, 12(%rsp)
	movss	%xmm0, 8(%rsp)
	movss	8(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB7_2
# BB#1:                                 # %cond.true
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movss	8(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
.LBB7_3:                                # %cond.end
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"?max_alt@eastl@@YAMMM@Z"
.Ltmp31:
	.seh_endproc

	.def	 "??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
	.globl	"??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
	.align	16, 0x90
"??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z": # @"\01??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
.Ltmp32:
.seh_proc "??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp33:
	.seh_stackalloc 72
.Ltmp34:
	.seh_endprologue
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	callq	"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
	movb	(%rax), %r9b
	andb	$1, %r9b
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	%r9b, (%rax)
	movq	64(%rsp), %rcx
	movl	(%rcx), %r10d
	movl	%r10d, 4(%rax)
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$?0_NX@?$pair@_NI@eastl@@QEAA@$$QEA_NAEBI@Z"
.Ltmp35:
	.seh_endproc

	.def	 "??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
	.globl	"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
	.align	16, 0x90
"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z": # @"\01??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
.Ltmp36:
.seh_proc "??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp37:
	.seh_stackalloc 72
.Ltmp38:
	.seh_endprologue
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	callq	"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
	movb	(%rax), %r9b
	andb	$1, %r9b
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	%r9b, (%rax)
	movq	64(%rsp), %rcx
	callq	"??$forward@I@eastl@@YA$$QEAIAEAI@Z"
	movl	(%rax), %r10d
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%r10d, 4(%rax)
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$?0_NIX@?$pair@_NI@eastl@@QEAA@$$QEA_N$$QEAI@Z"
.Ltmp39:
	.seh_endproc

	.def	 "??$distance@PEBI@eastl@@YA_JPEBI0@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$distance@PEBI@eastl@@YA_JPEBI0@Z"
	.globl	"??$distance@PEBI@eastl@@YA_JPEBI0@Z"
	.align	16, 0x90
"??$distance@PEBI@eastl@@YA_JPEBI0@Z":  # @"\01??$distance@PEBI@eastl@@YA_JPEBI0@Z"
.Ltmp40:
.seh_proc "??$distance@PEBI@eastl@@YA_JPEBI0@Z"
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp41:
	.seh_stackalloc 56
.Ltmp42:
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rdx
	movzbl	32(%rsp), %r8d
	callq	"??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$distance@PEBI@eastl@@YA_JPEBI0@Z"
.Ltmp43:
	.seh_endproc

	.def	 "??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
	.globl	"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
	.align	16, 0x90
"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z": # @"\01??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
.Ltmp44:
.seh_proc "??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp45:
	.seh_stackalloc 56
.Ltmp46:
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	48(%rsp), %rdx
	movzbl	32(%rsp), %r8d
	callq	"??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$advance@PEBI_J@eastl@@YAXAEAPEBI_J@Z"
.Ltmp47:
	.seh_endproc

	.def	 "??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
	.globl	"??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
	.align	16, 0x90
"??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z": # @"\01??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
.Ltmp48:
.seh_proc "??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp49:
	.seh_stackalloc 24
.Ltmp50:
	.seh_endprologue
	movb	%r8b, %al
	movb	%al, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rdx
	subq	%rcx, %rdx
	sarq	$2, %rdx
	movq	%rdx, %rax
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$distance_impl@PEBI@eastl@@YA_JPEBI0Urandom_access_iterator_tag@0@@Z"
.Ltmp51:
	.seh_endproc

	.def	 "??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
	.globl	"??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
	.align	16, 0x90
"??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z": # @"\01??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
.Ltmp52:
.seh_proc "??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp53:
	.seh_stackalloc 24
.Ltmp54:
	.seh_endprologue
	movb	%r8b, %al
	movb	%al, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rdx
	movq	(%rcx), %r9
	leaq	(%r9,%rdx,4), %rdx
	movq	%rdx, (%rcx)
	addq	$24, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$advance_impl@PEBI_J@eastl@@YAXAEAPEBI_JUrandom_access_iterator_tag@0@@Z"
.Ltmp55:
	.seh_endproc

	.def	 "??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
	.globl	"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
	.align	16, 0x90
"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z": # @"\01??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
.Ltmp56:
.seh_proc "??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp57:
	.seh_stackalloc 8
.Ltmp58:
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	%rcx, %rax
	popq	%rcx
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$forward@_N@eastl@@YA$$QEA_NAEA_N@Z"
.Ltmp59:
	.seh_endproc

	.def	 "??$forward@I@eastl@@YA$$QEAIAEAI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$forward@I@eastl@@YA$$QEAIAEAI@Z"
	.globl	"??$forward@I@eastl@@YA$$QEAIAEAI@Z"
	.align	16, 0x90
"??$forward@I@eastl@@YA$$QEAIAEAI@Z":   # @"\01??$forward@I@eastl@@YA$$QEAIAEAI@Z"
.Ltmp60:
.seh_proc "??$forward@I@eastl@@YA$$QEAIAEAI@Z"
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp61:
	.seh_stackalloc 8
.Ltmp62:
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	%rcx, %rax
	popq	%rcx
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??$forward@I@eastl@@YA$$QEAIAEAI@Z"
.Ltmp63:
	.seh_endproc

	.data
	.globl	"?gpEmptyBucketArray@eastl@@3PAPEAXA" # @"\01?gpEmptyBucketArray@eastl@@3PAPEAXA"
	.align	16
"?gpEmptyBucketArray@eastl@@3PAPEAXA":
	.quad	0
	.quad	-1

	.section	.rdata,"dr"
	.align	16                      # @"\01?gPrimeNumberArray@eastl@@3QBIB"
"?gPrimeNumberArray@eastl@@3QBIB":
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	11                      # 0xb
	.long	13                      # 0xd
	.long	17                      # 0x11
	.long	19                      # 0x13
	.long	23                      # 0x17
	.long	29                      # 0x1d
	.long	31                      # 0x1f
	.long	37                      # 0x25
	.long	41                      # 0x29
	.long	43                      # 0x2b
	.long	47                      # 0x2f
	.long	53                      # 0x35
	.long	59                      # 0x3b
	.long	61                      # 0x3d
	.long	67                      # 0x43
	.long	71                      # 0x47
	.long	73                      # 0x49
	.long	79                      # 0x4f
	.long	83                      # 0x53
	.long	89                      # 0x59
	.long	97                      # 0x61
	.long	103                     # 0x67
	.long	109                     # 0x6d
	.long	113                     # 0x71
	.long	127                     # 0x7f
	.long	137                     # 0x89
	.long	139                     # 0x8b
	.long	149                     # 0x95
	.long	157                     # 0x9d
	.long	167                     # 0xa7
	.long	179                     # 0xb3
	.long	193                     # 0xc1
	.long	199                     # 0xc7
	.long	211                     # 0xd3
	.long	227                     # 0xe3
	.long	241                     # 0xf1
	.long	257                     # 0x101
	.long	277                     # 0x115
	.long	293                     # 0x125
	.long	313                     # 0x139
	.long	337                     # 0x151
	.long	359                     # 0x167
	.long	383                     # 0x17f
	.long	409                     # 0x199
	.long	439                     # 0x1b7
	.long	467                     # 0x1d3
	.long	503                     # 0x1f7
	.long	541                     # 0x21d
	.long	577                     # 0x241
	.long	619                     # 0x26b
	.long	661                     # 0x295
	.long	709                     # 0x2c5
	.long	761                     # 0x2f9
	.long	823                     # 0x337
	.long	887                     # 0x377
	.long	953                     # 0x3b9
	.long	1031                    # 0x407
	.long	1109                    # 0x455
	.long	1193                    # 0x4a9
	.long	1289                    # 0x509
	.long	1381                    # 0x565
	.long	1493                    # 0x5d5
	.long	1613                    # 0x64d
	.long	1741                    # 0x6cd
	.long	1879                    # 0x757
	.long	2029                    # 0x7ed
	.long	2179                    # 0x883
	.long	2357                    # 0x935
	.long	2549                    # 0x9f5
	.long	2753                    # 0xac1
	.long	2971                    # 0xb9b
	.long	3209                    # 0xc89
	.long	3469                    # 0xd8d
	.long	3739                    # 0xe9b
	.long	4027                    # 0xfbb
	.long	4349                    # 0x10fd
	.long	4703                    # 0x125f
	.long	5087                    # 0x13df
	.long	5503                    # 0x157f
	.long	5953                    # 0x1741
	.long	6427                    # 0x191b
	.long	6949                    # 0x1b25
	.long	7517                    # 0x1d5d
	.long	8123                    # 0x1fbb
	.long	8783                    # 0x224f
	.long	9497                    # 0x2519
	.long	10273                   # 0x2821
	.long	11113                   # 0x2b69
	.long	12011                   # 0x2eeb
	.long	12983                   # 0x32b7
	.long	14033                   # 0x36d1
	.long	15173                   # 0x3b45
	.long	16411                   # 0x401b
	.long	17749                   # 0x4555
	.long	19183                   # 0x4aef
	.long	20753                   # 0x5111
	.long	22447                   # 0x57af
	.long	24281                   # 0x5ed9
	.long	26267                   # 0x669b
	.long	28411                   # 0x6efb
	.long	30727                   # 0x7807
	.long	33223                   # 0x81c7
	.long	35933                   # 0x8c5d
	.long	38873                   # 0x97d9
	.long	42043                   # 0xa43b
	.long	45481                   # 0xb1a9
	.long	49201                   # 0xc031
	.long	53201                   # 0xcfd1
	.long	57557                   # 0xe0d5
	.long	62233                   # 0xf319
	.long	67307                   # 0x106eb
	.long	72817                   # 0x11c71
	.long	78779                   # 0x133bb
	.long	85229                   # 0x14ced
	.long	92203                   # 0x1682b
	.long	99733                   # 0x18595
	.long	107897                  # 0x1a579
	.long	116731                  # 0x1c7fb
	.long	126271                  # 0x1ed3f
	.long	136607                  # 0x2159f
	.long	147793                  # 0x24151
	.long	159871                  # 0x2707f
	.long	172933                  # 0x2a385
	.long	187091                  # 0x2dad3
	.long	202409                  # 0x316a9
	.long	218971                  # 0x3575b
	.long	236897                  # 0x39d61
	.long	256279                  # 0x3e917
	.long	277261                  # 0x43b0d
	.long	299951                  # 0x493af
	.long	324503                  # 0x4f397
	.long	351061                  # 0x55b55
	.long	379787                  # 0x5cb8b
	.long	410857                  # 0x644e9
	.long	444487                  # 0x6c847
	.long	480881                  # 0x75671
	.long	520241                  # 0x7f031
	.long	562841                  # 0x89699
	.long	608903                  # 0x94a87
	.long	658753                  # 0xa0d41
	.long	712697                  # 0xadff9
	.long	771049                  # 0xbc3e9
	.long	834181                  # 0xcba85
	.long	902483                  # 0xdc553
	.long	976369                  # 0xee5f1
	.long	1056323                 # 0x101e43
	.long	1142821                 # 0x117025
	.long	1236397                 # 0x12ddad
	.long	1337629                 # 0x14691d
	.long	1447153                 # 0x1614f1
	.long	1565659                 # 0x17e3db
	.long	1693859                 # 0x19d8a3
	.long	1832561                 # 0x1bf671
	.long	1982627                 # 0x1e40a3
	.long	2144977                 # 0x20bad1
	.long	2320627                 # 0x2368f3
	.long	2510653                 # 0x264f3d
	.long	2716249                 # 0x297259
	.long	2938679                 # 0x2cd737
	.long	3179303                 # 0x308327
	.long	3439651                 # 0x347c23
	.long	3721303                 # 0x38c857
	.long	4026031                 # 0x3d6eaf
	.long	4355707                 # 0x42767b
	.long	4712381                 # 0x47e7bd
	.long	5098259                 # 0x4dcb13
	.long	5515729                 # 0x5429d1
	.long	5967347                 # 0x5b0df3
	.long	6456007                 # 0x6282c7
	.long	6984629                 # 0x6a93b5
	.long	7556579                 # 0x734de3
	.long	8175383                 # 0x7cbf17
	.long	8844859                 # 0x86f63b
	.long	9569143                 # 0x920377
	.long	10352717                # 0x9df84d
	.long	11200489                # 0xaae7e9
	.long	12117689                # 0xb8e6b9
	.long	13109983                # 0xc80adf
	.long	14183539                # 0xd86c73
	.long	15345007                # 0xea256f
	.long	16601593                # 0xfd51f9
	.long	17961079                # 0x1121077
	.long	19431899                # 0x12881db
	.long	21023161                # 0x140c9b9
	.long	22744717                # 0x15b0e8d
	.long	24607243                # 0x1777a0b
	.long	26622317                # 0x196396d
	.long	28802401                # 0x1b77d61
	.long	31160981                # 0x1db7a95
	.long	33712729                # 0x2026a59
	.long	36473443                # 0x22c8a63
	.long	39460231                # 0x25a1d87
	.long	42691603                # 0x28b6c13
	.long	46187573                # 0x2c0c435
	.long	49969847                # 0x2fa7ab7
	.long	54061849                # 0x338eb19
	.long	58488943                # 0x37c786f
	.long	63278561                # 0x3c58de1
	.long	68460391                # 0x4149f67
	.long	74066549                # 0x46a2a75
	.long	80131819                # 0x4c6b6eb
	.long	86693767                # 0x52ad787
	.long	93793069                # 0x5972b2d
	.long	101473717               # 0x60c5db5
	.long	109783337               # 0x68b2929
	.long	118773397               # 0x7145695
	.long	128499677               # 0x7a8bfdd
	.long	139022417               # 0x8495051
	.long	150406843               # 0x8f706bb
	.long	162723577               # 0x9b2f6f9
	.long	176048909               # 0xa7e4b0d
	.long	190465427               # 0xb5a4593
	.long	206062531               # 0xc4843c3
	.long	222936881               # 0xd49bf31
	.long	241193053               # 0xe60505d
	.long	260944219               # 0xf8db15b
	.long	282312799               # 0x10d3c05f
	.long	305431229               # 0x123482bd
	.long	330442829               # 0x13b2284d
	.long	357502601               # 0x154f0e89
	.long	386778277               # 0x170dc4a5
	.long	418451333               # 0x18f10f85
	.long	452718089               # 0x1afbee09
	.long	489790921               # 0x1d319dc9
	.long	529899637               # 0x1f95a075
	.long	573292817               # 0x222bc111
	.long	620239453               # 0x24f81a5d
	.long	671030513               # 0x27ff1cf1
	.long	725980837               # 0x2b4596a5
	.long	785430967               # 0x2ed0b9b7
	.long	849749479               # 0x32a625e7
	.long	919334987               # 0x36cbf04b
	.long	994618837               # 0x3b48add5
	.long	1076067617              # 0x40237d21
	.long	1164186217              # 0x45641269
	.long	1259520799              # 0x4b12c31f
	.long	1362662261              # 0x51389375
	.long	1474249943              # 0x57df44d7
	.long	1594975441              # 0x5f1164d1
	.long	1725587117              # 0x66da5ead
	.long	1866894511              # 0x6f468caf
	.long	2019773507              # 0x78634c43
	.long	2185171673              # 0x823f12d9
	.long	2364114217              # 0x8ce98529
	.long	2557710269              # 0x98738fbd
	.long	2767159799              # 0xa4ef81f7
	.long	2993761039              # 0xb2712b0f
	.long	3238918481              # 0xc10df951
	.long	3504151727              # 0xd0dd1caf
	.long	3791104843              # 0xe1f7ab4b
	.long	4101556399              # 0xf478c8af
	.long	4294967291              # 0xfffffffb
	.long	4294967291              # 0xfffffffb


