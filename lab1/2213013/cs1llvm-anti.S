
cs1llvm.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <print_message>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
   b:	00 00 00 
   e:	b0 00                	mov    $0x0,%al
  10:	e8 00 00 00 00       	call   15 <print_message+0x15>
  15:	5d                   	pop    %rbp
  16:	c3                   	ret    
  17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  1e:	00 00 

0000000000000020 <add>:
  20:	55                   	push   %rbp
  21:	48 89 e5             	mov    %rsp,%rbp
  24:	89 7d f8             	mov    %edi,-0x8(%rbp)
  27:	89 75 fc             	mov    %esi,-0x4(%rbp)
  2a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  2d:	03 45 fc             	add    -0x4(%rbp),%eax
  30:	5d                   	pop    %rbp
  31:	c3                   	ret    
  32:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  39:	00 00 00 
  3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000040 <main>:
  40:	55                   	push   %rbp
  41:	48 89 e5             	mov    %rsp,%rbp
  44:	48 83 ec 20          	sub    $0x20,%rsp
  48:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4f:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 57 <main+0x17>
  56:	00 
  57:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
  5c:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 64 <main+0x24>
  63:	00 
  64:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
  69:	0f 57 c0             	xorps  %xmm0,%xmm0
  6c:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
  71:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  78:	00 00 00 
  7b:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
  7f:	b0 00                	mov    $0x0,%al
  81:	e8 00 00 00 00       	call   86 <main+0x46>
  86:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  8d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  90:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  93:	7f 32                	jg     c7 <main+0x87>
  95:	f2 0f 2a 45 fc       	cvtsi2sdl -0x4(%rbp),%xmm0
  9a:	f3 0f 10 4d f8       	movss  -0x8(%rbp),%xmm1
  9f:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  a3:	f2 0f 10 15 00 00 00 	movsd  0x0(%rip),%xmm2        # ab <main+0x6b>
  aa:	00 
  ab:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  af:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  b3:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  b7:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
  bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  bf:	83 c0 01             	add    $0x1,%eax
  c2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  c5:	eb c6                	jmp    8d <main+0x4d>
  c7:	f3 0f 2c 7d f0       	cvttss2si -0x10(%rbp),%edi
  cc:	f3 0f 2c 75 f4       	cvttss2si -0xc(%rbp),%esi
  d1:	e8 00 00 00 00       	call   d6 <main+0x96>
  d6:	89 45 ec             	mov    %eax,-0x14(%rbp)
  d9:	e8 00 00 00 00       	call   de <main+0x9e>
  de:	8b 75 ec             	mov    -0x14(%rbp),%esi
  e1:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  e8:	00 00 00 
  eb:	b0 00                	mov    $0x0,%al
  ed:	e8 00 00 00 00       	call   f2 <main+0xb2>
  f2:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  f9:	00 00 00 
  fc:	f2 0f 10 05 00 00 00 	movsd  0x0(%rip),%xmm0        # 104 <main+0xc4>
 103:	00 
 104:	b0 01                	mov    $0x1,%al
 106:	e8 00 00 00 00       	call   10b <main+0xcb>
 10b:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 112:	00 00 00 
 115:	be 2a 00 00 00       	mov    $0x2a,%esi
 11a:	b0 00                	mov    $0x0,%al
 11c:	e8 00 00 00 00       	call   121 <main+0xe1>
 121:	f3 0f 10 45 f8       	movss  -0x8(%rbp),%xmm0
 126:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 12a:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 131:	00 00 00 
 134:	b0 01                	mov    $0x1,%al
 136:	e8 00 00 00 00       	call   13b <main+0xfb>
 13b:	8b 34 25 00 00 00 00 	mov    0x0,%esi
 142:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 149:	00 00 00 
 14c:	b0 00                	mov    $0x0,%al
 14e:	e8 00 00 00 00       	call   153 <main+0x113>
 153:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 15a:	00 00 00 
 15d:	be f4 01 00 00       	mov    $0x1f4,%esi
 162:	b0 00                	mov    $0x0,%al
 164:	e8 00 00 00 00       	call   169 <main+0x129>
 169:	31 c0                	xor    %eax,%eax
 16b:	48 83 c4 20          	add    $0x20,%rsp
 16f:	5d                   	pop    %rbp
 170:	c3                   	ret    
