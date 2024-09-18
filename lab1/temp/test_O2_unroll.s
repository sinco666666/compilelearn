	.file	"test.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"fundamentals of compiling"
	.text
	.p2align 4
	.globl	print_message
	.type	print_message, @function
print_message:
.LFB39:
	.cfi_startproc
	endbr64
	leaq	.LC0(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE39:
	.size	print_message, .-print_message
	.p2align 4
	.globl	add
	.type	add, @function
add:
.LFB40:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE40:
	.size	add, .-add
	.section	.rodata.str1.1
.LC2:
	.string	"%d"
.LC4:
	.string	"integer: %d\n"
.LC6:
	.string	"floating: %f\n"
.LC7:
	.string	"constant: %d\n"
.LC8:
	.string	"sum2: %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	leaq	.LC2(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	20(%rsp), %rsi
	call	__isoc99_scanf@PLT
	movl	20(%rsp), %edx
	testl	%edx, %edx
	js	.L8
	leal	1(%rdx), %ecx
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm13, %xmm13
	xorl	%eax, %eax
	movl	%ecx, %esi
	andl	$7, %esi
	je	.L6
	cmpl	$1, %esi
	je	.L31
	cmpl	$2, %esi
	je	.L32
	cmpl	$3, %esi
	je	.L33
	cmpl	$4, %esi
	je	.L34
	cmpl	$5, %esi
	je	.L35
	cmpl	$6, %esi
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movl	$1, %edi
	cmovne	%edi, %eax
	cvtss2sd	%xmm13, %xmm1
	pxor	%xmm13, %xmm13
	cvtsi2sdl	%eax, %xmm2
	addl	$1, %eax
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm13
.L35:
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm3
	cvtss2sd	%xmm13, %xmm4
	addl	$1, %eax
	pxor	%xmm13, %xmm13
	mulsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm4
	cvtsd2ss	%xmm4, %xmm13
.L34:
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%eax, %xmm5
	cvtss2sd	%xmm13, %xmm6
	addl	$1, %eax
	pxor	%xmm13, %xmm13
	mulsd	%xmm0, %xmm5
	addsd	%xmm5, %xmm6
	cvtsd2ss	%xmm6, %xmm13
.L33:
	pxor	%xmm7, %xmm7
	pxor	%xmm8, %xmm8
	cvtsi2sdl	%eax, %xmm7
	cvtss2sd	%xmm13, %xmm8
	addl	$1, %eax
	pxor	%xmm13, %xmm13
	mulsd	%xmm0, %xmm7
	addsd	%xmm7, %xmm8
	cvtsd2ss	%xmm8, %xmm13
.L32:
	pxor	%xmm9, %xmm9
	pxor	%xmm10, %xmm10
	cvtsi2sdl	%eax, %xmm9
	cvtss2sd	%xmm13, %xmm10
	addl	$1, %eax
	pxor	%xmm13, %xmm13
	mulsd	%xmm0, %xmm9
	addsd	%xmm9, %xmm10
	cvtsd2ss	%xmm10, %xmm13
.L31:
	pxor	%xmm11, %xmm11
	pxor	%xmm12, %xmm12
	cvtsi2sdl	%eax, %xmm11
	cvtss2sd	%xmm13, %xmm12
	addl	$1, %eax
	pxor	%xmm13, %xmm13
	mulsd	%xmm0, %xmm11
	addsd	%xmm11, %xmm12
	cvtsd2ss	%xmm12, %xmm13
	cmpl	%eax, %ecx
	je	.L5
.L6:
	pxor	%xmm14, %xmm14
	leal	1(%rax), %r8d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm14
	leal	2(%rax), %r9d
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%r8d, %xmm1
	leal	3(%rax), %r10d
	pxor	%xmm15, %xmm15
	cvtss2sd	%xmm13, %xmm15
	cvtsi2sdl	%r9d, %xmm5
	pxor	%xmm8, %xmm8
	leal	4(%rax), %r11d
	cvtsi2sdl	%r10d, %xmm8
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	mulsd	%xmm0, %xmm14
	pxor	%xmm11, %xmm11
	leal	5(%rax), %edx
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	%r11d, %xmm11
	pxor	%xmm4, %xmm4
	mulsd	%xmm0, %xmm5
	pxor	%xmm6, %xmm6
	leal	6(%rax), %esi
	mulsd	%xmm0, %xmm8
	pxor	%xmm7, %xmm7
	pxor	%xmm9, %xmm9
	leal	7(%rax), %edi
	pxor	%xmm10, %xmm10
	pxor	%xmm12, %xmm12
	addl	$8, %eax
	addsd	%xmm15, %xmm14
	mulsd	%xmm0, %xmm11
	pxor	%xmm13, %xmm13
	pxor	%xmm15, %xmm15
	cvtsd2ss	%xmm14, %xmm2
	cvtss2sd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	pxor	%xmm14, %xmm14
	cvtsi2sdl	%edx, %xmm14
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%esi, %xmm2
	cvtsd2ss	%xmm1, %xmm4
	cvtss2sd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	pxor	%xmm1, %xmm1
	pxor	%xmm4, %xmm4
	pxor	%xmm6, %xmm6
	mulsd	%xmm0, %xmm14
	cvtsd2ss	%xmm5, %xmm7
	cvtss2sd	%xmm7, %xmm9
	mulsd	%xmm0, %xmm2
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edi, %xmm5
	addsd	%xmm9, %xmm8
	cvtsd2ss	%xmm8, %xmm10
	cvtss2sd	%xmm10, %xmm12
	addsd	%xmm12, %xmm11
	mulsd	%xmm0, %xmm5
	cvtsd2ss	%xmm11, %xmm13
	cvtss2sd	%xmm13, %xmm15
	addsd	%xmm15, %xmm14
	pxor	%xmm13, %xmm13
	cvtsd2ss	%xmm14, %xmm1
	cvtss2sd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm4
	cvtss2sd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	cvtsd2ss	%xmm5, %xmm13
	cmpl	%eax, %ecx
	jne	.L6
.L5:
	leaq	.LC0(%rip), %rdi
	movss	%xmm13, 12(%rsp)
	call	puts@PLT
	movl	$12, %edx
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	movl	$2, %edi
	movl	$1, %eax
	movsd	.LC5(%rip), %xmm0
	leaq	.LC6(%rip), %rsi
	call	__printf_chk@PLT
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	movl	$42, %edx
	call	__printf_chk@PLT
	movss	12(%rsp), %xmm0
	movl	$2, %edi
	leaq	.LC8(%rip), %rsi
	movl	$1, %eax
	cvtss2sd	%xmm0, %xmm0
	call	__printf_chk@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L45
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	pxor	%xmm13, %xmm13
	jmp	.L5
.L45:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC5:
	.long	1374389535
	.long	1074339512
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
