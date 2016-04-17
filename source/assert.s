	.text
	.def	 "?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z"
	.align	16, 0x90
"?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z": # @"\01?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z"
.Ltmp0:
.seh_proc "?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z"
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp1:
	.seh_stackalloc 56
.Ltmp2:
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	callq	"?EASTL_DEBUG_BREAK@@YAXXZ"
	nop
	addq	$56, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc

	.def	 "?SetAssertionFailureFunction@eastl@@YAXP6AXPEBDPEAX@Z1@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?SetAssertionFailureFunction@eastl@@YAXP6AXPEBDPEAX@Z1@Z"
	.align	16, 0x90
"?SetAssertionFailureFunction@eastl@@YAXP6AXPEBDPEAX@Z1@Z": # @"\01?SetAssertionFailureFunction@eastl@@YAXP6AXPEBDPEAX@Z1@Z"
.Ltmp4:
.seh_proc "?SetAssertionFailureFunction@eastl@@YAXP6AXPEBDPEAX@Z1@Z"
# BB#0:                                 # %entry
	subq	$16, %rsp
.Ltmp5:
	.seh_stackalloc 16
.Ltmp6:
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%rcx, "?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA"(%rip)
	movq	8(%rsp), %rcx
	movq	%rcx, "?gpAssertionFailureFunctionContext@eastl@@3PEAXEA"(%rip)
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp7:
	.seh_endproc

	.def	 "?AssertionFailure@eastl@@YAXPEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?AssertionFailure@eastl@@YAXPEBD@Z"
	.align	16, 0x90
"?AssertionFailure@eastl@@YAXPEBD@Z":   # @"\01?AssertionFailure@eastl@@YAXPEBD@Z"
.Ltmp8:
.seh_proc "?AssertionFailure@eastl@@YAXPEBD@Z"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp9:
	.seh_stackalloc 40
.Ltmp10:
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	cmpq	$0, "?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA"(%rip)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	"?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA"(%rip), %rax
	movq	"?gpAssertionFailureFunctionContext@eastl@@3PEAXEA"(%rip), %rdx
	movq	32(%rsp), %rcx
	callq	*%rax
.LBB2_2:                                # %if.end
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp11:
	.seh_endproc

	.data
	.globl	"?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA" # @"\01?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA"
	.align	8
"?gpAssertionFailureFunction@eastl@@3P6AXPEBDPEAX@ZEA":
	.quad	"?AssertionFailureFunctionDefault@eastl@@YAXPEBDPEAX@Z"

	.bss
	.globl	"?gpAssertionFailureFunctionContext@eastl@@3PEAXEA" # @"\01?gpAssertionFailureFunctionContext@eastl@@3PEAXEA"
	.align	8
"?gpAssertionFailureFunctionContext@eastl@@3PEAXEA":
	.quad	0


