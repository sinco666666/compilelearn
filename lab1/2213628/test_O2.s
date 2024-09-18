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
	movsd	.LC3(%rip), %xmm0
	addl	$1, %edx
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm1
	addl	$1, %eax
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cmpl	%eax, %edx
	jne	.L6
.L5:
	leaq	.LC0(%rip), %rdi
	movss	%xmm2, 12(%rsp)
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
	movss	12(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	leaq	.LC8(%rip), %rsi
	movl	$2, %edi
	movl	$1, %eax
	cvtss2sd	%xmm2, %xmm0
	call	__printf_chk@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	jmp	.L5
.L11:
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
