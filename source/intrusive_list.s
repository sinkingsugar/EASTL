	.text
	.def	 "?reverse@intrusive_list_base@eastl@@QEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?reverse@intrusive_list_base@eastl@@QEAAXXZ"
	.align	16, 0x90
"?reverse@intrusive_list_base@eastl@@QEAAXXZ": # @"\01?reverse@intrusive_list_base@eastl@@QEAAXXZ"
.Ltmp0:
.seh_proc "?reverse@intrusive_list_base@eastl@@QEAAXXZ"
# BB#0:                                 # %entry
	subq	$32, %rsp
.Ltmp1:
	.seh_stackalloc 32
.Ltmp2:
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%rcx, (%rsp)            # 8-byte Spill
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_1
# BB#3:                                 # %do.end
	addq	$32, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc

	.def	 "?validate@intrusive_list_base@eastl@@QEBA_NXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?validate@intrusive_list_base@eastl@@QEBA_NXZ"
	.align	16, 0x90
"?validate@intrusive_list_base@eastl@@QEBA_NXZ": # @"\01?validate@intrusive_list_base@eastl@@QEBA_NXZ"
.Ltmp4:
.seh_proc "?validate@intrusive_list_base@eastl@@QEBA_NXZ"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp5:
	.seh_stackalloc 40
.Ltmp6:
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, (%rsp)            # 8-byte Spill
.LBB1_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB1_3
# BB#2:                                 # %if.then
	movb	$0, 39(%rsp)
	jmp	.LBB1_14
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then5
	jmp	.LBB1_13
.LBB1_5:                                # %if.end6
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	cmpq	8(%rsp), %rax
	jne	.LBB1_7
# BB#6:                                 # %if.then8
	movb	$0, 39(%rsp)
	jmp	.LBB1_14
.LBB1_7:                                # %if.end9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	je	.LBB1_9
# BB#8:                                 # %if.then13
	movb	$0, 39(%rsp)
	jmp	.LBB1_14
.LBB1_9:                                # %if.end14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	cmpq	8(%rsp), %rax
	jne	.LBB1_11
# BB#10:                                # %if.then18
	movb	$0, 39(%rsp)
	jmp	.LBB1_14
.LBB1_11:                               # %if.end19
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_12
.LBB1_12:                               # %do.cond
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB1_1
.LBB1_13:                               # %do.end
	movb	$1, 39(%rsp)
.LBB1_14:                               # %return
	movb	39(%rsp), %al
	andb	$1, %al
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp7:
	.seh_endproc


