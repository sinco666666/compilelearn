
cs1gcc.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <print_message>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f <print_message+0xf>
   f:	48 89 c7             	mov    %rax,%rdi
  12:	e8 00 00 00 00       	call   17 <print_message+0x17>
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	ret    

000000000000001a <add>:
  1a:	f3 0f 1e fa          	endbr64 
  1e:	55                   	push   %rbp
  1f:	48 89 e5             	mov    %rsp,%rbp
  22:	89 7d fc             	mov    %edi,-0x4(%rbp)
  25:	89 75 f8             	mov    %esi,-0x8(%rbp)
  28:	8b 55 fc             	mov    -0x4(%rbp),%edx
  2b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  2e:	01 d0                	add    %edx,%eax
  30:	5d                   	pop    %rbp
  31:	c3                   	ret    

0000000000000032 <main>:
  32:	f3 0f 1e fa          	endbr64 
  36:	55                   	push   %rbp
  37:	48 89 e5             	mov    %rsp,%rbp
  3a:	48 83 ec 20          	sub    $0x20,%rsp
  3e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  45:	00 00 
  47:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4b:	31 c0                	xor    %eax,%eax
  4d:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 55 <main+0x23>
  54:	00 
  55:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
  5a:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 62 <main+0x30>
  61:	00 
  62:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
  67:	66 0f ef c0          	pxor   %xmm0,%xmm0
  6b:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
  70:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  74:	48 89 c6             	mov    %rax,%rsi
  77:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7e <main+0x4c>
  7e:	48 89 c7             	mov    %rax,%rdi
  81:	b8 00 00 00 00       	mov    $0x0,%eax
  86:	e8 00 00 00 00       	call   8b <main+0x59>
  8b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  92:	eb 33                	jmp    c7 <main+0x95>
  94:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  99:	66 0f ef c9          	pxor   %xmm1,%xmm1
  9d:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
  a1:	66 0f ef d2          	pxor   %xmm2,%xmm2
  a5:	f2 0f 2a 55 e4       	cvtsi2sdl -0x1c(%rbp),%xmm2
  aa:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # b2 <main+0x80>
  b1:	00 
  b2:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  b6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  ba:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  be:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
  c3:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  c7:	8b 45 e0             	mov    -0x20(%rbp),%eax
  ca:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
  cd:	7e c5                	jle    94 <main+0x62>
  cf:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
  d4:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
  d8:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
  dd:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
  e1:	89 d6                	mov    %edx,%esi
  e3:	89 c7                	mov    %eax,%edi
  e5:	e8 00 00 00 00       	call   ea <main+0xb8>
  ea:	89 45 e8             	mov    %eax,-0x18(%rbp)
  ed:	b8 00 00 00 00       	mov    $0x0,%eax
  f2:	e8 00 00 00 00       	call   f7 <main+0xc5>
  f7:	8b 45 e8             	mov    -0x18(%rbp),%eax
  fa:	89 c6                	mov    %eax,%esi
  fc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 103 <main+0xd1>
 103:	48 89 c7             	mov    %rax,%rdi
 106:	b8 00 00 00 00       	mov    $0x0,%eax
 10b:	e8 00 00 00 00       	call   110 <main+0xde>
 110:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 117 <main+0xe5>
 117:	66 48 0f 6e c0       	movq   %rax,%xmm0
 11c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 123 <main+0xf1>
 123:	48 89 c7             	mov    %rax,%rdi
 126:	b8 01 00 00 00       	mov    $0x1,%eax
 12b:	e8 00 00 00 00       	call   130 <main+0xfe>
 130:	be 2a 00 00 00       	mov    $0x2a,%esi
 135:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 13c <main+0x10a>
 13c:	48 89 c7             	mov    %rax,%rdi
 13f:	b8 00 00 00 00       	mov    $0x0,%eax
 144:	e8 00 00 00 00       	call   149 <main+0x117>
 149:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
 14e:	66 0f ef db          	pxor   %xmm3,%xmm3
 152:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
 156:	66 48 0f 7e d8       	movq   %xmm3,%rax
 15b:	66 48 0f 6e c0       	movq   %rax,%xmm0
 160:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 167 <main+0x135>
 167:	48 89 c7             	mov    %rax,%rdi
 16a:	b8 01 00 00 00       	mov    $0x1,%eax
 16f:	e8 00 00 00 00       	call   174 <main+0x142>
 174:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 17a <main+0x148>
 17a:	89 c6                	mov    %eax,%esi
 17c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 183 <main+0x151>
 183:	48 89 c7             	mov    %rax,%rdi
 186:	b8 00 00 00 00       	mov    $0x0,%eax
 18b:	e8 00 00 00 00       	call   190 <main+0x15e>
 190:	b8 f4 01 00 00       	mov    $0x1f4,%eax
 195:	89 c6                	mov    %eax,%esi
 197:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 19e <main+0x16c>
 19e:	48 89 c7             	mov    %rax,%rdi
 1a1:	b8 00 00 00 00       	mov    $0x0,%eax
 1a6:	e8 00 00 00 00       	call   1ab <main+0x179>
 1ab:	b8 00 00 00 00       	mov    $0x0,%eax
 1b0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 1b4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 1bb:	00 00 
 1bd:	74 05                	je     1c4 <main+0x192>
 1bf:	e8 00 00 00 00       	call   1c4 <main+0x192>
 1c4:	c9                   	leave  
 1c5:	c3                   	ret    
