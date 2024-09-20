	.text
	.file	"cs1.c"
	.globl	print_message                   # -- Begin function print_message
	.p2align	4, 0x90
	.type	print_message,@function
print_message:                          # @print_message
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	print_message, .Lfunc_end0-print_message
	.cfi_endproc
                                        # -- End function
	.globl	add                             # -- Begin function add
	.p2align	4, 0x90
	.type	add,@function
add:                                    # @add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	add, .Lfunc_end1-add
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI2_0:
	.long	0x40e00000                      # float 7
.LCPI2_1:
	.long	0x40a00000                      # float 5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_2:
	.quad	0x40091eb851eb851f              # double 3.1400000000000001
.LCPI2_3:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movss	.LCPI2_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movss	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movabsq	$.L.str.1, %rdi
	leaq	-24(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf@PLT
	movl	$0, -4(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	cvtsi2sdl	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI2_3(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_1
.LBB2_3:
	cvttss2si	-16(%rbp), %edi
	cvttss2si	-12(%rbp), %esi
	callq	add
	movl	%eax, -20(%rbp)
	callq	print_message
	movl	-20(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.3, %rdi
	movsd	.LCPI2_2(%rip), %xmm0           # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf@PLT
	movabsq	$.L.str.4, %rdi
	movl	$42, %esi
	movb	$0, %al
	callq	printf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.5, %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	qj, %esi
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.7, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	qj,@object                      # @qj
	.data
	.globl	qj
	.p2align	2
qj:
	.long	100                             # 0x64
	.size	qj, 4

	.type	CONST,@object                   # @CONST
	.section	.rodata,"a",@progbits
	.globl	CONST
	.p2align	2
CONST:
	.long	500                             # 0x1f4
	.size	CONST, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fundamentals of compiling\n"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"integer: %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"floating: %f\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"constant: %d\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"sum2: %f\n"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"global variable: %d\n"
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"constant integer: %d\n"
	.size	.L.str.7, 22

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
