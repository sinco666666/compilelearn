	.text
  .align 1
  .globl arrayProduct
  .type arrayProduct, @function
arrayProduct:  #-24初始存0，用于计数器与赋值0，-40存数组首地址，-44存数组大小，-20初始存1.0，用于计算乘积
    addi sp,sp,-48      #移动栈顶，开辟空间
    sd s0,40(sp)         #将s0的值存在sp+40的位置
    addi s0,sp,48       #s0=sp+48，此时s0存的值为栈底
    sd a0,-40(s0)       #a0=s0-40，a0寄存器的值被加载到栈空间占4个字节,为第一个参数，表示传入的数组的首地址
    mv a5,a1           #将a1的值复制给a5，a1为第二个参数，表示数组的大小
    sw a5,-44(s0)       #将a5的值加载到栈空间，为第二个参数，表示数组大小
    # 加载立即数 1.0
    li a5,1065353216    # 将立即数 1065353216 加载到 a5 寄存器，这个数字是单精度浮点数 1.0 的特定二进制表示形式
    fmv.w.x fa5,a5  #a5为整数寄存器，转换为单精度浮点数后存储到fa5浮点寄存器中
    fsw fa5,-20(s0)     #将fa5寄存器的值1.0加载到栈空间占4个字节
    sw zero,-24(s0)     #将0加载到栈空间保存
    j .Xunhuanpandaun              #跳转到循环条件判断语句
.xunhuanti:
    lw a5,-24(s0)   #将之前存的0加载到a5寄存器，实际上是计数器，后面会修改这个地址的值
    slli a5,a5,2      #左移两位，乘以4，用作数组的相对地址偏移
    ld a4,-40(s0)    #将数组起始地址加载到a4
    add a5,a4,a5       #a5=a5+a4,计算数组某一个元素的实际地址
    flw fa5,0(a5)      #将对应数组中的浮点数加载到fa5
    flw fa4,-20(s0)    #这个地址存的是乘积值
    fmul.s fa5,fa4,fa5 #fa5=fa4*fa5,乘积与当前数组中某一浮点数相乘
    fsw fa5,-20(s0)     #将相乘的值返回存储乘积的地址
    lw a5,-24(s0)      # 再次从栈上偏移量为 -24 的位置加载计数器值到 a5 寄存器
    addiw a5,a5,1    # 将 a5 的值加 1，递增计数器变量
    sw a5,-24(s0)   # 将更新后的计数器值保存回栈上偏移量为 -24 的位置
.Xunhuanpandaun:
lw a5,-24(s0)      #将之前保存的0加载到a5寄存器
mv a4,a5         #将a5的值复制给a4，此时a4为0，a4作为计数器进行循环判断
lw a5,-44(s0)     #将之前保存的数组大小的值加载到a5寄存器，此时a5表示size
sext.w a4,a4      
sext.w a5,a5     #进行符号扩展，便于比较（防止误解为32位无符号数），增强可移植性
blt a4,a5,.xunhuanti      #若a4小于a5，则进到循环体.xunhuanti
flw fa5,-20(s0)     #将栈空间的值（乘积结果）加载到fa5
fmv.s fa0,fa5     #将fa5的值复制给fa0，便于主函数进行输出结果
ld s0,40(sp)     #将之前s0存在栈中的值重新加载回s0
addi sp,sp,48     #恢复栈帧
jr ra            #将程序控制转移到保存的返回地址（在 ra 寄存器中）
.size arrayProduct,.-arrayProduct  # 标记函数 arrayProduct 的大小
.section .rodata
.align 3          # 设置数据对齐方式为 8 字节边界
.shurun:
	.string	"请输入一个大于1的正整数n表示数组的大小："
	.align	3
.d:
	.string	"%d"
	.align	3
.feifa:
	.string	"输入非法\n"
	.align	3
.shurufudianshu:
	.string	"请输入 %d 个浮点数：\n"
	.align	3
.f:
	.string	"%f"
	.align	3
.mul:
	.string	"数组元素的乘积为：%f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	# 为局部变量分配 128 字节的栈空间
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	# 将寄存器 ra、s0-s9 的值保存在栈中，以便后续恢复
	addi	s0,sp,128
	 # s0 指向栈顶，用于后续存储输入数据
	mv	a5,sp
	mv	s1,a5
	 # s1 保存栈指针的初始值
	lui	a5,%hi(.shurun)
	addi	a0,a5,%lo(.shurun)
	call	printf
	addi	a5,s0,-128
	mv	a1,a5
	lui	a5,%hi(.d)
	addi	a0,a5,%lo(.d)
	call	__isoc99_scanf
	lw	a5,-128(s0)
	mv	a4,a5
	li	a5,1
	bgt	a4,a5,.hefa
	# 将输入的 n 与 1 比较，如果 n 大于 1 则跳转到.hefa 标签处
	lui	a5,%hi(.feifa)
	addi	a0,a5,%lo(.feifa)
	call	printf
	li	a5,0
	j	.jieshu
	# 如果输入非法，设置返回值为 0，并跳转到.jieshu 准备返回
.hefa:
	lw	a5,-128(s0)
	mv	a4,a5
	addi	a4,a4,-1
	sd	a4,-112(s0)
	mv	a4,a5
	mv	s8,a4
	li	s9,0
	srli	a4,s8,59
	slli	s5,s9,5
	or	s5,a4,s5
	slli	s4,s8,5
	mv	a4,a5
	mv	s6,a4
	li	s7,0
	srli	a4,s6,59
	slli	s3,s7,5
	or	s3,a4,s3
	slli	s2,s6,5
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	#调整栈指针，为存储数组开辟空间,上面部分用来获取需要开辟的空间大小a5
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-120(s0)
	#s0-120数组首地址
	lw	a5,-128(s0)
	mv	a1,a5
	lui	a5,%hi(.shurufudianshu)
	addi	a0,a5,%lo(.shurufudianshu)
	call	printf
	sw	zero,-100(s0)
	j	.diaoyong
.xunhuanshuru:
	lw	a5,-100(s0)
	#s0-100存储计数器
	slli	a5,a5,2
	ld	a4,-120(s0)
	add	a5,a4,a5
	mv	a1,a5
	lui	a5,%hi(.f)
	addi	a0,a5,%lo(.f)
	call	__isoc99_scanf
	# 根据循环计数器的值读取一个浮点数存入数组
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
	# 循环计数器加 1
.diaoyong:
	lw	a4,-128(s0)
	lw	a5,-100(s0) #s0-100计数器
	sext.w	a5,a5
	blt	a5,a4,.xunhuanshuru
	# 如果循环计数器小于 n，跳转到.xunhuanshuru 继续循环读取浮点数
	lw	a5,-128(s0)
	mv	a1,a5
	ld	a0,-120(s0)
	call	arrayProduct
	# 调用 arrayProduct 函数计算数组元素的乘积
	fsw	fa0,-124(s0)
	 # 将乘积结果存储在 s0-124 的位置
	flw	fa5,-124(s0)
	fcvt.d.s	fa5,fa5 #将单精度浮点数转换为双精度浮点数，并存储到fa5寄存器
	fmv.x.d	a1,fa5 #将双精度浮点数复制到整数寄存器a1
	lui	a5,%hi(.mul)
	addi	a0,a5,%lo(.mul)
	call	printf
	li	a5,0
.jieshu:  #return 0;恢复寄存器的值，释放栈空间
	mv	sp,s1
	mv	a0,a5
	addi	sp,s0,-128
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
