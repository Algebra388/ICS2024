
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop
    1200:	f3 0f 1e fa          	endbr64 
    1204:	68 1d 00 00 00       	push   $0x1d
    1209:	f2 e9 11 fe ff ff    	bnd jmp 1020 <_init+0x20>
    120f:	90                   	nop

Disassembly of section .plt.got:

0000000000001210 <__cxa_finalize@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001220 <getenv@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6ee8 <getenv@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <free@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6ef0 <free@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6ef8 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f00 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <__read_chk@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f08 <__read_chk@GLIBC_2.4>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <puts@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f10 <puts@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <write@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f18 <write@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <strlen@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f20 <strlen@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <alarm@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <close@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f40 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f48 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f50 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f58 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <memcpy@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f60 <memcpy@GLIBC_2.14>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <malloc@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f68 <malloc@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <fflush@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f70 <fflush@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__isoc99_sscanf@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f78 <__isoc99_sscanf@GLIBC_2.7>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fgets_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6f80 <__fgets_chk@GLIBC_2.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__printf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <fopen@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <gethostname@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <exit@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <connect@plt>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__fprintf_chk@plt>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <sleep@plt>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <__ctype_b_loc@plt>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013e0 <__sprintf_chk@plt>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <socket@plt>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001400 <_start>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	31 ed                	xor    %ebp,%ebp
    1406:	49 89 d1             	mov    %rdx,%r9
    1409:	5e                   	pop    %rsi
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1411:	50                   	push   %rax
    1412:	54                   	push   %rsp
    1413:	45 31 c0             	xor    %r8d,%r8d
    1416:	31 c9                	xor    %ecx,%ecx
    1418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14e9 <main>
    141f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    1425:	f4                   	hlt    
    1426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <deregister_tm_clones>:
    1430:	48 8d 3d 29 70 00 00 	lea    0x7029(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1437:	48 8d 05 22 70 00 00 	lea    0x7022(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    143e:	48 39 f8             	cmp    %rdi,%rax
    1441:	74 15                	je     1458 <deregister_tm_clones+0x28>
    1443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    144a:	48 85 c0             	test   %rax,%rax
    144d:	74 09                	je     1458 <deregister_tm_clones+0x28>
    144f:	ff e0                	jmp    *%rax
    1451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <register_tm_clones>:
    1460:	48 8d 3d f9 6f 00 00 	lea    0x6ff9(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1467:	48 8d 35 f2 6f 00 00 	lea    0x6ff2(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    146e:	48 29 fe             	sub    %rdi,%rsi
    1471:	48 89 f0             	mov    %rsi,%rax
    1474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1478:	48 c1 f8 03          	sar    $0x3,%rax
    147c:	48 01 c6             	add    %rax,%rsi
    147f:	48 d1 fe             	sar    %rsi
    1482:	74 14                	je     1498 <register_tm_clones+0x38>
    1484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    148b:	48 85 c0             	test   %rax,%rax
    148e:	74 08                	je     1498 <register_tm_clones+0x38>
    1490:	ff e0                	jmp    *%rax
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1498:	c3                   	ret    
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	80 3d dd 6f 00 00 00 	cmpb   $0x0,0x6fdd(%rip)        # 8488 <completed.0>
    14ab:	75 2b                	jne    14d8 <__do_global_dtors_aux+0x38>
    14ad:	55                   	push   %rbp
    14ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    14b5:	00 
    14b6:	48 89 e5             	mov    %rsp,%rbp
    14b9:	74 0c                	je     14c7 <__do_global_dtors_aux+0x27>
    14bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 7008 <__dso_handle>
    14c2:	e8 49 fd ff ff       	call   1210 <__cxa_finalize@plt>
    14c7:	e8 64 ff ff ff       	call   1430 <deregister_tm_clones>
    14cc:	c6 05 b5 6f 00 00 01 	movb   $0x1,0x6fb5(%rip)        # 8488 <completed.0>
    14d3:	5d                   	pop    %rbp
    14d4:	c3                   	ret    
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	c3                   	ret    
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <frame_dummy>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	e9 77 ff ff ff       	jmp    1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9:	f3 0f 1e fa          	endbr64 
    14ed:	53                   	push   %rbx
    14ee:	83 ff 01             	cmp    $0x1,%edi
    14f1:	74 51                	je     1544 <main+0x5b>
    14f3:	48 89 f3             	mov    %rsi,%rbx
    14f6:	83 ff 02             	cmp    $0x2,%edi
    14f9:	75 7b                	jne    1576 <main+0x8d>
    14fb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14ff:	48 8d 35 78 32 00 00 	lea    0x3278(%rip),%rsi        # 477e <transition_table+0x3de>
    1506:	e8 65 fe ff ff       	call   1370 <fopen@plt>
    150b:	48 89 05 7e 6f 00 00 	mov    %rax,0x6f7e(%rip)        # 8490 <infile>
    1512:	48 85 c0             	test   %rax,%rax
    1515:	74 3d                	je     1554 <main+0x6b>
    1517:	e8 67 09 00 00       	call   1e83 <initialize_bomb>
    151c:	48 89 c3             	mov    %rax,%rbx
    151f:	81 38 11 fa 21 20    	cmpl   $0x2021fa11,(%rax)
    1525:	74 72                	je     1599 <main+0xb0>
    1527:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 4090 <_IO_stdin_used+0x90>
    152e:	bf 01 00 00 00       	mov    $0x1,%edi
    1533:	b8 00 00 00 00       	mov    $0x0,%eax
    1538:	e8 23 fe ff ff       	call   1360 <__printf_chk@plt>
    153d:	b8 00 00 00 00       	mov    $0x0,%eax
    1542:	5b                   	pop    %rbx
    1543:	c3                   	ret    
    1544:	48 8b 05 25 6f 00 00 	mov    0x6f25(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    154b:	48 89 05 3e 6f 00 00 	mov    %rax,0x6f3e(%rip)        # 8490 <infile>
    1552:	eb c3                	jmp    1517 <main+0x2e>
    1554:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1558:	48 8b 13             	mov    (%rbx),%rdx
    155b:	48 8d 35 a2 2a 00 00 	lea    0x2aa2(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    1562:	bf 01 00 00 00       	mov    $0x1,%edi
    1567:	e8 f4 fd ff ff       	call   1360 <__printf_chk@plt>
    156c:	bf 08 00 00 00       	mov    $0x8,%edi
    1571:	e8 1a fe ff ff       	call   1390 <exit@plt>
    1576:	48 8b 16             	mov    (%rsi),%rdx
    1579:	48 8d 35 a1 2a 00 00 	lea    0x2aa1(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    1580:	bf 01 00 00 00       	mov    $0x1,%edi
    1585:	b8 00 00 00 00       	mov    $0x0,%eax
    158a:	e8 d1 fd ff ff       	call   1360 <__printf_chk@plt>
    158f:	bf 08 00 00 00       	mov    $0x8,%edi
    1594:	e8 f7 fd ff ff       	call   1390 <exit@plt>
    1599:	48 8d 3d 30 2b 00 00 	lea    0x2b30(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    15a0:	e8 cb fc ff ff       	call   1270 <puts@plt>
    15a5:	48 8d 3d 5c 2b 00 00 	lea    0x2b5c(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    15ac:	e8 bf fc ff ff       	call   1270 <puts@plt>
    15b1:	e8 5e 0c 00 00       	call   2214 <read_line>
    15b6:	48 89 c7             	mov    %rax,%rdi
    15b9:	e8 da 01 00 00       	call   1798 <phase_1>
    15be:	48 89 df             	mov    %rbx,%rdi
    15c1:	e8 8c 0d 00 00       	call   2352 <phase_defused>
    15c6:	48 8d 3d 7b 2b 00 00 	lea    0x2b7b(%rip),%rdi        # 4148 <_IO_stdin_used+0x148>
    15cd:	e8 9e fc ff ff       	call   1270 <puts@plt>
    15d2:	e8 3d 0c 00 00       	call   2214 <read_line>
    15d7:	48 89 c7             	mov    %rax,%rdi
    15da:	e8 dd 01 00 00       	call   17bc <phase_2>
    15df:	48 89 df             	mov    %rbx,%rdi
    15e2:	e8 6b 0d 00 00       	call   2352 <phase_defused>
    15e7:	48 8d 3d 4d 2a 00 00 	lea    0x2a4d(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    15ee:	e8 7d fc ff ff       	call   1270 <puts@plt>
    15f3:	e8 1c 0c 00 00       	call   2214 <read_line>
    15f8:	48 89 c7             	mov    %rax,%rdi
    15fb:	e8 3d 02 00 00       	call   183d <phase_3>
    1600:	48 89 df             	mov    %rbx,%rdi
    1603:	e8 4a 0d 00 00       	call   2352 <phase_defused>
    1608:	48 8d 3d 49 2a 00 00 	lea    0x2a49(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    160f:	e8 5c fc ff ff       	call   1270 <puts@plt>
    1614:	e8 fb 0b 00 00       	call   2214 <read_line>
    1619:	48 89 c7             	mov    %rax,%rdi
    161c:	e8 ea 03 00 00       	call   1a0b <phase_4>
    1621:	48 89 df             	mov    %rbx,%rdi
    1624:	e8 29 0d 00 00       	call   2352 <phase_defused>
    1629:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 4178 <_IO_stdin_used+0x178>
    1630:	e8 3b fc ff ff       	call   1270 <puts@plt>
    1635:	e8 da 0b 00 00       	call   2214 <read_line>
    163a:	48 89 c7             	mov    %rax,%rdi
    163d:	e8 47 04 00 00       	call   1a89 <phase_5>
    1642:	48 89 df             	mov    %rbx,%rdi
    1645:	e8 08 0d 00 00       	call   2352 <phase_defused>
    164a:	48 8d 3d 20 2a 00 00 	lea    0x2a20(%rip),%rdi        # 4071 <_IO_stdin_used+0x71>
    1651:	e8 1a fc ff ff       	call   1270 <puts@plt>
    1656:	e8 b9 0b 00 00       	call   2214 <read_line>
    165b:	48 89 c7             	mov    %rax,%rdi
    165e:	e8 b7 04 00 00       	call   1b1a <phase_6>
    1663:	48 89 df             	mov    %rbx,%rdi
    1666:	e8 e7 0c 00 00       	call   2352 <phase_defused>
    166b:	48 89 df             	mov    %rbx,%rdi
    166e:	e8 bd fb ff ff       	call   1230 <free@plt>
    1673:	e9 c5 fe ff ff       	jmp    153d <main+0x54>

0000000000001678 <abracadabra>:
    1678:	f3 0f 1e fa          	endbr64 
    167c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1683:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    168a:	00 00 
    168c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1693:	00 
    1694:	31 c0                	xor    %eax,%eax
    1696:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    169b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    16a0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    16a5:	48 8d 35 ef 2a 00 00 	lea    0x2aef(%rip),%rsi        # 419b <_IO_stdin_used+0x19b>
    16ac:	48 8d 3d d5 6f 00 00 	lea    0x6fd5(%rip),%rdi        # 8688 <input_strings+0x168>
    16b3:	e8 88 fc ff ff       	call   1340 <__isoc99_sscanf@plt>
    16b8:	83 f8 03             	cmp    $0x3,%eax
    16bb:	74 20                	je     16dd <abracadabra+0x65>
    16bd:	b8 00 00 00 00       	mov    $0x0,%eax
    16c2:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    16c9:	00 
    16ca:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16d1:	00 00 
    16d3:	75 2b                	jne    1700 <abracadabra+0x88>
    16d5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16dc:	c3                   	ret    
    16dd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16e2:	48 8d 35 e7 2a 00 00 	lea    0x2ae7(%rip),%rsi        # 41d0 <_IO_stdin_used+0x1d0>
    16e9:	e8 46 07 00 00       	call   1e34 <strings_not_equal>
    16ee:	85 c0                	test   %eax,%eax
    16f0:	74 07                	je     16f9 <abracadabra+0x81>
    16f2:	b8 00 00 00 00       	mov    $0x0,%eax
    16f7:	eb c9                	jmp    16c2 <abracadabra+0x4a>
    16f9:	b8 01 00 00 00       	mov    $0x1,%eax
    16fe:	eb c2                	jmp    16c2 <abracadabra+0x4a>
    1700:	e8 9b fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001705 <alohomora>:
    1705:	f3 0f 1e fa          	endbr64 
    1709:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    1710:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1717:	00 00 
    1719:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    171e:	31 c0                	xor    %eax,%eax
    1720:	48 8d 05 71 6e 00 00 	lea    0x6e71(%rip),%rax        # 8598 <input_strings+0x78>
    1727:	eb 04                	jmp    172d <alohomora+0x28>
    1729:	48 83 c0 01          	add    $0x1,%rax
    172d:	80 38 00             	cmpb   $0x0,(%rax)
    1730:	75 f7                	jne    1729 <alohomora+0x24>
    1732:	48 83 e8 01          	sub    $0x1,%rax
    1736:	48 89 e2             	mov    %rsp,%rdx
    1739:	eb 0a                	jmp    1745 <alohomora+0x40>
    173b:	88 0a                	mov    %cl,(%rdx)
    173d:	48 83 c2 01          	add    $0x1,%rdx
    1741:	48 83 e8 01          	sub    $0x1,%rax
    1745:	0f b6 08             	movzbl (%rax),%ecx
    1748:	80 f9 20             	cmp    $0x20,%cl
    174b:	74 0c                	je     1759 <alohomora+0x54>
    174d:	48 8d 35 44 6e 00 00 	lea    0x6e44(%rip),%rsi        # 8598 <input_strings+0x78>
    1754:	48 39 f0             	cmp    %rsi,%rax
    1757:	75 e2                	jne    173b <alohomora+0x36>
    1759:	c6 02 00             	movb   $0x0,(%rdx)
    175c:	48 89 e7             	mov    %rsp,%rdi
    175f:	48 8d 35 92 2a 00 00 	lea    0x2a92(%rip),%rsi        # 41f8 <_IO_stdin_used+0x1f8>
    1766:	e8 c9 06 00 00       	call   1e34 <strings_not_equal>
    176b:	85 c0                	test   %eax,%eax
    176d:	74 1d                	je     178c <alohomora+0x87>
    176f:	b8 00 00 00 00       	mov    $0x0,%eax
    1774:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1779:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1780:	00 00 
    1782:	75 0f                	jne    1793 <alohomora+0x8e>
    1784:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    178b:	c3                   	ret    
    178c:	b8 01 00 00 00       	mov    $0x1,%eax
    1791:	eb e1                	jmp    1774 <alohomora+0x6f>
    1793:	e8 08 fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001798 <phase_1>:
    1798:	f3 0f 1e fa          	endbr64 
    179c:	48 83 ec 08          	sub    $0x8,%rsp
    17a0:	48 8d 35 79 2a 00 00 	lea    0x2a79(%rip),%rsi        # 4220 <_IO_stdin_used+0x220>
    17a7:	e8 88 06 00 00       	call   1e34 <strings_not_equal>
    17ac:	85 c0                	test   %eax,%eax
    17ae:	75 05                	jne    17b5 <phase_1+0x1d>
    17b0:	48 83 c4 08          	add    $0x8,%rsp
    17b4:	c3                   	ret    
    17b5:	e8 8f 09 00 00       	call   2149 <explode_bomb>
    17ba:	eb f4                	jmp    17b0 <phase_1+0x18>

00000000000017bc <phase_2>:
    17bc:	f3 0f 1e fa          	endbr64 
    17c0:	53                   	push   %rbx
    17c1:	48 83 ec 20          	sub    $0x20,%rsp
    17c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17cc:	00 00 
    17ce:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17d3:	31 c0                	xor    %eax,%eax
    17d5:	48 89 e6             	mov    %rsp,%rsi
    17d8:	e8 f2 09 00 00       	call   21cf <read_six_numbers>
    17dd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    17e1:	75 07                	jne    17ea <phase_2+0x2e>
    17e3:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    17e8:	74 05                	je     17ef <phase_2+0x33>
    17ea:	e8 5a 09 00 00       	call   2149 <explode_bomb>
    17ef:	bb 02 00 00 00       	mov    $0x2,%ebx
    17f4:	eb 03                	jmp    17f9 <phase_2+0x3d>
    17f6:	83 c3 01             	add    $0x1,%ebx
    17f9:	83 fb 05             	cmp    $0x5,%ebx
    17fc:	7f 24                	jg     1822 <phase_2+0x66>
    17fe:	48 63 c3             	movslq %ebx,%rax
    1801:	8d 53 fe             	lea    -0x2(%rbx),%edx
    1804:	48 63 d2             	movslq %edx,%rdx
    1807:	8b 0c 94             	mov    (%rsp,%rdx,4),%ecx
    180a:	8d 53 ff             	lea    -0x1(%rbx),%edx
    180d:	48 63 d2             	movslq %edx,%rdx
    1810:	8b 14 94             	mov    (%rsp,%rdx,4),%edx
    1813:	8d 14 4a             	lea    (%rdx,%rcx,2),%edx
    1816:	39 14 84             	cmp    %edx,(%rsp,%rax,4)
    1819:	74 db                	je     17f6 <phase_2+0x3a>
    181b:	e8 29 09 00 00       	call   2149 <explode_bomb>
    1820:	eb d4                	jmp    17f6 <phase_2+0x3a>
    1822:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1827:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    182e:	00 00 
    1830:	75 06                	jne    1838 <phase_2+0x7c>
    1832:	48 83 c4 20          	add    $0x20,%rsp
    1836:	5b                   	pop    %rbx
    1837:	c3                   	ret    
    1838:	e8 63 fa ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000183d <phase_3>:
    183d:	f3 0f 1e fa          	endbr64 
    1841:	48 83 ec 28          	sub    $0x28,%rsp
    1845:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    184c:	00 00 
    184e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1853:	31 c0                	xor    %eax,%eax
    1855:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    185a:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    185f:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1864:	48 8d 35 39 29 00 00 	lea    0x2939(%rip),%rsi        # 41a4 <_IO_stdin_used+0x1a4>
    186b:	e8 d0 fa ff ff       	call   1340 <__isoc99_sscanf@plt>
    1870:	83 f8 02             	cmp    $0x2,%eax
    1873:	7e 20                	jle    1895 <phase_3+0x58>
    1875:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    187a:	0f 87 19 01 00 00    	ja     1999 <phase_3+0x15c>
    1880:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1884:	48 8d 15 d5 2a 00 00 	lea    0x2ad5(%rip),%rdx        # 4360 <_IO_stdin_used+0x360>
    188b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    188f:	48 01 d0             	add    %rdx,%rax
    1892:	3e ff e0             	notrack jmp *%rax
    1895:	e8 af 08 00 00       	call   2149 <explode_bomb>
    189a:	eb d9                	jmp    1875 <phase_3+0x38>
    189c:	81 7c 24 14 cf 02 00 	cmpl   $0x2cf,0x14(%rsp)
    18a3:	00 
    18a4:	75 0a                	jne    18b0 <phase_3+0x73>
    18a6:	b8 6c 00 00 00       	mov    $0x6c,%eax
    18ab:	e9 f3 00 00 00       	jmp    19a3 <phase_3+0x166>
    18b0:	e8 94 08 00 00       	call   2149 <explode_bomb>
    18b5:	b8 6c 00 00 00       	mov    $0x6c,%eax
    18ba:	e9 e4 00 00 00       	jmp    19a3 <phase_3+0x166>
    18bf:	81 7c 24 14 7c 02 00 	cmpl   $0x27c,0x14(%rsp)
    18c6:	00 
    18c7:	75 0a                	jne    18d3 <phase_3+0x96>
    18c9:	b8 7a 00 00 00       	mov    $0x7a,%eax
    18ce:	e9 d0 00 00 00       	jmp    19a3 <phase_3+0x166>
    18d3:	e8 71 08 00 00       	call   2149 <explode_bomb>
    18d8:	b8 7a 00 00 00       	mov    $0x7a,%eax
    18dd:	e9 c1 00 00 00       	jmp    19a3 <phase_3+0x166>
    18e2:	81 7c 24 14 e3 01 00 	cmpl   $0x1e3,0x14(%rsp)
    18e9:	00 
    18ea:	75 0a                	jne    18f6 <phase_3+0xb9>
    18ec:	b8 68 00 00 00       	mov    $0x68,%eax
    18f1:	e9 ad 00 00 00       	jmp    19a3 <phase_3+0x166>
    18f6:	e8 4e 08 00 00       	call   2149 <explode_bomb>
    18fb:	b8 68 00 00 00       	mov    $0x68,%eax
    1900:	e9 9e 00 00 00       	jmp    19a3 <phase_3+0x166>
    1905:	81 7c 24 14 a4 02 00 	cmpl   $0x2a4,0x14(%rsp)
    190c:	00 
    190d:	75 0a                	jne    1919 <phase_3+0xdc>
    190f:	b8 79 00 00 00       	mov    $0x79,%eax
    1914:	e9 8a 00 00 00       	jmp    19a3 <phase_3+0x166>
    1919:	e8 2b 08 00 00       	call   2149 <explode_bomb>
    191e:	b8 79 00 00 00       	mov    $0x79,%eax
    1923:	eb 7e                	jmp    19a3 <phase_3+0x166>
    1925:	81 7c 24 14 e2 03 00 	cmpl   $0x3e2,0x14(%rsp)
    192c:	00 
    192d:	75 07                	jne    1936 <phase_3+0xf9>
    192f:	b8 76 00 00 00       	mov    $0x76,%eax
    1934:	eb 6d                	jmp    19a3 <phase_3+0x166>
    1936:	e8 0e 08 00 00       	call   2149 <explode_bomb>
    193b:	b8 76 00 00 00       	mov    $0x76,%eax
    1940:	eb 61                	jmp    19a3 <phase_3+0x166>
    1942:	81 7c 24 14 88 01 00 	cmpl   $0x188,0x14(%rsp)
    1949:	00 
    194a:	75 07                	jne    1953 <phase_3+0x116>
    194c:	b8 6c 00 00 00       	mov    $0x6c,%eax
    1951:	eb 50                	jmp    19a3 <phase_3+0x166>
    1953:	e8 f1 07 00 00       	call   2149 <explode_bomb>
    1958:	b8 6c 00 00 00       	mov    $0x6c,%eax
    195d:	eb 44                	jmp    19a3 <phase_3+0x166>
    195f:	81 7c 24 14 33 03 00 	cmpl   $0x333,0x14(%rsp)
    1966:	00 
    1967:	75 07                	jne    1970 <phase_3+0x133>
    1969:	b8 64 00 00 00       	mov    $0x64,%eax
    196e:	eb 33                	jmp    19a3 <phase_3+0x166>
    1970:	e8 d4 07 00 00       	call   2149 <explode_bomb>
    1975:	b8 64 00 00 00       	mov    $0x64,%eax
    197a:	eb 27                	jmp    19a3 <phase_3+0x166>
    197c:	81 7c 24 14 b5 00 00 	cmpl   $0xb5,0x14(%rsp)
    1983:	00 
    1984:	75 07                	jne    198d <phase_3+0x150>
    1986:	b8 6f 00 00 00       	mov    $0x6f,%eax
    198b:	eb 16                	jmp    19a3 <phase_3+0x166>
    198d:	e8 b7 07 00 00       	call   2149 <explode_bomb>
    1992:	b8 6f 00 00 00       	mov    $0x6f,%eax
    1997:	eb 0a                	jmp    19a3 <phase_3+0x166>
    1999:	e8 ab 07 00 00       	call   2149 <explode_bomb>
    199e:	b8 71 00 00 00       	mov    $0x71,%eax
    19a3:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    19a7:	75 15                	jne    19be <phase_3+0x181>
    19a9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    19ae:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19b5:	00 00 
    19b7:	75 0c                	jne    19c5 <phase_3+0x188>
    19b9:	48 83 c4 28          	add    $0x28,%rsp
    19bd:	c3                   	ret    
    19be:	e8 86 07 00 00       	call   2149 <explode_bomb>
    19c3:	eb e4                	jmp    19a9 <phase_3+0x16c>
    19c5:	e8 d6 f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000019ca <func4>:
    19ca:	f3 0f 1e fa          	endbr64 
    19ce:	48 83 ec 08          	sub    $0x8,%rsp
    19d2:	89 d1                	mov    %edx,%ecx
    19d4:	29 f1                	sub    %esi,%ecx
    19d6:	89 c8                	mov    %ecx,%eax
    19d8:	c1 e8 1f             	shr    $0x1f,%eax
    19db:	01 c8                	add    %ecx,%eax
    19dd:	d1 f8                	sar    %eax
    19df:	01 f0                	add    %esi,%eax
    19e1:	39 f8                	cmp    %edi,%eax
    19e3:	7f 0c                	jg     19f1 <func4+0x27>
    19e5:	7c 16                	jl     19fd <func4+0x33>
    19e7:	b8 00 00 00 00       	mov    $0x0,%eax
    19ec:	48 83 c4 08          	add    $0x8,%rsp
    19f0:	c3                   	ret    
    19f1:	8d 50 ff             	lea    -0x1(%rax),%edx
    19f4:	e8 d1 ff ff ff       	call   19ca <func4>
    19f9:	01 c0                	add    %eax,%eax
    19fb:	eb ef                	jmp    19ec <func4+0x22>
    19fd:	8d 70 01             	lea    0x1(%rax),%esi
    1a00:	e8 c5 ff ff ff       	call   19ca <func4>
    1a05:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1a09:	eb e1                	jmp    19ec <func4+0x22>

0000000000001a0b <phase_4>:
    1a0b:	f3 0f 1e fa          	endbr64 
    1a0f:	48 83 ec 18          	sub    $0x18,%rsp
    1a13:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a1a:	00 00 
    1a1c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1a21:	31 c0                	xor    %eax,%eax
    1a23:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1a28:	48 89 e2             	mov    %rsp,%rdx
    1a2b:	48 8d 35 ae 2c 00 00 	lea    0x2cae(%rip),%rsi        # 46e0 <transition_table+0x340>
    1a32:	e8 09 f9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    1a37:	83 f8 02             	cmp    $0x2,%eax
    1a3a:	75 0c                	jne    1a48 <phase_4+0x3d>
    1a3c:	8b 04 24             	mov    (%rsp),%eax
    1a3f:	85 c0                	test   %eax,%eax
    1a41:	78 05                	js     1a48 <phase_4+0x3d>
    1a43:	83 f8 0e             	cmp    $0xe,%eax
    1a46:	7e 05                	jle    1a4d <phase_4+0x42>
    1a48:	e8 fc 06 00 00       	call   2149 <explode_bomb>
    1a4d:	ba 0e 00 00 00       	mov    $0xe,%edx
    1a52:	be 00 00 00 00       	mov    $0x0,%esi
    1a57:	8b 3c 24             	mov    (%rsp),%edi
    1a5a:	e8 6b ff ff ff       	call   19ca <func4>
    1a5f:	85 c0                	test   %eax,%eax
    1a61:	75 07                	jne    1a6a <phase_4+0x5f>
    1a63:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
    1a68:	74 05                	je     1a6f <phase_4+0x64>
    1a6a:	e8 da 06 00 00       	call   2149 <explode_bomb>
    1a6f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a74:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1a7b:	00 00 
    1a7d:	75 05                	jne    1a84 <phase_4+0x79>
    1a7f:	48 83 c4 18          	add    $0x18,%rsp
    1a83:	c3                   	ret    
    1a84:	e8 17 f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001a89 <phase_5>:
    1a89:	f3 0f 1e fa          	endbr64 
    1a8d:	53                   	push   %rbx
    1a8e:	48 83 ec 10          	sub    $0x10,%rsp
    1a92:	48 89 fb             	mov    %rdi,%rbx
    1a95:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a9c:	00 00 
    1a9e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1aa3:	31 c0                	xor    %eax,%eax
    1aa5:	e8 72 03 00 00       	call   1e1c <string_length>
    1aaa:	83 f8 06             	cmp    $0x6,%eax
    1aad:	75 07                	jne    1ab6 <phase_5+0x2d>
    1aaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab4:	eb 23                	jmp    1ad9 <phase_5+0x50>
    1ab6:	e8 8e 06 00 00       	call   2149 <explode_bomb>
    1abb:	eb f2                	jmp    1aaf <phase_5+0x26>
    1abd:	48 63 c8             	movslq %eax,%rcx
    1ac0:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    1ac4:	83 e2 0f             	and    $0xf,%edx
    1ac7:	48 8d 35 b2 28 00 00 	lea    0x28b2(%rip),%rsi        # 4380 <array.0>
    1ace:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    1ad2:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    1ad6:	83 c0 01             	add    $0x1,%eax
    1ad9:	83 f8 05             	cmp    $0x5,%eax
    1adc:	7e df                	jle    1abd <phase_5+0x34>
    1ade:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    1ae3:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1ae8:	48 8d 35 be 26 00 00 	lea    0x26be(%rip),%rsi        # 41ad <_IO_stdin_used+0x1ad>
    1aef:	e8 40 03 00 00       	call   1e34 <strings_not_equal>
    1af4:	85 c0                	test   %eax,%eax
    1af6:	75 16                	jne    1b0e <phase_5+0x85>
    1af8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1afd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b04:	00 00 
    1b06:	75 0d                	jne    1b15 <phase_5+0x8c>
    1b08:	48 83 c4 10          	add    $0x10,%rsp
    1b0c:	5b                   	pop    %rbx
    1b0d:	c3                   	ret    
    1b0e:	e8 36 06 00 00       	call   2149 <explode_bomb>
    1b13:	eb e3                	jmp    1af8 <phase_5+0x6f>
    1b15:	e8 86 f7 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001b1a <phase_6>:
    1b1a:	f3 0f 1e fa          	endbr64 
    1b1e:	41 54                	push   %r12
    1b20:	55                   	push   %rbp
    1b21:	53                   	push   %rbx
    1b22:	48 83 ec 60          	sub    $0x60,%rsp
    1b26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b2d:	00 00 
    1b2f:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1b34:	31 c0                	xor    %eax,%eax
    1b36:	48 89 e6             	mov    %rsp,%rsi
    1b39:	e8 91 06 00 00       	call   21cf <read_six_numbers>
    1b3e:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b43:	eb 27                	jmp    1b6c <phase_6+0x52>
    1b45:	e8 ff 05 00 00       	call   2149 <explode_bomb>
    1b4a:	eb 33                	jmp    1b7f <phase_6+0x65>
    1b4c:	83 c3 01             	add    $0x1,%ebx
    1b4f:	83 fb 05             	cmp    $0x5,%ebx
    1b52:	7f 15                	jg     1b69 <phase_6+0x4f>
    1b54:	48 63 c5             	movslq %ebp,%rax
    1b57:	48 63 d3             	movslq %ebx,%rdx
    1b5a:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1b5d:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1b60:	75 ea                	jne    1b4c <phase_6+0x32>
    1b62:	e8 e2 05 00 00       	call   2149 <explode_bomb>
    1b67:	eb e3                	jmp    1b4c <phase_6+0x32>
    1b69:	44 89 e5             	mov    %r12d,%ebp
    1b6c:	83 fd 05             	cmp    $0x5,%ebp
    1b6f:	7f 17                	jg     1b88 <phase_6+0x6e>
    1b71:	48 63 c5             	movslq %ebp,%rax
    1b74:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1b77:	83 e8 01             	sub    $0x1,%eax
    1b7a:	83 f8 05             	cmp    $0x5,%eax
    1b7d:	77 c6                	ja     1b45 <phase_6+0x2b>
    1b7f:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1b83:	44 89 e3             	mov    %r12d,%ebx
    1b86:	eb c7                	jmp    1b4f <phase_6+0x35>
    1b88:	be 00 00 00 00       	mov    $0x0,%esi
    1b8d:	eb 17                	jmp    1ba6 <phase_6+0x8c>
    1b8f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1b93:	83 c0 01             	add    $0x1,%eax
    1b96:	48 63 ce             	movslq %esi,%rcx
    1b99:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1b9c:	7f f1                	jg     1b8f <phase_6+0x75>
    1b9e:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1ba3:	83 c6 01             	add    $0x1,%esi
    1ba6:	83 fe 05             	cmp    $0x5,%esi
    1ba9:	7f 0e                	jg     1bb9 <phase_6+0x9f>
    1bab:	b8 01 00 00 00       	mov    $0x1,%eax
    1bb0:	48 8d 15 99 64 00 00 	lea    0x6499(%rip),%rdx        # 8050 <node1>
    1bb7:	eb dd                	jmp    1b96 <phase_6+0x7c>
    1bb9:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1bbe:	48 89 d9             	mov    %rbx,%rcx
    1bc1:	b8 01 00 00 00       	mov    $0x1,%eax
    1bc6:	eb 12                	jmp    1bda <phase_6+0xc0>
    1bc8:	48 63 d0             	movslq %eax,%rdx
    1bcb:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1bd0:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1bd4:	83 c0 01             	add    $0x1,%eax
    1bd7:	48 89 d1             	mov    %rdx,%rcx
    1bda:	83 f8 05             	cmp    $0x5,%eax
    1bdd:	7e e9                	jle    1bc8 <phase_6+0xae>
    1bdf:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1be6:	00 
    1be7:	bd 00 00 00 00       	mov    $0x0,%ebp
    1bec:	eb 07                	jmp    1bf5 <phase_6+0xdb>
    1bee:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1bf2:	83 c5 01             	add    $0x1,%ebp
    1bf5:	83 fd 04             	cmp    $0x4,%ebp
    1bf8:	7f 11                	jg     1c0b <phase_6+0xf1>
    1bfa:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1bfe:	8b 00                	mov    (%rax),%eax
    1c00:	39 03                	cmp    %eax,(%rbx)
    1c02:	7e ea                	jle    1bee <phase_6+0xd4>
    1c04:	e8 40 05 00 00       	call   2149 <explode_bomb>
    1c09:	eb e3                	jmp    1bee <phase_6+0xd4>
    1c0b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1c10:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c17:	00 00 
    1c19:	75 09                	jne    1c24 <phase_6+0x10a>
    1c1b:	48 83 c4 60          	add    $0x60,%rsp
    1c1f:	5b                   	pop    %rbx
    1c20:	5d                   	pop    %rbp
    1c21:	41 5c                	pop    %r12
    1c23:	c3                   	ret    
    1c24:	e8 77 f6 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001c29 <emulate_fsm>:
    1c29:	f3 0f 1e fa          	endbr64 
    1c2d:	55                   	push   %rbp
    1c2e:	53                   	push   %rbx
    1c2f:	48 83 ec 08          	sub    $0x8,%rsp
    1c33:	89 fd                	mov    %edi,%ebp
    1c35:	48 89 f3             	mov    %rsi,%rbx
    1c38:	eb 28                	jmp    1c62 <emulate_fsm+0x39>
    1c3a:	0f be 03             	movsbl (%rbx),%eax
    1c3d:	83 e8 30             	sub    $0x30,%eax
    1c40:	48 63 ed             	movslq %ebp,%rbp
    1c43:	48 98                	cltq   
    1c45:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1c4c:	00 
    1c4d:	48 29 c2             	sub    %rax,%rdx
    1c50:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    1c54:	48 8d 15 45 27 00 00 	lea    0x2745(%rip),%rdx        # 43a0 <transition_table>
    1c5b:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1c5e:	48 83 c3 01          	add    $0x1,%rbx
    1c62:	0f b6 03             	movzbl (%rbx),%eax
    1c65:	84 c0                	test   %al,%al
    1c67:	74 0e                	je     1c77 <emulate_fsm+0x4e>
    1c69:	83 e8 30             	sub    $0x30,%eax
    1c6c:	3c 01                	cmp    $0x1,%al
    1c6e:	76 ca                	jbe    1c3a <emulate_fsm+0x11>
    1c70:	e8 d4 04 00 00       	call   2149 <explode_bomb>
    1c75:	eb c3                	jmp    1c3a <emulate_fsm+0x11>
    1c77:	89 e8                	mov    %ebp,%eax
    1c79:	48 83 c4 08          	add    $0x8,%rsp
    1c7d:	5b                   	pop    %rbx
    1c7e:	5d                   	pop    %rbp
    1c7f:	c3                   	ret    

0000000000001c80 <check_synchronizing_sequence>:
    1c80:	f3 0f 1e fa          	endbr64 
    1c84:	41 54                	push   %r12
    1c86:	55                   	push   %rbp
    1c87:	53                   	push   %rbx
    1c88:	48 89 fd             	mov    %rdi,%rbp
    1c8b:	48 89 fe             	mov    %rdi,%rsi
    1c8e:	bf 00 00 00 00       	mov    $0x0,%edi
    1c93:	e8 91 ff ff ff       	call   1c29 <emulate_fsm>
    1c98:	41 89 c4             	mov    %eax,%r12d
    1c9b:	bb 01 00 00 00       	mov    $0x1,%ebx
    1ca0:	83 fb 06             	cmp    $0x6,%ebx
    1ca3:	7f 14                	jg     1cb9 <check_synchronizing_sequence+0x39>
    1ca5:	48 89 ee             	mov    %rbp,%rsi
    1ca8:	89 df                	mov    %ebx,%edi
    1caa:	e8 7a ff ff ff       	call   1c29 <emulate_fsm>
    1caf:	44 39 e0             	cmp    %r12d,%eax
    1cb2:	75 0f                	jne    1cc3 <check_synchronizing_sequence+0x43>
    1cb4:	83 c3 01             	add    $0x1,%ebx
    1cb7:	eb e7                	jmp    1ca0 <check_synchronizing_sequence+0x20>
    1cb9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cbe:	5b                   	pop    %rbx
    1cbf:	5d                   	pop    %rbp
    1cc0:	41 5c                	pop    %r12
    1cc2:	c3                   	ret    
    1cc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1cc8:	eb f4                	jmp    1cbe <check_synchronizing_sequence+0x3e>

0000000000001cca <secret_phase>:
    1cca:	f3 0f 1e fa          	endbr64 
    1cce:	55                   	push   %rbp
    1ccf:	53                   	push   %rbx
    1cd0:	48 83 ec 18          	sub    $0x18,%rsp
    1cd4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1cdb:	00 00 
    1cdd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1ce2:	31 c0                	xor    %eax,%eax
    1ce4:	e8 2b 05 00 00       	call   2214 <read_line>
    1ce9:	48 89 c5             	mov    %rax,%rbp
    1cec:	bb 00 00 00 00       	mov    $0x0,%ebx
    1cf1:	eb 03                	jmp    1cf6 <secret_phase+0x2c>
    1cf3:	83 c3 01             	add    $0x1,%ebx
    1cf6:	48 63 c3             	movslq %ebx,%rax
    1cf9:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1cfe:	74 0c                	je     1d0c <secret_phase+0x42>
    1d00:	83 fb 18             	cmp    $0x18,%ebx
    1d03:	7e ee                	jle    1cf3 <secret_phase+0x29>
    1d05:	e8 3f 04 00 00       	call   2149 <explode_bomb>
    1d0a:	eb e7                	jmp    1cf3 <secret_phase+0x29>
    1d0c:	48 89 ef             	mov    %rbp,%rdi
    1d0f:	e8 6c ff ff ff       	call   1c80 <check_synchronizing_sequence>
    1d14:	85 c0                	test   %eax,%eax
    1d16:	75 69                	jne    1d81 <secret_phase+0xb7>
    1d18:	48 8d 3d 31 25 00 00 	lea    0x2531(%rip),%rdi        # 4250 <_IO_stdin_used+0x250>
    1d1f:	e8 4c f5 ff ff       	call   1270 <puts@plt>
    1d24:	48 8d 3d 5d 25 00 00 	lea    0x255d(%rip),%rdi        # 4288 <_IO_stdin_used+0x288>
    1d2b:	e8 40 f5 ff ff       	call   1270 <puts@plt>
    1d30:	48 8d 3d 91 25 00 00 	lea    0x2591(%rip),%rdi        # 42c8 <_IO_stdin_used+0x2c8>
    1d37:	e8 34 f5 ff ff       	call   1270 <puts@plt>
    1d3c:	48 8d 3d bd 25 00 00 	lea    0x25bd(%rip),%rdi        # 4300 <_IO_stdin_used+0x300>
    1d43:	e8 28 f5 ff ff       	call   1270 <puts@plt>
    1d48:	48 8d 3d f1 25 00 00 	lea    0x25f1(%rip),%rdi        # 4340 <_IO_stdin_used+0x340>
    1d4f:	e8 1c f5 ff ff       	call   1270 <puts@plt>
    1d54:	48 8d 3d 59 24 00 00 	lea    0x2459(%rip),%rdi        # 41b4 <_IO_stdin_used+0x1b4>
    1d5b:	e8 10 f5 ff ff       	call   1270 <puts@plt>
    1d60:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1d65:	e8 e8 05 00 00       	call   2352 <phase_defused>
    1d6a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1d6f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d76:	00 00 
    1d78:	75 0e                	jne    1d88 <secret_phase+0xbe>
    1d7a:	48 83 c4 18          	add    $0x18,%rsp
    1d7e:	5b                   	pop    %rbx
    1d7f:	5d                   	pop    %rbp
    1d80:	c3                   	ret    
    1d81:	e8 c3 03 00 00       	call   2149 <explode_bomb>
    1d86:	eb 90                	jmp    1d18 <secret_phase+0x4e>
    1d88:	e8 13 f5 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001d8d <sig_handler>:
    1d8d:	f3 0f 1e fa          	endbr64 
    1d91:	50                   	push   %rax
    1d92:	58                   	pop    %rax
    1d93:	48 83 ec 08          	sub    $0x8,%rsp
    1d97:	48 8d 3d 3a 26 00 00 	lea    0x263a(%rip),%rdi        # 43d8 <transition_table+0x38>
    1d9e:	e8 cd f4 ff ff       	call   1270 <puts@plt>
    1da3:	bf 03 00 00 00       	mov    $0x3,%edi
    1da8:	e8 13 f6 ff ff       	call   13c0 <sleep@plt>
    1dad:	48 8d 35 a5 28 00 00 	lea    0x28a5(%rip),%rsi        # 4659 <transition_table+0x2b9>
    1db4:	bf 01 00 00 00       	mov    $0x1,%edi
    1db9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbe:	e8 9d f5 ff ff       	call   1360 <__printf_chk@plt>
    1dc3:	48 8b 3d 96 66 00 00 	mov    0x6696(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1dca:	e8 61 f5 ff ff       	call   1330 <fflush@plt>
    1dcf:	bf 01 00 00 00       	mov    $0x1,%edi
    1dd4:	e8 e7 f5 ff ff       	call   13c0 <sleep@plt>
    1dd9:	48 8d 3d 81 28 00 00 	lea    0x2881(%rip),%rdi        # 4661 <transition_table+0x2c1>
    1de0:	e8 8b f4 ff ff       	call   1270 <puts@plt>
    1de5:	bf 10 00 00 00       	mov    $0x10,%edi
    1dea:	e8 a1 f5 ff ff       	call   1390 <exit@plt>

0000000000001def <invalid_phase>:
    1def:	f3 0f 1e fa          	endbr64 
    1df3:	50                   	push   %rax
    1df4:	58                   	pop    %rax
    1df5:	48 83 ec 08          	sub    $0x8,%rsp
    1df9:	48 89 fa             	mov    %rdi,%rdx
    1dfc:	48 8d 35 66 28 00 00 	lea    0x2866(%rip),%rsi        # 4669 <transition_table+0x2c9>
    1e03:	bf 01 00 00 00       	mov    $0x1,%edi
    1e08:	b8 00 00 00 00       	mov    $0x0,%eax
    1e0d:	e8 4e f5 ff ff       	call   1360 <__printf_chk@plt>
    1e12:	bf 08 00 00 00       	mov    $0x8,%edi
    1e17:	e8 74 f5 ff ff       	call   1390 <exit@plt>

0000000000001e1c <string_length>:
    1e1c:	f3 0f 1e fa          	endbr64 
    1e20:	b8 00 00 00 00       	mov    $0x0,%eax
    1e25:	eb 07                	jmp    1e2e <string_length+0x12>
    1e27:	48 83 c7 01          	add    $0x1,%rdi
    1e2b:	83 c0 01             	add    $0x1,%eax
    1e2e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1e31:	75 f4                	jne    1e27 <string_length+0xb>
    1e33:	c3                   	ret    

0000000000001e34 <strings_not_equal>:
    1e34:	f3 0f 1e fa          	endbr64 
    1e38:	41 54                	push   %r12
    1e3a:	55                   	push   %rbp
    1e3b:	53                   	push   %rbx
    1e3c:	48 89 fb             	mov    %rdi,%rbx
    1e3f:	48 89 f5             	mov    %rsi,%rbp
    1e42:	e8 d5 ff ff ff       	call   1e1c <string_length>
    1e47:	41 89 c4             	mov    %eax,%r12d
    1e4a:	48 89 ef             	mov    %rbp,%rdi
    1e4d:	e8 ca ff ff ff       	call   1e1c <string_length>
    1e52:	41 39 c4             	cmp    %eax,%r12d
    1e55:	74 12                	je     1e69 <strings_not_equal+0x35>
    1e57:	b8 01 00 00 00       	mov    $0x1,%eax
    1e5c:	5b                   	pop    %rbx
    1e5d:	5d                   	pop    %rbp
    1e5e:	41 5c                	pop    %r12
    1e60:	c3                   	ret    
    1e61:	48 83 c3 01          	add    $0x1,%rbx
    1e65:	48 83 c5 01          	add    $0x1,%rbp
    1e69:	0f b6 03             	movzbl (%rbx),%eax
    1e6c:	84 c0                	test   %al,%al
    1e6e:	74 0c                	je     1e7c <strings_not_equal+0x48>
    1e70:	38 45 00             	cmp    %al,0x0(%rbp)
    1e73:	74 ec                	je     1e61 <strings_not_equal+0x2d>
    1e75:	b8 01 00 00 00       	mov    $0x1,%eax
    1e7a:	eb e0                	jmp    1e5c <strings_not_equal+0x28>
    1e7c:	b8 00 00 00 00       	mov    $0x0,%eax
    1e81:	eb d9                	jmp    1e5c <strings_not_equal+0x28>

0000000000001e83 <initialize_bomb>:
    1e83:	f3 0f 1e fa          	endbr64 
    1e87:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1e8e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1e93:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1e9a:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1e9f:	48 83 ec 58          	sub    $0x58,%rsp
    1ea3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1eaa:	00 00 
    1eac:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1eb3:	00 
    1eb4:	31 c0                	xor    %eax,%eax
    1eb6:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 1d8d <sig_handler>
    1ebd:	bf 02 00 00 00       	mov    $0x2,%edi
    1ec2:	e8 19 f4 ff ff       	call   12e0 <signal@plt>
    1ec7:	48 89 e7             	mov    %rsp,%rdi
    1eca:	be 40 00 00 00       	mov    $0x40,%esi
    1ecf:	e8 ac f4 ff ff       	call   1380 <gethostname@plt>
    1ed4:	85 c0                	test   %eax,%eax
    1ed6:	75 39                	jne    1f11 <initialize_bomb+0x8e>
    1ed8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1edd:	e8 5b 10 00 00       	call   2f3d <init_driver>
    1ee2:	85 c0                	test   %eax,%eax
    1ee4:	78 41                	js     1f27 <initialize_bomb+0xa4>
    1ee6:	bf 04 00 00 00       	mov    $0x4,%edi
    1eeb:	e8 30 f4 ff ff       	call   1320 <malloc@plt>
    1ef0:	c7 00 11 fa 21 20    	movl   $0x2021fa11,(%rax)
    1ef6:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    1efd:	00 
    1efe:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1f05:	00 00 
    1f07:	75 43                	jne    1f4c <initialize_bomb+0xc9>
    1f09:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1f10:	c3                   	ret    
    1f11:	48 8d 3d f8 24 00 00 	lea    0x24f8(%rip),%rdi        # 4410 <transition_table+0x70>
    1f18:	e8 53 f3 ff ff       	call   1270 <puts@plt>
    1f1d:	bf 08 00 00 00       	mov    $0x8,%edi
    1f22:	e8 69 f4 ff ff       	call   1390 <exit@plt>
    1f27:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1f2c:	48 8d 35 47 27 00 00 	lea    0x2747(%rip),%rsi        # 467a <transition_table+0x2da>
    1f33:	bf 01 00 00 00       	mov    $0x1,%edi
    1f38:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3d:	e8 1e f4 ff ff       	call   1360 <__printf_chk@plt>
    1f42:	bf 08 00 00 00       	mov    $0x8,%edi
    1f47:	e8 44 f4 ff ff       	call   1390 <exit@plt>
    1f4c:	e8 4f f3 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001f51 <initialize_bomb_solve>:
    1f51:	f3 0f 1e fa          	endbr64 
    1f55:	c3                   	ret    

0000000000001f56 <blank_line>:
    1f56:	f3 0f 1e fa          	endbr64 
    1f5a:	55                   	push   %rbp
    1f5b:	53                   	push   %rbx
    1f5c:	48 83 ec 08          	sub    $0x8,%rsp
    1f60:	48 89 fd             	mov    %rdi,%rbp
    1f63:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1f67:	84 db                	test   %bl,%bl
    1f69:	74 1e                	je     1f89 <blank_line+0x33>
    1f6b:	e8 60 f4 ff ff       	call   13d0 <__ctype_b_loc@plt>
    1f70:	48 8b 00             	mov    (%rax),%rax
    1f73:	48 83 c5 01          	add    $0x1,%rbp
    1f77:	48 0f be db          	movsbq %bl,%rbx
    1f7b:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1f80:	75 e1                	jne    1f63 <blank_line+0xd>
    1f82:	b8 00 00 00 00       	mov    $0x0,%eax
    1f87:	eb 05                	jmp    1f8e <blank_line+0x38>
    1f89:	b8 01 00 00 00       	mov    $0x1,%eax
    1f8e:	48 83 c4 08          	add    $0x8,%rsp
    1f92:	5b                   	pop    %rbx
    1f93:	5d                   	pop    %rbp
    1f94:	c3                   	ret    

0000000000001f95 <skip>:
    1f95:	f3 0f 1e fa          	endbr64 
    1f99:	53                   	push   %rbx
    1f9a:	48 63 15 77 65 00 00 	movslq 0x6577(%rip),%rdx        # 8518 <num_input_strings>
    1fa1:	48 89 d0             	mov    %rdx,%rax
    1fa4:	48 c1 e0 04          	shl    $0x4,%rax
    1fa8:	48 29 d0             	sub    %rdx,%rax
    1fab:	48 8d 15 6e 65 00 00 	lea    0x656e(%rip),%rdx        # 8520 <input_strings>
    1fb2:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1fb6:	48 8b 0d d3 64 00 00 	mov    0x64d3(%rip),%rcx        # 8490 <infile>
    1fbd:	ba 78 00 00 00       	mov    $0x78,%edx
    1fc2:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1fc9:	e8 82 f3 ff ff       	call   1350 <__fgets_chk@plt>
    1fce:	48 89 c3             	mov    %rax,%rbx
    1fd1:	48 85 c0             	test   %rax,%rax
    1fd4:	74 0c                	je     1fe2 <skip+0x4d>
    1fd6:	48 89 c7             	mov    %rax,%rdi
    1fd9:	e8 78 ff ff ff       	call   1f56 <blank_line>
    1fde:	85 c0                	test   %eax,%eax
    1fe0:	75 b8                	jne    1f9a <skip+0x5>
    1fe2:	48 89 d8             	mov    %rbx,%rax
    1fe5:	5b                   	pop    %rbx
    1fe6:	c3                   	ret    

0000000000001fe7 <send_msg>:
    1fe7:	f3 0f 1e fa          	endbr64 
    1feb:	41 55                	push   %r13
    1fed:	41 54                	push   %r12
    1fef:	55                   	push   %rbp
    1ff0:	53                   	push   %rbx
    1ff1:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1ff8:	ff 
    1ff9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2000:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2005:	4c 39 dc             	cmp    %r11,%rsp
    2008:	75 ef                	jne    1ff9 <send_msg+0x12>
    200a:	48 83 ec 18          	sub    $0x18,%rsp
    200e:	89 fd                	mov    %edi,%ebp
    2010:	48 89 f3             	mov    %rsi,%rbx
    2013:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    201a:	00 00 
    201c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2023:	00 
    2024:	31 c0                	xor    %eax,%eax
    2026:	44 8b 25 eb 64 00 00 	mov    0x64eb(%rip),%r12d        # 8518 <num_input_strings>
    202d:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    2032:	48 98                	cltq   
    2034:	48 89 c2             	mov    %rax,%rdx
    2037:	48 c1 e2 04          	shl    $0x4,%rdx
    203b:	48 29 c2             	sub    %rax,%rdx
    203e:	48 8d 05 db 64 00 00 	lea    0x64db(%rip),%rax        # 8520 <input_strings>
    2045:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    2049:	4c 89 ef             	mov    %r13,%rdi
    204c:	e8 3f f2 ff ff       	call   1290 <strlen@plt>
    2051:	48 83 c0 64          	add    $0x64,%rax
    2055:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    205b:	0f 87 a0 00 00 00    	ja     2101 <send_msg+0x11a>
    2061:	85 ed                	test   %ebp,%ebp
    2063:	0f 84 b8 00 00 00    	je     2121 <send_msg+0x13a>
    2069:	48 8d 05 24 26 00 00 	lea    0x2624(%rip),%rax        # 4694 <transition_table+0x2f4>
    2070:	48 89 e5             	mov    %rsp,%rbp
    2073:	48 83 ec 08          	sub    $0x8,%rsp
    2077:	41 55                	push   %r13
    2079:	41 54                	push   %r12
    207b:	50                   	push   %rax
    207c:	4c 8d 0d bd 57 00 00 	lea    0x57bd(%rip),%r9        # 7840 <authkey>
    2083:	44 8b 05 b6 5f 00 00 	mov    0x5fb6(%rip),%r8d        # 8040 <bomb_id>
    208a:	48 8d 0d 14 26 00 00 	lea    0x2614(%rip),%rcx        # 46a5 <transition_table+0x305>
    2091:	ba 00 20 00 00       	mov    $0x2000,%edx
    2096:	be 01 00 00 00       	mov    $0x1,%esi
    209b:	48 89 ef             	mov    %rbp,%rdi
    209e:	b8 00 00 00 00       	mov    $0x0,%eax
    20a3:	e8 38 f3 ff ff       	call   13e0 <__sprintf_chk@plt>
    20a8:	48 89 ec             	mov    %rbp,%rsp
    20ab:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    20b2:	00 
    20b3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    20b9:	48 89 e9             	mov    %rbp,%rcx
    20bc:	48 8d 15 7d 4f 00 00 	lea    0x4f7d(%rip),%rdx        # 7040 <lab>
    20c3:	48 8d 35 76 53 00 00 	lea    0x5376(%rip),%rsi        # 7440 <course>
    20ca:	48 8d 3d 6f 5b 00 00 	lea    0x5b6f(%rip),%rdi        # 7c40 <userid>
    20d1:	e8 93 10 00 00       	call   3169 <driver_post>
    20d6:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    20dc:	85 c0                	test   %eax,%eax
    20de:	78 4d                	js     212d <send_msg+0x146>
    20e0:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    20e7:	00 
    20e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    20ef:	00 00 
    20f1:	75 51                	jne    2144 <send_msg+0x15d>
    20f3:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    20fa:	5b                   	pop    %rbx
    20fb:	5d                   	pop    %rbp
    20fc:	41 5c                	pop    %r12
    20fe:	41 5d                	pop    %r13
    2100:	c3                   	ret    
    2101:	48 8d 35 40 23 00 00 	lea    0x2340(%rip),%rsi        # 4448 <transition_table+0xa8>
    2108:	bf 01 00 00 00       	mov    $0x1,%edi
    210d:	b8 00 00 00 00       	mov    $0x0,%eax
    2112:	e8 49 f2 ff ff       	call   1360 <__printf_chk@plt>
    2117:	bf 08 00 00 00       	mov    $0x8,%edi
    211c:	e8 6f f2 ff ff       	call   1390 <exit@plt>
    2121:	48 8d 05 74 25 00 00 	lea    0x2574(%rip),%rax        # 469c <transition_table+0x2fc>
    2128:	e9 43 ff ff ff       	jmp    2070 <send_msg+0x89>
    212d:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2134:	00 
    2135:	e8 36 f1 ff ff       	call   1270 <puts@plt>
    213a:	bf 00 00 00 00       	mov    $0x0,%edi
    213f:	e8 4c f2 ff ff       	call   1390 <exit@plt>
    2144:	e8 57 f1 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002149 <explode_bomb>:
    2149:	f3 0f 1e fa          	endbr64 
    214d:	50                   	push   %rax
    214e:	58                   	pop    %rax
    214f:	48 83 ec 18          	sub    $0x18,%rsp
    2153:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    215a:	00 00 
    215c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2161:	31 c0                	xor    %eax,%eax
    2163:	48 8d 3d 4a 25 00 00 	lea    0x254a(%rip),%rdi        # 46b4 <transition_table+0x314>
    216a:	e8 01 f1 ff ff       	call   1270 <puts@plt>
    216f:	48 8d 3d 47 25 00 00 	lea    0x2547(%rip),%rdi        # 46bd <transition_table+0x31d>
    2176:	e8 f5 f0 ff ff       	call   1270 <puts@plt>
    217b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2182:	00 
    2183:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    2188:	bf 00 00 00 00       	mov    $0x0,%edi
    218d:	e8 55 fe ff ff       	call   1fe7 <send_msg>
    2192:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    2197:	74 20                	je     21b9 <explode_bomb+0x70>
    2199:	48 8d 35 d0 22 00 00 	lea    0x22d0(%rip),%rsi        # 4470 <transition_table+0xd0>
    21a0:	bf 01 00 00 00       	mov    $0x1,%edi
    21a5:	b8 00 00 00 00       	mov    $0x0,%eax
    21aa:	e8 b1 f1 ff ff       	call   1360 <__printf_chk@plt>
    21af:	bf 08 00 00 00       	mov    $0x8,%edi
    21b4:	e8 d7 f1 ff ff       	call   1390 <exit@plt>
    21b9:	48 8d 3d f8 22 00 00 	lea    0x22f8(%rip),%rdi        # 44b8 <transition_table+0x118>
    21c0:	e8 ab f0 ff ff       	call   1270 <puts@plt>
    21c5:	bf 08 00 00 00       	mov    $0x8,%edi
    21ca:	e8 c1 f1 ff ff       	call   1390 <exit@plt>

00000000000021cf <read_six_numbers>:
    21cf:	f3 0f 1e fa          	endbr64 
    21d3:	48 83 ec 08          	sub    $0x8,%rsp
    21d7:	48 89 f2             	mov    %rsi,%rdx
    21da:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    21de:	48 8d 46 14          	lea    0x14(%rsi),%rax
    21e2:	50                   	push   %rax
    21e3:	48 8d 46 10          	lea    0x10(%rsi),%rax
    21e7:	50                   	push   %rax
    21e8:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    21ec:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    21f0:	48 8d 35 dd 24 00 00 	lea    0x24dd(%rip),%rsi        # 46d4 <transition_table+0x334>
    21f7:	b8 00 00 00 00       	mov    $0x0,%eax
    21fc:	e8 3f f1 ff ff       	call   1340 <__isoc99_sscanf@plt>
    2201:	48 83 c4 10          	add    $0x10,%rsp
    2205:	83 f8 05             	cmp    $0x5,%eax
    2208:	7e 05                	jle    220f <read_six_numbers+0x40>
    220a:	48 83 c4 08          	add    $0x8,%rsp
    220e:	c3                   	ret    
    220f:	e8 35 ff ff ff       	call   2149 <explode_bomb>

0000000000002214 <read_line>:
    2214:	f3 0f 1e fa          	endbr64 
    2218:	55                   	push   %rbp
    2219:	53                   	push   %rbx
    221a:	48 83 ec 08          	sub    $0x8,%rsp
    221e:	b8 00 00 00 00       	mov    $0x0,%eax
    2223:	e8 6d fd ff ff       	call   1f95 <skip>
    2228:	48 85 c0             	test   %rax,%rax
    222b:	74 63                	je     2290 <read_line+0x7c>
    222d:	8b 1d e5 62 00 00    	mov    0x62e5(%rip),%ebx        # 8518 <num_input_strings>
    2233:	48 63 d3             	movslq %ebx,%rdx
    2236:	48 89 d0             	mov    %rdx,%rax
    2239:	48 c1 e0 04          	shl    $0x4,%rax
    223d:	48 29 d0             	sub    %rdx,%rax
    2240:	48 8d 15 d9 62 00 00 	lea    0x62d9(%rip),%rdx        # 8520 <input_strings>
    2247:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    224b:	48 89 ef             	mov    %rbp,%rdi
    224e:	e8 3d f0 ff ff       	call   1290 <strlen@plt>
    2253:	83 f8 76             	cmp    $0x76,%eax
    2256:	0f 8f ac 00 00 00    	jg     2308 <read_line+0xf4>
    225c:	83 e8 01             	sub    $0x1,%eax
    225f:	48 98                	cltq   
    2261:	48 63 cb             	movslq %ebx,%rcx
    2264:	48 89 ca             	mov    %rcx,%rdx
    2267:	48 c1 e2 04          	shl    $0x4,%rdx
    226b:	48 29 ca             	sub    %rcx,%rdx
    226e:	48 8d 0d ab 62 00 00 	lea    0x62ab(%rip),%rcx        # 8520 <input_strings>
    2275:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    2279:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    227d:	83 c3 01             	add    $0x1,%ebx
    2280:	89 1d 92 62 00 00    	mov    %ebx,0x6292(%rip)        # 8518 <num_input_strings>
    2286:	48 89 e8             	mov    %rbp,%rax
    2289:	48 83 c4 08          	add    $0x8,%rsp
    228d:	5b                   	pop    %rbx
    228e:	5d                   	pop    %rbp
    228f:	c3                   	ret    
    2290:	48 8b 05 d9 61 00 00 	mov    0x61d9(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2297:	48 39 05 f2 61 00 00 	cmp    %rax,0x61f2(%rip)        # 8490 <infile>
    229e:	74 1b                	je     22bb <read_line+0xa7>
    22a0:	48 8d 3d 5d 24 00 00 	lea    0x245d(%rip),%rdi        # 4704 <transition_table+0x364>
    22a7:	e8 74 ef ff ff       	call   1220 <getenv@plt>
    22ac:	48 85 c0             	test   %rax,%rax
    22af:	74 20                	je     22d1 <read_line+0xbd>
    22b1:	bf 00 00 00 00       	mov    $0x0,%edi
    22b6:	e8 d5 f0 ff ff       	call   1390 <exit@plt>
    22bb:	48 8d 3d 24 24 00 00 	lea    0x2424(%rip),%rdi        # 46e6 <transition_table+0x346>
    22c2:	e8 a9 ef ff ff       	call   1270 <puts@plt>
    22c7:	bf 08 00 00 00       	mov    $0x8,%edi
    22cc:	e8 bf f0 ff ff       	call   1390 <exit@plt>
    22d1:	48 8b 05 98 61 00 00 	mov    0x6198(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    22d8:	48 89 05 b1 61 00 00 	mov    %rax,0x61b1(%rip)        # 8490 <infile>
    22df:	b8 00 00 00 00       	mov    $0x0,%eax
    22e4:	e8 ac fc ff ff       	call   1f95 <skip>
    22e9:	48 85 c0             	test   %rax,%rax
    22ec:	0f 85 3b ff ff ff    	jne    222d <read_line+0x19>
    22f2:	48 8d 3d ed 23 00 00 	lea    0x23ed(%rip),%rdi        # 46e6 <transition_table+0x346>
    22f9:	e8 72 ef ff ff       	call   1270 <puts@plt>
    22fe:	bf 00 00 00 00       	mov    $0x0,%edi
    2303:	e8 88 f0 ff ff       	call   1390 <exit@plt>
    2308:	48 8d 3d 00 24 00 00 	lea    0x2400(%rip),%rdi        # 470f <transition_table+0x36f>
    230f:	e8 5c ef ff ff       	call   1270 <puts@plt>
    2314:	8b 05 fe 61 00 00    	mov    0x61fe(%rip),%eax        # 8518 <num_input_strings>
    231a:	8d 50 01             	lea    0x1(%rax),%edx
    231d:	89 15 f5 61 00 00    	mov    %edx,0x61f5(%rip)        # 8518 <num_input_strings>
    2323:	48 98                	cltq   
    2325:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2329:	48 8d 15 f0 61 00 00 	lea    0x61f0(%rip),%rdx        # 8520 <input_strings>
    2330:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2337:	75 6e 63 
    233a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2341:	2a 2a 00 
    2344:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2348:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    234d:	e8 f7 fd ff ff       	call   2149 <explode_bomb>

0000000000002352 <phase_defused>:
    2352:	f3 0f 1e fa          	endbr64 
    2356:	53                   	push   %rbx
    2357:	48 89 fb             	mov    %rdi,%rbx
    235a:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2360:	48 89 fe             	mov    %rdi,%rsi
    2363:	bf 01 00 00 00       	mov    $0x1,%edi
    2368:	e8 7a fc ff ff       	call   1fe7 <send_msg>
    236d:	83 3b 01             	cmpl   $0x1,(%rbx)
    2370:	75 0b                	jne    237d <phase_defused+0x2b>
    2372:	83 3d 9f 61 00 00 06 	cmpl   $0x6,0x619f(%rip)        # 8518 <num_input_strings>
    2379:	74 22                	je     239d <phase_defused+0x4b>
    237b:	5b                   	pop    %rbx
    237c:	c3                   	ret    
    237d:	48 8d 35 ec 20 00 00 	lea    0x20ec(%rip),%rsi        # 4470 <transition_table+0xd0>
    2384:	bf 01 00 00 00       	mov    $0x1,%edi
    2389:	b8 00 00 00 00       	mov    $0x0,%eax
    238e:	e8 cd ef ff ff       	call   1360 <__printf_chk@plt>
    2393:	bf 08 00 00 00       	mov    $0x8,%edi
    2398:	e8 f3 ef ff ff       	call   1390 <exit@plt>
    239d:	e8 d6 f2 ff ff       	call   1678 <abracadabra>
    23a2:	85 c0                	test   %eax,%eax
    23a4:	75 1a                	jne    23c0 <phase_defused+0x6e>
    23a6:	48 8d 3d 23 22 00 00 	lea    0x2223(%rip),%rdi        # 45d0 <transition_table+0x230>
    23ad:	e8 be ee ff ff       	call   1270 <puts@plt>
    23b2:	48 8d 3d 5f 22 00 00 	lea    0x225f(%rip),%rdi        # 4618 <transition_table+0x278>
    23b9:	e8 b2 ee ff ff       	call   1270 <puts@plt>
    23be:	eb bb                	jmp    237b <phase_defused+0x29>
    23c0:	e8 40 f3 ff ff       	call   1705 <alohomora>
    23c5:	85 c0                	test   %eax,%eax
    23c7:	74 30                	je     23f9 <phase_defused+0xa7>
    23c9:	48 8d 3d 10 21 00 00 	lea    0x2110(%rip),%rdi        # 44e0 <transition_table+0x140>
    23d0:	e8 9b ee ff ff       	call   1270 <puts@plt>
    23d5:	48 8d 3d 2c 21 00 00 	lea    0x212c(%rip),%rdi        # 4508 <transition_table+0x168>
    23dc:	e8 8f ee ff ff       	call   1270 <puts@plt>
    23e1:	48 8d 3d 58 21 00 00 	lea    0x2158(%rip),%rdi        # 4540 <transition_table+0x1a0>
    23e8:	e8 83 ee ff ff       	call   1270 <puts@plt>
    23ed:	b8 00 00 00 00       	mov    $0x0,%eax
    23f2:	e8 d3 f8 ff ff       	call   1cca <secret_phase>
    23f7:	eb ad                	jmp    23a6 <phase_defused+0x54>
    23f9:	48 8d 3d 90 21 00 00 	lea    0x2190(%rip),%rdi        # 4590 <transition_table+0x1f0>
    2400:	e8 6b ee ff ff       	call   1270 <puts@plt>
    2405:	48 8d 3d 34 21 00 00 	lea    0x2134(%rip),%rdi        # 4540 <transition_table+0x1a0>
    240c:	e8 5f ee ff ff       	call   1270 <puts@plt>
    2411:	eb 93                	jmp    23a6 <phase_defused+0x54>

0000000000002413 <rio_readinitb>:
    2413:	89 37                	mov    %esi,(%rdi)
    2415:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    241c:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2420:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2424:	c3                   	ret    

0000000000002425 <sigalrm_handler>:
    2425:	f3 0f 1e fa          	endbr64 
    2429:	50                   	push   %rax
    242a:	58                   	pop    %rax
    242b:	48 83 ec 08          	sub    $0x8,%rsp
    242f:	b9 00 00 00 00       	mov    $0x0,%ecx
    2434:	48 8d 15 45 23 00 00 	lea    0x2345(%rip),%rdx        # 4780 <transition_table+0x3e0>
    243b:	be 01 00 00 00       	mov    $0x1,%esi
    2440:	48 8b 3d 39 60 00 00 	mov    0x6039(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    2447:	b8 00 00 00 00       	mov    $0x0,%eax
    244c:	e8 5f ef ff ff       	call   13b0 <__fprintf_chk@plt>
    2451:	bf 01 00 00 00       	mov    $0x1,%edi
    2456:	e8 35 ef ff ff       	call   1390 <exit@plt>

000000000000245b <rio_writen>:
    245b:	41 55                	push   %r13
    245d:	41 54                	push   %r12
    245f:	55                   	push   %rbp
    2460:	53                   	push   %rbx
    2461:	48 83 ec 08          	sub    $0x8,%rsp
    2465:	41 89 fc             	mov    %edi,%r12d
    2468:	48 89 f5             	mov    %rsi,%rbp
    246b:	49 89 d5             	mov    %rdx,%r13
    246e:	48 89 d3             	mov    %rdx,%rbx
    2471:	eb 06                	jmp    2479 <rio_writen+0x1e>
    2473:	48 29 c3             	sub    %rax,%rbx
    2476:	48 01 c5             	add    %rax,%rbp
    2479:	48 85 db             	test   %rbx,%rbx
    247c:	74 24                	je     24a2 <rio_writen+0x47>
    247e:	48 89 da             	mov    %rbx,%rdx
    2481:	48 89 ee             	mov    %rbp,%rsi
    2484:	44 89 e7             	mov    %r12d,%edi
    2487:	e8 f4 ed ff ff       	call   1280 <write@plt>
    248c:	48 85 c0             	test   %rax,%rax
    248f:	7f e2                	jg     2473 <rio_writen+0x18>
    2491:	e8 aa ed ff ff       	call   1240 <__errno_location@plt>
    2496:	83 38 04             	cmpl   $0x4,(%rax)
    2499:	75 15                	jne    24b0 <rio_writen+0x55>
    249b:	b8 00 00 00 00       	mov    $0x0,%eax
    24a0:	eb d1                	jmp    2473 <rio_writen+0x18>
    24a2:	4c 89 e8             	mov    %r13,%rax
    24a5:	48 83 c4 08          	add    $0x8,%rsp
    24a9:	5b                   	pop    %rbx
    24aa:	5d                   	pop    %rbp
    24ab:	41 5c                	pop    %r12
    24ad:	41 5d                	pop    %r13
    24af:	c3                   	ret    
    24b0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    24b7:	eb ec                	jmp    24a5 <rio_writen+0x4a>

00000000000024b9 <rio_read>:
    24b9:	41 55                	push   %r13
    24bb:	41 54                	push   %r12
    24bd:	55                   	push   %rbp
    24be:	53                   	push   %rbx
    24bf:	48 83 ec 08          	sub    $0x8,%rsp
    24c3:	48 89 fb             	mov    %rdi,%rbx
    24c6:	49 89 f5             	mov    %rsi,%r13
    24c9:	49 89 d4             	mov    %rdx,%r12
    24cc:	eb 0a                	jmp    24d8 <rio_read+0x1f>
    24ce:	e8 6d ed ff ff       	call   1240 <__errno_location@plt>
    24d3:	83 38 04             	cmpl   $0x4,(%rax)
    24d6:	75 61                	jne    2539 <rio_read+0x80>
    24d8:	8b 6b 04             	mov    0x4(%rbx),%ebp
    24db:	85 ed                	test   %ebp,%ebp
    24dd:	7f 29                	jg     2508 <rio_read+0x4f>
    24df:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    24e3:	8b 3b                	mov    (%rbx),%edi
    24e5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    24ec:	ba 00 20 00 00       	mov    $0x2000,%edx
    24f1:	48 89 ee             	mov    %rbp,%rsi
    24f4:	e8 67 ed ff ff       	call   1260 <__read_chk@plt>
    24f9:	89 43 04             	mov    %eax,0x4(%rbx)
    24fc:	85 c0                	test   %eax,%eax
    24fe:	78 ce                	js     24ce <rio_read+0x15>
    2500:	74 40                	je     2542 <rio_read+0x89>
    2502:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2506:	eb d0                	jmp    24d8 <rio_read+0x1f>
    2508:	89 e8                	mov    %ebp,%eax
    250a:	4c 39 e0             	cmp    %r12,%rax
    250d:	72 03                	jb     2512 <rio_read+0x59>
    250f:	44 89 e5             	mov    %r12d,%ebp
    2512:	4c 63 e5             	movslq %ebp,%r12
    2515:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2519:	4c 89 e2             	mov    %r12,%rdx
    251c:	4c 89 ef             	mov    %r13,%rdi
    251f:	e8 ec ed ff ff       	call   1310 <memcpy@plt>
    2524:	4c 01 63 08          	add    %r12,0x8(%rbx)
    2528:	29 6b 04             	sub    %ebp,0x4(%rbx)
    252b:	4c 89 e0             	mov    %r12,%rax
    252e:	48 83 c4 08          	add    $0x8,%rsp
    2532:	5b                   	pop    %rbx
    2533:	5d                   	pop    %rbp
    2534:	41 5c                	pop    %r12
    2536:	41 5d                	pop    %r13
    2538:	c3                   	ret    
    2539:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2540:	eb ec                	jmp    252e <rio_read+0x75>
    2542:	b8 00 00 00 00       	mov    $0x0,%eax
    2547:	eb e5                	jmp    252e <rio_read+0x75>

0000000000002549 <rio_readlineb>:
    2549:	41 55                	push   %r13
    254b:	41 54                	push   %r12
    254d:	55                   	push   %rbp
    254e:	53                   	push   %rbx
    254f:	48 83 ec 18          	sub    $0x18,%rsp
    2553:	49 89 fd             	mov    %rdi,%r13
    2556:	48 89 f5             	mov    %rsi,%rbp
    2559:	49 89 d4             	mov    %rdx,%r12
    255c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2563:	00 00 
    2565:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    256a:	31 c0                	xor    %eax,%eax
    256c:	bb 01 00 00 00       	mov    $0x1,%ebx
    2571:	eb 18                	jmp    258b <rio_readlineb+0x42>
    2573:	85 c0                	test   %eax,%eax
    2575:	75 65                	jne    25dc <rio_readlineb+0x93>
    2577:	48 83 fb 01          	cmp    $0x1,%rbx
    257b:	75 3d                	jne    25ba <rio_readlineb+0x71>
    257d:	b8 00 00 00 00       	mov    $0x0,%eax
    2582:	eb 3d                	jmp    25c1 <rio_readlineb+0x78>
    2584:	48 83 c3 01          	add    $0x1,%rbx
    2588:	48 89 d5             	mov    %rdx,%rbp
    258b:	4c 39 e3             	cmp    %r12,%rbx
    258e:	73 2a                	jae    25ba <rio_readlineb+0x71>
    2590:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    2595:	ba 01 00 00 00       	mov    $0x1,%edx
    259a:	4c 89 ef             	mov    %r13,%rdi
    259d:	e8 17 ff ff ff       	call   24b9 <rio_read>
    25a2:	83 f8 01             	cmp    $0x1,%eax
    25a5:	75 cc                	jne    2573 <rio_readlineb+0x2a>
    25a7:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    25ab:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    25b0:	88 45 00             	mov    %al,0x0(%rbp)
    25b3:	3c 0a                	cmp    $0xa,%al
    25b5:	75 cd                	jne    2584 <rio_readlineb+0x3b>
    25b7:	48 89 d5             	mov    %rdx,%rbp
    25ba:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    25be:	48 89 d8             	mov    %rbx,%rax
    25c1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    25c6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25cd:	00 00 
    25cf:	75 14                	jne    25e5 <rio_readlineb+0x9c>
    25d1:	48 83 c4 18          	add    $0x18,%rsp
    25d5:	5b                   	pop    %rbx
    25d6:	5d                   	pop    %rbp
    25d7:	41 5c                	pop    %r12
    25d9:	41 5d                	pop    %r13
    25db:	c3                   	ret    
    25dc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    25e3:	eb dc                	jmp    25c1 <rio_readlineb+0x78>
    25e5:	e8 b6 ec ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000025ea <urlencode>:
    25ea:	41 54                	push   %r12
    25ec:	55                   	push   %rbp
    25ed:	53                   	push   %rbx
    25ee:	48 83 ec 10          	sub    $0x10,%rsp
    25f2:	48 89 fb             	mov    %rdi,%rbx
    25f5:	48 89 f5             	mov    %rsi,%rbp
    25f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25ff:	00 00 
    2601:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2606:	31 c0                	xor    %eax,%eax
    2608:	e8 83 ec ff ff       	call   1290 <strlen@plt>
    260d:	eb 0f                	jmp    261e <urlencode+0x34>
    260f:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2613:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2617:	48 83 c3 01          	add    $0x1,%rbx
    261b:	44 89 e0             	mov    %r12d,%eax
    261e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2622:	85 c0                	test   %eax,%eax
    2624:	0f 84 a8 00 00 00    	je     26d2 <urlencode+0xe8>
    262a:	44 0f b6 03          	movzbl (%rbx),%r8d
    262e:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2632:	0f 94 c0             	sete   %al
    2635:	41 80 f8 2d          	cmp    $0x2d,%r8b
    2639:	0f 94 c2             	sete   %dl
    263c:	08 d0                	or     %dl,%al
    263e:	75 cf                	jne    260f <urlencode+0x25>
    2640:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2644:	74 c9                	je     260f <urlencode+0x25>
    2646:	41 80 f8 5f          	cmp    $0x5f,%r8b
    264a:	74 c3                	je     260f <urlencode+0x25>
    264c:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2650:	3c 09                	cmp    $0x9,%al
    2652:	76 bb                	jbe    260f <urlencode+0x25>
    2654:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    2658:	3c 19                	cmp    $0x19,%al
    265a:	76 b3                	jbe    260f <urlencode+0x25>
    265c:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2660:	3c 19                	cmp    $0x19,%al
    2662:	76 ab                	jbe    260f <urlencode+0x25>
    2664:	41 80 f8 20          	cmp    $0x20,%r8b
    2668:	74 56                	je     26c0 <urlencode+0xd6>
    266a:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    266e:	3c 5f                	cmp    $0x5f,%al
    2670:	0f 96 c0             	setbe  %al
    2673:	41 80 f8 09          	cmp    $0x9,%r8b
    2677:	0f 94 c2             	sete   %dl
    267a:	08 d0                	or     %dl,%al
    267c:	74 4f                	je     26cd <urlencode+0xe3>
    267e:	48 89 e7             	mov    %rsp,%rdi
    2681:	45 0f b6 c0          	movzbl %r8b,%r8d
    2685:	48 8d 0d a9 21 00 00 	lea    0x21a9(%rip),%rcx        # 4835 <transition_table+0x495>
    268c:	ba 08 00 00 00       	mov    $0x8,%edx
    2691:	be 01 00 00 00       	mov    $0x1,%esi
    2696:	b8 00 00 00 00       	mov    $0x0,%eax
    269b:	e8 40 ed ff ff       	call   13e0 <__sprintf_chk@plt>
    26a0:	0f b6 04 24          	movzbl (%rsp),%eax
    26a4:	88 45 00             	mov    %al,0x0(%rbp)
    26a7:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    26ac:	88 45 01             	mov    %al,0x1(%rbp)
    26af:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    26b4:	88 45 02             	mov    %al,0x2(%rbp)
    26b7:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    26bb:	e9 57 ff ff ff       	jmp    2617 <urlencode+0x2d>
    26c0:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    26c4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    26c8:	e9 4a ff ff ff       	jmp    2617 <urlencode+0x2d>
    26cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26d2:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    26d7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    26de:	00 00 
    26e0:	75 09                	jne    26eb <urlencode+0x101>
    26e2:	48 83 c4 10          	add    $0x10,%rsp
    26e6:	5b                   	pop    %rbx
    26e7:	5d                   	pop    %rbp
    26e8:	41 5c                	pop    %r12
    26ea:	c3                   	ret    
    26eb:	e8 b0 eb ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000026f0 <submitr>:
    26f0:	f3 0f 1e fa          	endbr64 
    26f4:	41 57                	push   %r15
    26f6:	41 56                	push   %r14
    26f8:	41 55                	push   %r13
    26fa:	41 54                	push   %r12
    26fc:	55                   	push   %rbp
    26fd:	53                   	push   %rbx
    26fe:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    2705:	ff 
    2706:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    270d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2712:	4c 39 dc             	cmp    %r11,%rsp
    2715:	75 ef                	jne    2706 <submitr+0x16>
    2717:	48 83 ec 68          	sub    $0x68,%rsp
    271b:	49 89 fc             	mov    %rdi,%r12
    271e:	89 74 24 18          	mov    %esi,0x18(%rsp)
    2722:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    2727:	49 89 cd             	mov    %rcx,%r13
    272a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    272f:	4d 89 ce             	mov    %r9,%r14
    2732:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    2739:	00 
    273a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2741:	00 00 
    2743:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    274a:	00 
    274b:	31 c0                	xor    %eax,%eax
    274d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2754:	00 
    2755:	ba 00 00 00 00       	mov    $0x0,%edx
    275a:	be 01 00 00 00       	mov    $0x1,%esi
    275f:	bf 02 00 00 00       	mov    $0x2,%edi
    2764:	e8 87 ec ff ff       	call   13f0 <socket@plt>
    2769:	85 c0                	test   %eax,%eax
    276b:	0f 88 ab 02 00 00    	js     2a1c <submitr+0x32c>
    2771:	89 c3                	mov    %eax,%ebx
    2773:	4c 89 e7             	mov    %r12,%rdi
    2776:	e8 75 eb ff ff       	call   12f0 <gethostbyname@plt>
    277b:	48 85 c0             	test   %rax,%rax
    277e:	0f 84 e4 02 00 00    	je     2a68 <submitr+0x378>
    2784:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    2789:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2790:	00 00 
    2792:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    2799:	00 00 
    279b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    27a2:	48 63 50 14          	movslq 0x14(%rax),%rdx
    27a6:	48 8b 40 18          	mov    0x18(%rax),%rax
    27aa:	48 8b 30             	mov    (%rax),%rsi
    27ad:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    27b2:	b9 0c 00 00 00       	mov    $0xc,%ecx
    27b7:	e8 44 eb ff ff       	call   1300 <__memmove_chk@plt>
    27bc:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    27c1:	66 c1 c0 08          	rol    $0x8,%ax
    27c5:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    27ca:	ba 10 00 00 00       	mov    $0x10,%edx
    27cf:	4c 89 fe             	mov    %r15,%rsi
    27d2:	89 df                	mov    %ebx,%edi
    27d4:	e8 c7 eb ff ff       	call   13a0 <connect@plt>
    27d9:	85 c0                	test   %eax,%eax
    27db:	0f 88 fd 02 00 00    	js     2ade <submitr+0x3ee>
    27e1:	4c 89 f7             	mov    %r14,%rdi
    27e4:	e8 a7 ea ff ff       	call   1290 <strlen@plt>
    27e9:	49 89 c7             	mov    %rax,%r15
    27ec:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    27f1:	e8 9a ea ff ff       	call   1290 <strlen@plt>
    27f6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27fb:	4c 89 ef             	mov    %r13,%rdi
    27fe:	e8 8d ea ff ff       	call   1290 <strlen@plt>
    2803:	48 03 44 24 18       	add    0x18(%rsp),%rax
    2808:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    280d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2812:	e8 79 ea ff ff       	call   1290 <strlen@plt>
    2817:	48 03 44 24 18       	add    0x18(%rsp),%rax
    281c:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    2820:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    2827:	00 
    2828:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    282e:	0f 87 12 03 00 00    	ja     2b46 <submitr+0x456>
    2834:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    283b:	00 
    283c:	b9 00 04 00 00       	mov    $0x400,%ecx
    2841:	b8 00 00 00 00       	mov    $0x0,%eax
    2846:	48 89 f7             	mov    %rsi,%rdi
    2849:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    284c:	4c 89 f7             	mov    %r14,%rdi
    284f:	e8 96 fd ff ff       	call   25ea <urlencode>
    2854:	85 c0                	test   %eax,%eax
    2856:	0f 88 5d 03 00 00    	js     2bb9 <submitr+0x4c9>
    285c:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2863:	00 
    2864:	b9 00 04 00 00       	mov    $0x400,%ecx
    2869:	b8 00 00 00 00       	mov    $0x0,%eax
    286e:	48 89 f7             	mov    %rsi,%rdi
    2871:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2874:	4c 89 ef             	mov    %r13,%rdi
    2877:	e8 6e fd ff ff       	call   25ea <urlencode>
    287c:	85 c0                	test   %eax,%eax
    287e:	0f 88 c0 03 00 00    	js     2c44 <submitr+0x554>
    2884:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    288b:	00 
    288c:	48 83 ec 08          	sub    $0x8,%rsp
    2890:	41 54                	push   %r12
    2892:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    2899:	00 
    289a:	50                   	push   %rax
    289b:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    28a2:	00 
    28a3:	50                   	push   %rax
    28a4:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    28a9:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    28ae:	48 8d 0d f3 1e 00 00 	lea    0x1ef3(%rip),%rcx        # 47a8 <transition_table+0x408>
    28b5:	ba 00 20 00 00       	mov    $0x2000,%edx
    28ba:	be 01 00 00 00       	mov    $0x1,%esi
    28bf:	4c 89 ff             	mov    %r15,%rdi
    28c2:	b8 00 00 00 00       	mov    $0x0,%eax
    28c7:	e8 14 eb ff ff       	call   13e0 <__sprintf_chk@plt>
    28cc:	48 83 c4 20          	add    $0x20,%rsp
    28d0:	4c 89 ff             	mov    %r15,%rdi
    28d3:	e8 b8 e9 ff ff       	call   1290 <strlen@plt>
    28d8:	48 89 c2             	mov    %rax,%rdx
    28db:	4c 89 fe             	mov    %r15,%rsi
    28de:	89 df                	mov    %ebx,%edi
    28e0:	e8 76 fb ff ff       	call   245b <rio_writen>
    28e5:	48 85 c0             	test   %rax,%rax
    28e8:	0f 88 e1 03 00 00    	js     2ccf <submitr+0x5df>
    28ee:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    28f3:	89 de                	mov    %ebx,%esi
    28f5:	4c 89 e7             	mov    %r12,%rdi
    28f8:	e8 16 fb ff ff       	call   2413 <rio_readinitb>
    28fd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2904:	00 
    2905:	ba 00 20 00 00       	mov    $0x2000,%edx
    290a:	4c 89 e7             	mov    %r12,%rdi
    290d:	e8 37 fc ff ff       	call   2549 <rio_readlineb>
    2912:	48 85 c0             	test   %rax,%rax
    2915:	0f 8e 20 04 00 00    	jle    2d3b <submitr+0x64b>
    291b:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2920:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    2927:	00 
    2928:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    292f:	00 
    2930:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    2937:	00 
    2938:	48 8d 35 fd 1e 00 00 	lea    0x1efd(%rip),%rsi        # 483c <transition_table+0x49c>
    293f:	b8 00 00 00 00       	mov    $0x0,%eax
    2944:	e8 f7 e9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    2949:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2950:	00 
    2951:	48 8d 35 fb 1e 00 00 	lea    0x1efb(%rip),%rsi        # 4853 <transition_table+0x4b3>
    2958:	e8 73 e9 ff ff       	call   12d0 <strcmp@plt>
    295d:	85 c0                	test   %eax,%eax
    295f:	0f 84 56 04 00 00    	je     2dbb <submitr+0x6cb>
    2965:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    296c:	00 
    296d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2972:	ba 00 20 00 00       	mov    $0x2000,%edx
    2977:	e8 cd fb ff ff       	call   2549 <rio_readlineb>
    297c:	48 85 c0             	test   %rax,%rax
    297f:	7f c8                	jg     2949 <submitr+0x259>
    2981:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2988:	3a 20 43 
    298b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2992:	20 75 6e 
    2995:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2999:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    299d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29a4:	74 6f 20 
    29a7:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    29ae:	68 65 61 
    29b1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29b5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29b9:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    29c0:	66 72 6f 
    29c3:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    29ca:	6f 6c 61 
    29cd:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29d1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29d5:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    29dc:	76 65 72 
    29df:	48 89 45 30          	mov    %rax,0x30(%rbp)
    29e3:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    29e7:	89 df                	mov    %ebx,%edi
    29e9:	e8 d2 e8 ff ff       	call   12c0 <close@plt>
    29ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29f3:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    29fa:	00 
    29fb:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2a02:	00 00 
    2a04:	0f 85 ff 04 00 00    	jne    2f09 <submitr+0x819>
    2a0a:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    2a11:	5b                   	pop    %rbx
    2a12:	5d                   	pop    %rbp
    2a13:	41 5c                	pop    %r12
    2a15:	41 5d                	pop    %r13
    2a17:	41 5e                	pop    %r14
    2a19:	41 5f                	pop    %r15
    2a1b:	c3                   	ret    
    2a1c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a23:	3a 20 43 
    2a26:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a2d:	20 75 6e 
    2a30:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a34:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a38:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a3f:	74 6f 20 
    2a42:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a49:	65 20 73 
    2a4c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a50:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a54:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2a5b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2a61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a66:	eb 8b                	jmp    29f3 <submitr+0x303>
    2a68:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2a6f:	3a 20 44 
    2a72:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2a79:	20 75 6e 
    2a7c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a80:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a84:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a8b:	74 6f 20 
    2a8e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a95:	76 65 20 
    2a98:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a9c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2aa0:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2aa7:	61 62 20 
    2aaa:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2ab1:	72 20 61 
    2ab4:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ab8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2abc:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2ac3:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    2ac9:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2acd:	89 df                	mov    %ebx,%edi
    2acf:	e8 ec e7 ff ff       	call   12c0 <close@plt>
    2ad4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ad9:	e9 15 ff ff ff       	jmp    29f3 <submitr+0x303>
    2ade:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2ae5:	3a 20 55 
    2ae8:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2aef:	20 74 6f 
    2af2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2af6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2afa:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2b01:	65 63 74 
    2b04:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2b0b:	68 65 20 
    2b0e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b12:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b16:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2b1d:	61 62 20 
    2b20:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b24:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2b2b:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2b31:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2b35:	89 df                	mov    %ebx,%edi
    2b37:	e8 84 e7 ff ff       	call   12c0 <close@plt>
    2b3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b41:	e9 ad fe ff ff       	jmp    29f3 <submitr+0x303>
    2b46:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2b4d:	3a 20 52 
    2b50:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2b57:	20 73 74 
    2b5a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b5e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b62:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2b69:	74 6f 6f 
    2b6c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2b73:	65 2e 20 
    2b76:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b7a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b7e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2b85:	61 73 65 
    2b88:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2b8f:	49 54 52 
    2b92:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b96:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b9a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2ba1:	55 46 00 
    2ba4:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ba8:	89 df                	mov    %ebx,%edi
    2baa:	e8 11 e7 ff ff       	call   12c0 <close@plt>
    2baf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bb4:	e9 3a fe ff ff       	jmp    29f3 <submitr+0x303>
    2bb9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2bc0:	3a 20 52 
    2bc3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2bca:	20 73 74 
    2bcd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bd1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bd5:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2bdc:	63 6f 6e 
    2bdf:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2be6:	20 61 6e 
    2be9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bed:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bf1:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2bf8:	67 61 6c 
    2bfb:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2c02:	6e 70 72 
    2c05:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c09:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c0d:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2c14:	6c 65 20 
    2c17:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2c1e:	63 74 65 
    2c21:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c25:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2c29:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2c2f:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2c33:	89 df                	mov    %ebx,%edi
    2c35:	e8 86 e6 ff ff       	call   12c0 <close@plt>
    2c3a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c3f:	e9 af fd ff ff       	jmp    29f3 <submitr+0x303>
    2c44:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2c4b:	3a 20 55 
    2c4e:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    2c55:	20 73 74 
    2c58:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c5c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c60:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2c67:	63 6f 6e 
    2c6a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2c71:	20 61 6e 
    2c74:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c78:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c7c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2c83:	67 61 6c 
    2c86:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2c8d:	6e 70 72 
    2c90:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c94:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c98:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2c9f:	6c 65 20 
    2ca2:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2ca9:	63 74 65 
    2cac:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2cb0:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2cb4:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2cba:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2cbe:	89 df                	mov    %ebx,%edi
    2cc0:	e8 fb e5 ff ff       	call   12c0 <close@plt>
    2cc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cca:	e9 24 fd ff ff       	jmp    29f3 <submitr+0x303>
    2ccf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2cd6:	3a 20 43 
    2cd9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ce0:	20 75 6e 
    2ce3:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ce7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ceb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2cf2:	74 6f 20 
    2cf5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2cfc:	20 74 6f 
    2cff:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d03:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d07:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2d0e:	41 75 74 
    2d11:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2d18:	73 65 72 
    2d1b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d1f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d23:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2d2a:	89 df                	mov    %ebx,%edi
    2d2c:	e8 8f e5 ff ff       	call   12c0 <close@plt>
    2d31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d36:	e9 b8 fc ff ff       	jmp    29f3 <submitr+0x303>
    2d3b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d42:	3a 20 43 
    2d45:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d4c:	20 75 6e 
    2d4f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d53:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d57:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d5e:	74 6f 20 
    2d61:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2d68:	66 69 72 
    2d6b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d6f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d73:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2d7a:	61 64 65 
    2d7d:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2d84:	6d 20 41 
    2d87:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d8b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d8f:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2d96:	62 20 73 
    2d99:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d9d:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2da4:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2daa:	89 df                	mov    %ebx,%edi
    2dac:	e8 0f e5 ff ff       	call   12c0 <close@plt>
    2db1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2db6:	e9 38 fc ff ff       	jmp    29f3 <submitr+0x303>
    2dbb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2dc2:	00 
    2dc3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2dc8:	ba 00 20 00 00       	mov    $0x2000,%edx
    2dcd:	e8 77 f7 ff ff       	call   2549 <rio_readlineb>
    2dd2:	48 85 c0             	test   %rax,%rax
    2dd5:	7e 78                	jle    2e4f <submitr+0x75f>
    2dd7:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ddc:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2de3:	0f 85 e7 00 00 00    	jne    2ed0 <submitr+0x7e0>
    2de9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2df0:	00 
    2df1:	48 89 ef             	mov    %rbp,%rdi
    2df4:	e8 57 e4 ff ff       	call   1250 <strcpy@plt>
    2df9:	89 df                	mov    %ebx,%edi
    2dfb:	e8 c0 e4 ff ff       	call   12c0 <close@plt>
    2e00:	48 8d 35 46 1a 00 00 	lea    0x1a46(%rip),%rsi        # 484d <transition_table+0x4ad>
    2e07:	48 89 ef             	mov    %rbp,%rdi
    2e0a:	e8 c1 e4 ff ff       	call   12d0 <strcmp@plt>
    2e0f:	85 c0                	test   %eax,%eax
    2e11:	0f 84 dc fb ff ff    	je     29f3 <submitr+0x303>
    2e17:	48 8d 35 33 1a 00 00 	lea    0x1a33(%rip),%rsi        # 4851 <transition_table+0x4b1>
    2e1e:	48 89 ef             	mov    %rbp,%rdi
    2e21:	e8 aa e4 ff ff       	call   12d0 <strcmp@plt>
    2e26:	85 c0                	test   %eax,%eax
    2e28:	0f 84 c5 fb ff ff    	je     29f3 <submitr+0x303>
    2e2e:	48 8d 35 21 1a 00 00 	lea    0x1a21(%rip),%rsi        # 4856 <transition_table+0x4b6>
    2e35:	48 89 ef             	mov    %rbp,%rdi
    2e38:	e8 93 e4 ff ff       	call   12d0 <strcmp@plt>
    2e3d:	85 c0                	test   %eax,%eax
    2e3f:	0f 84 ae fb ff ff    	je     29f3 <submitr+0x303>
    2e45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e4a:	e9 a4 fb ff ff       	jmp    29f3 <submitr+0x303>
    2e4f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e56:	3a 20 43 
    2e59:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e60:	20 75 6e 
    2e63:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2e67:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2e6b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e72:	74 6f 20 
    2e75:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2e7c:	73 74 61 
    2e7f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2e83:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2e87:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2e8e:	65 73 73 
    2e91:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2e98:	72 6f 6d 
    2e9b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2e9f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ea3:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2eaa:	6c 61 62 
    2ead:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2eb4:	65 72 00 
    2eb7:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ebb:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2ebf:	89 df                	mov    %ebx,%edi
    2ec1:	e8 fa e3 ff ff       	call   12c0 <close@plt>
    2ec6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ecb:	e9 23 fb ff ff       	jmp    29f3 <submitr+0x303>
    2ed0:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    2ed7:	00 
    2ed8:	48 8d 0d 29 19 00 00 	lea    0x1929(%rip),%rcx        # 4808 <transition_table+0x468>
    2edf:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2ee6:	be 01 00 00 00       	mov    $0x1,%esi
    2eeb:	48 89 ef             	mov    %rbp,%rdi
    2eee:	b8 00 00 00 00       	mov    $0x0,%eax
    2ef3:	e8 e8 e4 ff ff       	call   13e0 <__sprintf_chk@plt>
    2ef8:	89 df                	mov    %ebx,%edi
    2efa:	e8 c1 e3 ff ff       	call   12c0 <close@plt>
    2eff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f04:	e9 ea fa ff ff       	jmp    29f3 <submitr+0x303>
    2f09:	e8 92 e3 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002f0e <init_timeout>:
    2f0e:	f3 0f 1e fa          	endbr64 
    2f12:	85 ff                	test   %edi,%edi
    2f14:	74 26                	je     2f3c <init_timeout+0x2e>
    2f16:	53                   	push   %rbx
    2f17:	89 fb                	mov    %edi,%ebx
    2f19:	78 1a                	js     2f35 <init_timeout+0x27>
    2f1b:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 2425 <sigalrm_handler>
    2f22:	bf 0e 00 00 00       	mov    $0xe,%edi
    2f27:	e8 b4 e3 ff ff       	call   12e0 <signal@plt>
    2f2c:	89 df                	mov    %ebx,%edi
    2f2e:	e8 7d e3 ff ff       	call   12b0 <alarm@plt>
    2f33:	5b                   	pop    %rbx
    2f34:	c3                   	ret    
    2f35:	bb 00 00 00 00       	mov    $0x0,%ebx
    2f3a:	eb df                	jmp    2f1b <init_timeout+0xd>
    2f3c:	c3                   	ret    

0000000000002f3d <init_driver>:
    2f3d:	f3 0f 1e fa          	endbr64 
    2f41:	41 54                	push   %r12
    2f43:	55                   	push   %rbp
    2f44:	53                   	push   %rbx
    2f45:	48 83 ec 20          	sub    $0x20,%rsp
    2f49:	48 89 fd             	mov    %rdi,%rbp
    2f4c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f53:	00 00 
    2f55:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2f5a:	31 c0                	xor    %eax,%eax
    2f5c:	be 01 00 00 00       	mov    $0x1,%esi
    2f61:	bf 0d 00 00 00       	mov    $0xd,%edi
    2f66:	e8 75 e3 ff ff       	call   12e0 <signal@plt>
    2f6b:	be 01 00 00 00       	mov    $0x1,%esi
    2f70:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f75:	e8 66 e3 ff ff       	call   12e0 <signal@plt>
    2f7a:	be 01 00 00 00       	mov    $0x1,%esi
    2f7f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f84:	e8 57 e3 ff ff       	call   12e0 <signal@plt>
    2f89:	ba 00 00 00 00       	mov    $0x0,%edx
    2f8e:	be 01 00 00 00       	mov    $0x1,%esi
    2f93:	bf 02 00 00 00       	mov    $0x2,%edi
    2f98:	e8 53 e4 ff ff       	call   13f0 <socket@plt>
    2f9d:	85 c0                	test   %eax,%eax
    2f9f:	0f 88 9c 00 00 00    	js     3041 <init_driver+0x104>
    2fa5:	89 c3                	mov    %eax,%ebx
    2fa7:	48 8d 3d ab 18 00 00 	lea    0x18ab(%rip),%rdi        # 4859 <transition_table+0x4b9>
    2fae:	e8 3d e3 ff ff       	call   12f0 <gethostbyname@plt>
    2fb3:	48 85 c0             	test   %rax,%rax
    2fb6:	0f 84 d1 00 00 00    	je     308d <init_driver+0x150>
    2fbc:	49 89 e4             	mov    %rsp,%r12
    2fbf:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2fc6:	00 
    2fc7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2fce:	00 00 
    2fd0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2fd6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2fda:	48 8b 40 18          	mov    0x18(%rax),%rax
    2fde:	48 8b 30             	mov    (%rax),%rsi
    2fe1:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2fe6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2feb:	e8 10 e3 ff ff       	call   1300 <__memmove_chk@plt>
    2ff0:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
    2ff7:	ba 10 00 00 00       	mov    $0x10,%edx
    2ffc:	4c 89 e6             	mov    %r12,%rsi
    2fff:	89 df                	mov    %ebx,%edi
    3001:	e8 9a e3 ff ff       	call   13a0 <connect@plt>
    3006:	85 c0                	test   %eax,%eax
    3008:	0f 88 e7 00 00 00    	js     30f5 <init_driver+0x1b8>
    300e:	89 df                	mov    %ebx,%edi
    3010:	e8 ab e2 ff ff       	call   12c0 <close@plt>
    3015:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    301b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    301f:	b8 00 00 00 00       	mov    $0x0,%eax
    3024:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    3029:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3030:	00 00 
    3032:	0f 85 2c 01 00 00    	jne    3164 <init_driver+0x227>
    3038:	48 83 c4 20          	add    $0x20,%rsp
    303c:	5b                   	pop    %rbx
    303d:	5d                   	pop    %rbp
    303e:	41 5c                	pop    %r12
    3040:	c3                   	ret    
    3041:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3048:	3a 20 43 
    304b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3052:	20 75 6e 
    3055:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3059:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    305d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3064:	74 6f 20 
    3067:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    306e:	65 20 73 
    3071:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3075:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3079:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3080:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3086:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    308b:	eb 97                	jmp    3024 <init_driver+0xe7>
    308d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3094:	3a 20 44 
    3097:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    309e:	20 75 6e 
    30a1:	48 89 45 00          	mov    %rax,0x0(%rbp)
    30a5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    30a9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    30b0:	74 6f 20 
    30b3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    30ba:	76 65 20 
    30bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
    30c1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    30c5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    30cc:	72 20 61 
    30cf:	48 89 45 20          	mov    %rax,0x20(%rbp)
    30d3:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    30da:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    30e0:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    30e4:	89 df                	mov    %ebx,%edi
    30e6:	e8 d5 e1 ff ff       	call   12c0 <close@plt>
    30eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    30f0:	e9 2f ff ff ff       	jmp    3024 <init_driver+0xe7>
    30f5:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
    30fc:	36 38 2e 
    30ff:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
    3106:	37 37 00 
    3109:	48 89 45 00          	mov    %rax,0x0(%rbp)
    310d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3111:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3118:	3a 20 55 
    311b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3122:	20 74 6f 
    3125:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3129:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    312d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3134:	65 63 74 
    3137:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    313e:	65 72 76 
    3141:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3145:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3149:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    314f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    3153:	89 df                	mov    %ebx,%edi
    3155:	e8 66 e1 ff ff       	call   12c0 <close@plt>
    315a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    315f:	e9 c0 fe ff ff       	jmp    3024 <init_driver+0xe7>
    3164:	e8 37 e1 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000003169 <driver_post>:
    3169:	f3 0f 1e fa          	endbr64 
    316d:	53                   	push   %rbx
    316e:	4c 89 cb             	mov    %r9,%rbx
    3171:	45 85 c0             	test   %r8d,%r8d
    3174:	75 18                	jne    318e <driver_post+0x25>
    3176:	48 85 ff             	test   %rdi,%rdi
    3179:	74 05                	je     3180 <driver_post+0x17>
    317b:	80 3f 00             	cmpb   $0x0,(%rdi)
    317e:	75 37                	jne    31b7 <driver_post+0x4e>
    3180:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3185:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3189:	44 89 c0             	mov    %r8d,%eax
    318c:	5b                   	pop    %rbx
    318d:	c3                   	ret    
    318e:	48 89 ca             	mov    %rcx,%rdx
    3191:	48 8d 35 d1 16 00 00 	lea    0x16d1(%rip),%rsi        # 4869 <transition_table+0x4c9>
    3198:	bf 01 00 00 00       	mov    $0x1,%edi
    319d:	b8 00 00 00 00       	mov    $0x0,%eax
    31a2:	e8 b9 e1 ff ff       	call   1360 <__printf_chk@plt>
    31a7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    31ac:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    31b0:	b8 00 00 00 00       	mov    $0x0,%eax
    31b5:	eb d5                	jmp    318c <driver_post+0x23>
    31b7:	48 83 ec 08          	sub    $0x8,%rsp
    31bb:	41 51                	push   %r9
    31bd:	49 89 c9             	mov    %rcx,%r9
    31c0:	49 89 d0             	mov    %rdx,%r8
    31c3:	48 89 f9             	mov    %rdi,%rcx
    31c6:	48 89 f2             	mov    %rsi,%rdx
    31c9:	be b8 0b 00 00       	mov    $0xbb8,%esi
    31ce:	48 8d 3d 84 16 00 00 	lea    0x1684(%rip),%rdi        # 4859 <transition_table+0x4b9>
    31d5:	e8 16 f5 ff ff       	call   26f0 <submitr>
    31da:	48 83 c4 10          	add    $0x10,%rsp
    31de:	eb ac                	jmp    318c <driver_post+0x23>

Disassembly of section .fini:

00000000000031e0 <_fini>:
    31e0:	f3 0f 1e fa          	endbr64 
    31e4:	48 83 ec 08          	sub    $0x8,%rsp
    31e8:	48 83 c4 08          	add    $0x8,%rsp
    31ec:	c3                   	ret    
