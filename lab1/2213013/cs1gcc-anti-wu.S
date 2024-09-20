
cs1gcc：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 83 2f 00 00 	bnd jmp *0x2f83(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 7d 2f 00 00 	bnd jmp *0x2f7d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001080 <puts@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 3fb8 <puts@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <__stack_chk_fail@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 25 2f 00 00 	bnd jmp *0x2f25(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <printf@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 1d 2f 00 00 	bnd jmp *0x2f1d(%rip)        # 3fc8 <printf@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <__isoc99_scanf@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 15 2f 00 00 	bnd jmp *0x2f15(%rip)        # 3fd0 <__isoc99_scanf@GLIBC_2.7>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	49 89 d1             	mov    %rdx,%r9
    10c9:	5e                   	pop    %rsi
    10ca:	48 89 e2             	mov    %rsp,%rdx
    10cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10d1:	50                   	push   %rax
    10d2:	54                   	push   %rsp
    10d3:	45 31 c0             	xor    %r8d,%r8d
    10d6:	31 c9                	xor    %ecx,%ecx
    10d8:	48 8d 3d fc 00 00 00 	lea    0xfc(%rip),%rdi        # 11db <main>
    10df:	ff 15 f3 2e 00 00    	call   *0x2ef3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt    
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 21 2f 00 00 	lea    0x2f21(%rip),%rdi        # 4018 <__TMC_END__>
    10f7:	48 8d 05 1a 2f 00 00 	lea    0x2f1a(%rip),%rax        # 4018 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 d6 2e 00 00 	mov    0x2ed6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d f1 2e 00 00 	lea    0x2ef1(%rip),%rdi        # 4018 <__TMC_END__>
    1127:	48 8d 35 ea 2e 00 00 	lea    0x2eea(%rip),%rsi        # 4018 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	80 3d a9 2e 00 00 00 	cmpb   $0x0,0x2ea9(%rip)        # 4014 <completed.0>
    116b:	75 2b                	jne    1198 <__do_global_dtors_aux+0x38>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 82 2e 00 00 	cmpq   $0x0,0x2e82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0c                	je     1187 <__do_global_dtors_aux+0x27>
    117b:	48 8b 3d 86 2e 00 00 	mov    0x2e86(%rip),%rdi        # 4008 <__dso_handle>
    1182:	e8 e9 fe ff ff       	call   1070 <__cxa_finalize@plt>
    1187:	e8 64 ff ff ff       	call   10f0 <deregister_tm_clones>
    118c:	c6 05 81 2e 00 00 01 	movb   $0x1,0x2e81(%rip)        # 4014 <completed.0>
    1193:	5d                   	pop    %rbp
    1194:	c3                   	ret    
    1195:	0f 1f 00             	nopl   (%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	e9 77 ff ff ff       	jmp    1120 <register_tm_clones>

00000000000011a9 <print_message>:
    11a9:	f3 0f 1e fa          	endbr64 
    11ad:	55                   	push   %rbp
    11ae:	48 89 e5             	mov    %rsp,%rbp
    11b1:	48 8d 05 54 0e 00 00 	lea    0xe54(%rip),%rax        # 200c <CONST+0x4>
    11b8:	48 89 c7             	mov    %rax,%rdi
    11bb:	e8 c0 fe ff ff       	call   1080 <puts@plt>
    11c0:	90                   	nop
    11c1:	5d                   	pop    %rbp
    11c2:	c3                   	ret    

00000000000011c3 <add>:
    11c3:	f3 0f 1e fa          	endbr64 
    11c7:	55                   	push   %rbp
    11c8:	48 89 e5             	mov    %rsp,%rbp
    11cb:	89 7d fc             	mov    %edi,-0x4(%rbp)
    11ce:	89 75 f8             	mov    %esi,-0x8(%rbp)
    11d1:	8b 55 fc             	mov    -0x4(%rbp),%edx
    11d4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    11d7:	01 d0                	add    %edx,%eax
    11d9:	5d                   	pop    %rbp
    11da:	c3                   	ret    

00000000000011db <main>:
    11db:	f3 0f 1e fa          	endbr64 
    11df:	55                   	push   %rbp
    11e0:	48 89 e5             	mov    %rsp,%rbp
    11e3:	48 83 ec 20          	sub    $0x20,%rsp
    11e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11ee:	00 00 
    11f0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	f3 0f 10 05 8a 0e 00 	movss  0xe8a(%rip),%xmm0        # 2088 <CONST+0x80>
    11fd:	00 
    11fe:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
    1203:	f3 0f 10 05 81 0e 00 	movss  0xe81(%rip),%xmm0        # 208c <CONST+0x84>
    120a:	00 
    120b:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
    1210:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1214:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    1219:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    121d:	48 89 c6             	mov    %rax,%rsi
    1220:	48 8d 05 ff 0d 00 00 	lea    0xdff(%rip),%rax        # 2026 <CONST+0x1e>
    1227:	48 89 c7             	mov    %rax,%rdi
    122a:	b8 00 00 00 00       	mov    $0x0,%eax
    122f:	e8 7c fe ff ff       	call   10b0 <__isoc99_scanf@plt>
    1234:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    123b:	eb 33                	jmp    1270 <main+0x95>
    123d:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    1242:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1246:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    124a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    124e:	f2 0f 2a 55 e4       	cvtsi2sdl -0x1c(%rbp),%xmm2
    1253:	f2 0f 10 05 35 0e 00 	movsd  0xe35(%rip),%xmm0        # 2090 <CONST+0x88>
    125a:	00 
    125b:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    125f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1263:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    1267:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    126c:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    1270:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1273:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    1276:	7e c5                	jle    123d <main+0x62>
    1278:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
    127d:	f3 0f 2c d0          	cvttss2si %xmm0,%edx
    1281:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
    1286:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    128a:	89 d6                	mov    %edx,%esi
    128c:	89 c7                	mov    %eax,%edi
    128e:	e8 30 ff ff ff       	call   11c3 <add>
    1293:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1296:	b8 00 00 00 00       	mov    $0x0,%eax
    129b:	e8 09 ff ff ff       	call   11a9 <print_message>
    12a0:	8b 45 e8             	mov    -0x18(%rbp),%eax
    12a3:	89 c6                	mov    %eax,%esi
    12a5:	48 8d 05 7d 0d 00 00 	lea    0xd7d(%rip),%rax        # 2029 <CONST+0x21>
    12ac:	48 89 c7             	mov    %rax,%rdi
    12af:	b8 00 00 00 00       	mov    $0x0,%eax
    12b4:	e8 e7 fd ff ff       	call   10a0 <printf@plt>
    12b9:	48 8b 05 d8 0d 00 00 	mov    0xdd8(%rip),%rax        # 2098 <CONST+0x90>
    12c0:	66 48 0f 6e c0       	movq   %rax,%xmm0
    12c5:	48 8d 05 6a 0d 00 00 	lea    0xd6a(%rip),%rax        # 2036 <CONST+0x2e>
    12cc:	48 89 c7             	mov    %rax,%rdi
    12cf:	b8 01 00 00 00       	mov    $0x1,%eax
    12d4:	e8 c7 fd ff ff       	call   10a0 <printf@plt>
    12d9:	be 2a 00 00 00       	mov    $0x2a,%esi
    12de:	48 8d 05 5f 0d 00 00 	lea    0xd5f(%rip),%rax        # 2044 <CONST+0x3c>
    12e5:	48 89 c7             	mov    %rax,%rdi
    12e8:	b8 00 00 00 00       	mov    $0x0,%eax
    12ed:	e8 ae fd ff ff       	call   10a0 <printf@plt>
    12f2:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    12f7:	66 0f ef db          	pxor   %xmm3,%xmm3
    12fb:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
    12ff:	66 48 0f 7e d8       	movq   %xmm3,%rax
    1304:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1309:	48 8d 05 42 0d 00 00 	lea    0xd42(%rip),%rax        # 2052 <CONST+0x4a>
    1310:	48 89 c7             	mov    %rax,%rdi
    1313:	b8 01 00 00 00       	mov    $0x1,%eax
    1318:	e8 83 fd ff ff       	call   10a0 <printf@plt>
    131d:	8b 05 ed 2c 00 00    	mov    0x2ced(%rip),%eax        # 4010 <qj>
    1323:	89 c6                	mov    %eax,%esi
    1325:	48 8d 05 30 0d 00 00 	lea    0xd30(%rip),%rax        # 205c <CONST+0x54>
    132c:	48 89 c7             	mov    %rax,%rdi
    132f:	b8 00 00 00 00       	mov    $0x0,%eax
    1334:	e8 67 fd ff ff       	call   10a0 <printf@plt>
    1339:	b8 f4 01 00 00       	mov    $0x1f4,%eax
    133e:	89 c6                	mov    %eax,%esi
    1340:	48 8d 05 2a 0d 00 00 	lea    0xd2a(%rip),%rax        # 2071 <CONST+0x69>
    1347:	48 89 c7             	mov    %rax,%rdi
    134a:	b8 00 00 00 00       	mov    $0x0,%eax
    134f:	e8 4c fd ff ff       	call   10a0 <printf@plt>
    1354:	b8 00 00 00 00       	mov    $0x0,%eax
    1359:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    135d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1364:	00 00 
    1366:	74 05                	je     136d <main+0x192>
    1368:	e8 23 fd ff ff       	call   1090 <__stack_chk_fail@plt>
    136d:	c9                   	leave  
    136e:	c3                   	ret    

Disassembly of section .fini:

0000000000001370 <_fini>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	48 83 ec 08          	sub    $0x8,%rsp
    1378:	48 83 c4 08          	add    $0x8,%rsp
    137c:	c3                   	ret    
