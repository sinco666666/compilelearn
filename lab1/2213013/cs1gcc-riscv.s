	.file	"cs1.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	qj
	.section	.sdata,"aw"
	.align	2
	.type	qj, @object
	.size	qj, 4
qj:
	.word	100
	.globl	CONST
	.section	.srodata,"a"
	.align	2
	.type	CONST, @object
	.size	CONST, 4
CONST:
	.word	500
	.section	.rodata
	.align	3
.LC0:
	.string	"fundamentals of compiling"
	.text
	.align	1
	.globl	print_message
	.type	print_message, @function
print_message:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	print_message, .-print_message
	.align	1
	.globl	add
	.type	add, @function
add:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	add, .-add
	.section	.rodata
	.align	3
.LC3:
	.string	"%d"
	.align	3
.LC5:
	.string	"integer: %d\n"
	.align	3
.LC7:
	.string	"floating: %f\n"
	.align	3
.LC8:
	.string	"constant: %d\n"
	.align	3
.LC9:
	.string	"sum2: %f\n"
	.align	3
.LC10:
	.string	"global variable: %d\n"
	.align	3
.LC11:
	.string	"constant integer: %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsw	fa5,-40(s0)
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fsw	fa5,-36(s0)
	sw	zero,-32(s0)
	addi	a5,s0,-44
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	__isoc99_scanf
	sw	zero,-20(s0)
	j	.L5
.L6:
	flw	fa5,-32(s0)
	fcvt.d.s	fa4,fa5
	lw	a5,-20(s0)
	fcvt.d.w	fa3,a5
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fcvt.s.d	fa5,fa5
	fsw	fa5,-32(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	ble	a5,a4,.L6
	flw	fa5,-40(s0)
	fcvt.w.s a5,fa5,rtz
	sext.w	a5,a5
	flw	fa5,-36(s0)
	fcvt.w.s a4,fa5,rtz
	sext.w	a4,a4
	mv	a1,a4
	mv	a0,a5
	call	add
	mv	a5,a0
	sw	a5,-24(s0)
	call	print_message
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	lui	a5,%hi(.LC6)
	fld	fa5,%lo(.LC6)(a5)
	fmv.x.d	a1,fa5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	li	a1,42
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	flw	fa5,-32(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	lui	a5,%hi(qj)
	lw	a5,%lo(qj)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	li	a5,500
	mv	a1,a5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC1:
	.word	1084227584
	.align	2
.LC2:
	.word	1088421888
	.align	3
.LC4:
	.word	-1717986918
	.word	1069128089
	.align	3
.LC6:
	.word	1374389535
	.word	1074339512
	.ident	"GCC: () 12.2.0"
	.section	.note.GNU-stack,"",@progbits
