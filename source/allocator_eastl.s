	.text
	.def	 "??__EgDefaultAllocator@eastl@@YAXXZ";
	.scl	3;
	.type	32;
	.endef
	.align	16, 0x90
"??__EgDefaultAllocator@eastl@@YAXXZ":  # @"\01??__EgDefaultAllocator@eastl@@YAXXZ"
.Ltmp0:
.seh_proc "??__EgDefaultAllocator@eastl@@YAXXZ"
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp1:
	.seh_stackalloc 40
.Ltmp2:
	.seh_endprologue
	leaq	"?gDefaultAllocator@eastl@@3Vallocator@1@A"(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	"??0allocator@eastl@@QEAA@PEBD@Z"
	movq	%rax, 32(%rsp)          # 8-byte Spill
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp3:
	.seh_endproc

	.def	 "??0allocator@eastl@@QEAA@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0allocator@eastl@@QEAA@PEBD@Z"
	.globl	"??0allocator@eastl@@QEAA@PEBD@Z"
	.align	16, 0x90
"??0allocator@eastl@@QEAA@PEBD@Z":      # @"\01??0allocator@eastl@@QEAA@PEBD@Z"
.Ltmp4:
.seh_proc "??0allocator@eastl@@QEAA@PEBD@Z"
# BB#0:                                 # %entry
	subq	$16, %rsp
.Ltmp5:
	.seh_stackalloc 16
.Ltmp6:
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%rcx, %rax
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,"??0allocator@eastl@@QEAA@PEBD@Z"
.Ltmp7:
	.seh_endproc

	.def	 "?GetDefaultAllocator@eastl@@YAPEAVallocator@1@XZ";
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	"?GetDefaultAllocator@eastl@@YAPEAVallocator@1@XZ"
	.align	16, 0x90
"?GetDefaultAllocator@eastl@@YAPEAVallocator@1@XZ": # @"\01?GetDefaultAllocator@eastl@@YAPEAVallocator@1@XZ"
.Ltmp8:
.seh_proc "?GetDefaultAllocator@eastl@@YAPEAVallocator@1@XZ"
# BB#0:                                 # %entry
.Ltmp9:
	.seh_endprologue
	movq	"?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA"(%rip), %rax
	retq
	.seh_handlerdata
	.text
.Ltmp10:
	.seh_endproc

	.def	 "?SetDefaultAllocator@eastl@@YAPEAVallocator@1@PEAV21@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?SetDefaultAllocator@eastl@@YAPEAVallocator@1@PEAV21@@Z"
	.align	16, 0x90
"?SetDefaultAllocator@eastl@@YAPEAVallocator@1@PEAV21@@Z": # @"\01?SetDefaultAllocator@eastl@@YAPEAVallocator@1@PEAV21@@Z"
.Ltmp11:
.seh_proc "?SetDefaultAllocator@eastl@@YAPEAVallocator@1@PEAV21@@Z"
# BB#0:                                 # %entry
	subq	$16, %rsp
.Ltmp12:
	.seh_stackalloc 16
.Ltmp13:
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	"?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA"(%rip), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, "?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA"(%rip)
	movq	(%rsp), %rax
	addq	$16, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp14:
	.seh_endproc

	.def	 _GLOBAL__sub_I_allocator_eastl.cpp;
	.scl	3;
	.type	32;
	.endef
	.align	16, 0x90
_GLOBAL__sub_I_allocator_eastl.cpp:     # @_GLOBAL__sub_I_allocator_eastl.cpp
.Ltmp15:
.seh_proc _GLOBAL__sub_I_allocator_eastl.cpp
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp16:
	.seh_stackalloc 40
.Ltmp17:
	.seh_endprologue
	callq	"??__EgDefaultAllocator@eastl@@YAXXZ"
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
.Ltmp18:
	.seh_endproc

	.bss
	.globl	"?gDefaultAllocator@eastl@@3Vallocator@1@A" # @"\01?gDefaultAllocator@eastl@@3Vallocator@1@A"
"?gDefaultAllocator@eastl@@3Vallocator@1@A":
	.zero	1

	.data
	.globl	"?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA" # @"\01?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA"
	.align	8
"?gpDefaultAllocator@eastl@@3PEAVallocator@1@EA":
	.quad	"?gDefaultAllocator@eastl@@3Vallocator@1@A"

	.section	.CRT$XCU,"dr"
	.align	8
	.quad	_GLOBAL__sub_I_allocator_eastl.cpp

