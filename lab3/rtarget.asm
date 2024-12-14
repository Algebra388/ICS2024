
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 5f 00 00 	mov    0x5fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   0x5fca(%rip)        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    *0x5fcc(%rip)        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 407070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 407078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 407080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 407088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 407090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 407098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 4070d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 5e 00 00    	jmp    *0x5eea(%rip)        # 4070e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 5e 00 00    	jmp    *0x5ee2(%rip)        # 4070e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 5e 00 00    	jmp    *0x5eda(%rip)        # 4070f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 5e 00 00    	jmp    *0x5ed2(%rip)        # 4070f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 5e 00 00    	jmp    *0x5eca(%rip)        # 407100 <socket@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64 
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 d7 14 40 00 	mov    $0x4014d7,%rdi
  40125f:	ff 15 73 5d 00 00    	call   *0x5d73(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt    
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	c3                   	ret    
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 90 74 40 00       	mov    $0x407490,%eax
  401285:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 74 40 00       	mov    $0x407490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret    
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012b5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    %rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret    
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	80 3d ed 61 00 00 00 	cmpb   $0x0,0x61ed(%rip)        # 4074e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 61 00 00 01 	movb   $0x1,0x61db(%rip)        # 4074e8 <completed.0>
  40130d:	5d                   	pop    %rbp
  40130e:	c3                   	ret    
  40130f:	90                   	nop
  401310:	c3                   	ret    
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	eb 8a                	jmp    4012b0 <register_tm_clones>

0000000000401326 <usage>:
  401326:	50                   	push   %rax
  401327:	58                   	pop    %rax
  401328:	48 83 ec 08          	sub    $0x8,%rsp
  40132c:	48 89 fa             	mov    %rdi,%rdx
  40132f:	83 3d fa 61 00 00 00 	cmpl   $0x0,0x61fa(%rip)        # 407530 <is_checker>
  401336:	74 50                	je     401388 <usage+0x62>
  401338:	48 8d 35 c9 2c 00 00 	lea    0x2cc9(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40133f:	bf 02 00 00 00       	mov    $0x2,%edi
  401344:	b8 00 00 00 00       	mov    $0x0,%eax
  401349:	e8 42 fe ff ff       	call   401190 <__printf_chk@plt>
  40134e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401355:	e8 26 fd ff ff       	call   401080 <puts@plt>
  40135a:	48 8d 3d bc 31 00 00 	lea    0x31bc(%rip),%rdi        # 40451d <_IO_stdin_used+0x51d>
  401361:	e8 1a fd ff ff       	call   401080 <puts@plt>
  401366:	48 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40136d:	e8 0e fd ff ff       	call   401080 <puts@plt>
  401372:	48 8d 3d be 31 00 00 	lea    0x31be(%rip),%rdi        # 404537 <_IO_stdin_used+0x537>
  401379:	e8 02 fd ff ff       	call   401080 <puts@plt>
  40137e:	bf 00 00 00 00       	mov    $0x0,%edi
  401383:	e8 58 fe ff ff       	call   4011e0 <exit@plt>
  401388:	48 8d 35 c4 31 00 00 	lea    0x31c4(%rip),%rsi        # 404553 <_IO_stdin_used+0x553>
  40138f:	bf 02 00 00 00       	mov    $0x2,%edi
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	e8 f2 fd ff ff       	call   401190 <__printf_chk@plt>
  40139e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4013a5:	e8 d6 fc ff ff       	call   401080 <puts@plt>
  4013aa:	48 8d 3d 07 2d 00 00 	lea    0x2d07(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4013b1:	e8 ca fc ff ff       	call   401080 <puts@plt>
  4013b6:	48 8d 3d b4 31 00 00 	lea    0x31b4(%rip),%rdi        # 404571 <_IO_stdin_used+0x571>
  4013bd:	e8 be fc ff ff       	call   401080 <puts@plt>
  4013c2:	eb ba                	jmp    40137e <usage+0x58>

00000000004013c4 <initialize_target>:
  4013c4:	55                   	push   %rbp
  4013c5:	53                   	push   %rbx
  4013c6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013cd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013d2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013d9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013de:	48 83 ec 18          	sub    $0x18,%rsp
  4013e2:	89 f5                	mov    %esi,%ebp
  4013e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013eb:	00 00 
  4013ed:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013f4:	00 
  4013f5:	31 c0                	xor    %eax,%eax
  4013f7:	89 3d 23 61 00 00    	mov    %edi,0x6123(%rip)        # 407520 <check_level>
  4013fd:	8b 3d 2d 5d 00 00    	mov    0x5d2d(%rip),%edi        # 407130 <target_id>
  401403:	e8 56 22 00 00       	call   40365e <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 49 22 00 00       	call   40365e <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 07 03 00 00       	call   40173c <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 50                	jne    40148b <initialize_target+0xc7>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	83 3d 1d 60 00 00 00 	cmpl   $0x0,0x601d(%rip)        # 407480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 60 00 00 00 	cmpl   $0x0,0x60c4(%rip)        # 407530 <is_checker>
  40146c:	74 35                	je     4014a3 <initialize_target+0xdf>
  40146e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401475:	00 
  401476:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	75 51                	jne    4014d2 <initialize_target+0x10e>
  401481:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401488:	5b                   	pop    %rbx
  401489:	5d                   	pop    %rbp
  40148a:	c3                   	ret    
  40148b:	bf 00 00 00 00       	mov    $0x0,%edi
  401490:	e8 bb fc ff ff       	call   401150 <time@plt>
  401495:	89 c7                	mov    %eax,%edi
  401497:	e8 a4 fb ff ff       	call   401040 <srandom@plt>
  40149c:	e8 bf fc ff ff       	call   401160 <random@plt>
  4014a1:	eb 9d                	jmp    401440 <initialize_target+0x7c>
  4014a3:	48 89 e7             	mov    %rsp,%rdi
  4014a6:	e8 ea 1e 00 00       	call   403395 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 3a 12 00 00       	call   402711 <__stack_chk_fail>

00000000004014d7 <main>:
  4014d7:	f3 0f 1e fa          	endbr64 
  4014db:	41 56                	push   %r14
  4014dd:	41 55                	push   %r13
  4014df:	41 54                	push   %r12
  4014e1:	55                   	push   %rbp
  4014e2:	53                   	push   %rbx
  4014e3:	48 83 ec 60          	sub    $0x60,%rsp
  4014e7:	89 fd                	mov    %edi,%ebp
  4014e9:	48 89 f3             	mov    %rsi,%rbx
  4014ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014f3:	00 00 
  4014f5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014fa:	31 c0                	xor    %eax,%eax
  4014fc:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401503:	74 65 64 
  401506:	48 89 04 24          	mov    %rax,(%rsp)
  40150a:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401511:	43 4e 00 
  401514:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401519:	48 c7 c6 00 26 40 00 	mov    $0x402600,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 a6 25 40 00 	mov    $0x4025a6,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 5a 26 40 00 	mov    $0x40265a,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 5f 00 00 00 	cmpl   $0x0,0x5fdd(%rip)        # 407530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 5f 00 00 	mov    0x5f3d(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 5f 00 00 	mov    %rax,0x5fae(%rip)        # 407518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 b4 26 40 00 	mov    $0x4026b4,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 5f 00 00 	mov    0x5f0b(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 5f 00 00 	mov    %rax,0x5f57(%rip)        # 407518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 5e 00 00 	mov    0x5ef3(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 5f 00 00 	mov    0x5f00(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 5e 00 00 	mov    0x5ec0(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401600:	e8 bb fb ff ff       	call   4011c0 <strtoul@plt>
  401605:	41 89 c6             	mov    %eax,%r14d
  401608:	4c 89 e2             	mov    %r12,%rdx
  40160b:	48 89 de             	mov    %rbx,%rsi
  40160e:	89 ef                	mov    %ebp,%edi
  401610:	e8 9b fb ff ff       	call   4011b0 <getopt@plt>
  401615:	3c ff                	cmp    $0xff,%al
  401617:	74 7a                	je     401693 <main+0x1bc>
  401619:	8d 50 9f             	lea    -0x61(%rax),%edx
  40161c:	80 fa 14             	cmp    $0x14,%dl
  40161f:	77 51                	ja     401672 <main+0x19b>
  401621:	0f b6 d2             	movzbl %dl,%edx
  401624:	48 8d 0d 79 31 00 00 	lea    0x3179(%rip),%rcx        # 4047a4 <_IO_stdin_used+0x7a4>
  40162b:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  40162f:	48 01 ca             	add    %rcx,%rdx
  401632:	3e ff e2             	notrack jmp *%rdx
  401635:	ba 0a 00 00 00       	mov    $0xa,%edx
  40163a:	be 00 00 00 00       	mov    $0x0,%esi
  40163f:	48 8b 3d 7a 5e 00 00 	mov    0x5e7a(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 5e 00 00 00 	movl   $0x0,0x5e26(%rip)        # 407480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 5e 00 00 	mov    0x5e55(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 5e 00 00 00 	cmpl   $0x0,0x5e89(%rip)        # 407530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 5e 00 00 	cmp    %r14d,0x5e78(%rip)        # 407528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 5a 00 00 	mov    0x5a84(%rip),%rsi        # 407140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 fc 0a 00 00       	call   4021e4 <check_fail>
  4016e8:	8b 15 3e 5e 00 00    	mov    0x5e3e(%rip),%edx        # 40752c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 5d 00 00 	mov    0x5d78(%rip),%rdi        # 407488 <buf_offset>
  401710:	e8 56 10 00 00       	call   40276b <launch>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  40171f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401726:	00 00 
  401728:	75 0d                	jne    401737 <main+0x260>
  40172a:	48 83 c4 60          	add    $0x60,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	41 5c                	pop    %r12
  401732:	41 5d                	pop    %r13
  401734:	41 5e                	pop    %r14
  401736:	c3                   	ret    
  401737:	e8 d5 0f 00 00       	call   402711 <__stack_chk_fail>

000000000040173c <scramble>:
  40173c:	f3 0f 1e fa          	endbr64 
  401740:	48 83 ec 38          	sub    $0x38,%rsp
  401744:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40174b:	00 00 
  40174d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401752:	31 c0                	xor    %eax,%eax
  401754:	eb 10                	jmp    401766 <scramble+0x2a>
  401756:	69 d0 11 8e 00 00    	imul   $0x8e11,%eax,%edx
  40175c:	01 fa                	add    %edi,%edx
  40175e:	89 c1                	mov    %eax,%ecx
  401760:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401763:	83 c0 01             	add    $0x1,%eax
  401766:	83 f8 09             	cmp    $0x9,%eax
  401769:	76 eb                	jbe    401756 <scramble+0x1a>
  40176b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40176f:	69 c0 85 52 00 00    	imul   $0x5285,%eax,%eax
  401775:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401779:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40177d:	69 c0 5d 27 00 00    	imul   $0x275d,%eax,%eax
  401783:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401787:	8b 04 24             	mov    (%rsp),%eax
  40178a:	69 c0 b8 94 00 00    	imul   $0x94b8,%eax,%eax
  401790:	89 04 24             	mov    %eax,(%rsp)
  401793:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401797:	69 c0 f4 8a 00 00    	imul   $0x8af4,%eax,%eax
  40179d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017a5:	69 c0 56 90 00 00    	imul   $0x9056,%eax,%eax
  4017ab:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017af:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017b3:	69 c0 90 44 00 00    	imul   $0x4490,%eax,%eax
  4017b9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017bd:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017c1:	69 c0 cb 83 00 00    	imul   $0x83cb,%eax,%eax
  4017c7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017cb:	8b 04 24             	mov    (%rsp),%eax
  4017ce:	69 c0 95 91 00 00    	imul   $0x9195,%eax,%eax
  4017d4:	89 04 24             	mov    %eax,(%rsp)
  4017d7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017db:	69 c0 66 a0 00 00    	imul   $0xa066,%eax,%eax
  4017e1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017e5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017e9:	69 c0 be 60 00 00    	imul   $0x60be,%eax,%eax
  4017ef:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017f3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017f7:	69 c0 a9 2b 00 00    	imul   $0x2ba9,%eax,%eax
  4017fd:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401801:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401805:	69 c0 bf 1b 00 00    	imul   $0x1bbf,%eax,%eax
  40180b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40180f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401813:	69 c0 9c ee 00 00    	imul   $0xee9c,%eax,%eax
  401819:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40181d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401821:	69 c0 e7 12 00 00    	imul   $0x12e7,%eax,%eax
  401827:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40182b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40182f:	69 c0 7e a0 00 00    	imul   $0xa07e,%eax,%eax
  401835:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401839:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40183d:	69 c0 46 52 00 00    	imul   $0x5246,%eax,%eax
  401843:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401847:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40184b:	69 c0 cd b2 00 00    	imul   $0xb2cd,%eax,%eax
  401851:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401855:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401859:	69 c0 4d 03 00 00    	imul   $0x34d,%eax,%eax
  40185f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401863:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401867:	69 c0 13 66 00 00    	imul   $0x6613,%eax,%eax
  40186d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401871:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401875:	69 c0 ec c2 00 00    	imul   $0xc2ec,%eax,%eax
  40187b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40187f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401883:	69 c0 f5 bf 00 00    	imul   $0xbff5,%eax,%eax
  401889:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40188d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401891:	69 c0 9f 30 00 00    	imul   $0x309f,%eax,%eax
  401897:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40189b:	8b 04 24             	mov    (%rsp),%eax
  40189e:	69 c0 bd b0 00 00    	imul   $0xb0bd,%eax,%eax
  4018a4:	89 04 24             	mov    %eax,(%rsp)
  4018a7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018ab:	69 c0 c7 c6 00 00    	imul   $0xc6c7,%eax,%eax
  4018b1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018b5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018b9:	69 c0 26 a6 00 00    	imul   $0xa626,%eax,%eax
  4018bf:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018c3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018c7:	69 c0 b5 93 00 00    	imul   $0x93b5,%eax,%eax
  4018cd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018d1:	8b 04 24             	mov    (%rsp),%eax
  4018d4:	69 c0 40 4e 00 00    	imul   $0x4e40,%eax,%eax
  4018da:	89 04 24             	mov    %eax,(%rsp)
  4018dd:	8b 04 24             	mov    (%rsp),%eax
  4018e0:	69 c0 fb 76 00 00    	imul   $0x76fb,%eax,%eax
  4018e6:	89 04 24             	mov    %eax,(%rsp)
  4018e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018ed:	69 c0 30 e0 00 00    	imul   $0xe030,%eax,%eax
  4018f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018f7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018fb:	69 c0 11 01 00 00    	imul   $0x111,%eax,%eax
  401901:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401905:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401909:	69 c0 32 2a 00 00    	imul   $0x2a32,%eax,%eax
  40190f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401913:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401917:	69 c0 b2 73 00 00    	imul   $0x73b2,%eax,%eax
  40191d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401921:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401925:	69 c0 fa cc 00 00    	imul   $0xccfa,%eax,%eax
  40192b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40192f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401933:	69 c0 85 24 00 00    	imul   $0x2485,%eax,%eax
  401939:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40193d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401941:	69 c0 40 05 00 00    	imul   $0x540,%eax,%eax
  401947:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40194b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40194f:	69 c0 77 29 00 00    	imul   $0x2977,%eax,%eax
  401955:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401959:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40195d:	69 c0 ed ee 00 00    	imul   $0xeeed,%eax,%eax
  401963:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401967:	8b 04 24             	mov    (%rsp),%eax
  40196a:	69 c0 f7 08 00 00    	imul   $0x8f7,%eax,%eax
  401970:	89 04 24             	mov    %eax,(%rsp)
  401973:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401977:	69 c0 4b 1c 00 00    	imul   $0x1c4b,%eax,%eax
  40197d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401981:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401985:	69 c0 cd f0 00 00    	imul   $0xf0cd,%eax,%eax
  40198b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40198f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401993:	69 c0 43 f7 00 00    	imul   $0xf743,%eax,%eax
  401999:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40199d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4019a1:	69 c0 40 94 00 00    	imul   $0x9440,%eax,%eax
  4019a7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4019ab:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4019af:	69 c0 f7 33 00 00    	imul   $0x33f7,%eax,%eax
  4019b5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019b9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019bd:	69 c0 60 82 00 00    	imul   $0x8260,%eax,%eax
  4019c3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019c7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4019cb:	69 c0 1e 95 00 00    	imul   $0x951e,%eax,%eax
  4019d1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4019d5:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019d9:	69 c0 d6 94 00 00    	imul   $0x94d6,%eax,%eax
  4019df:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019e3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019e7:	69 c0 c8 d6 00 00    	imul   $0xd6c8,%eax,%eax
  4019ed:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019f1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019f5:	69 c0 50 9c 00 00    	imul   $0x9c50,%eax,%eax
  4019fb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019ff:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a03:	69 c0 88 7f 00 00    	imul   $0x7f88,%eax,%eax
  401a09:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a0d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a11:	69 c0 d0 d6 00 00    	imul   $0xd6d0,%eax,%eax
  401a17:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a1b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a1f:	69 c0 46 a8 00 00    	imul   $0xa846,%eax,%eax
  401a25:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a29:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a2d:	69 c0 fe 49 00 00    	imul   $0x49fe,%eax,%eax
  401a33:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a37:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a3b:	69 c0 5e 5a 00 00    	imul   $0x5a5e,%eax,%eax
  401a41:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a45:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a49:	69 c0 de 36 00 00    	imul   $0x36de,%eax,%eax
  401a4f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a53:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a57:	69 c0 b3 22 00 00    	imul   $0x22b3,%eax,%eax
  401a5d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a61:	8b 04 24             	mov    (%rsp),%eax
  401a64:	69 c0 1a 39 00 00    	imul   $0x391a,%eax,%eax
  401a6a:	89 04 24             	mov    %eax,(%rsp)
  401a6d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a71:	69 c0 2e ac 00 00    	imul   $0xac2e,%eax,%eax
  401a77:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a7b:	8b 04 24             	mov    (%rsp),%eax
  401a7e:	69 c0 7a 5f 00 00    	imul   $0x5f7a,%eax,%eax
  401a84:	89 04 24             	mov    %eax,(%rsp)
  401a87:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a8b:	69 c0 96 d8 00 00    	imul   $0xd896,%eax,%eax
  401a91:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a95:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a99:	69 c0 4d f4 00 00    	imul   $0xf44d,%eax,%eax
  401a9f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401aa7:	69 c0 4b 65 00 00    	imul   $0x654b,%eax,%eax
  401aad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ab1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ab5:	69 c0 05 2d 00 00    	imul   $0x2d05,%eax,%eax
  401abb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401abf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ac3:	69 c0 ac 91 00 00    	imul   $0x91ac,%eax,%eax
  401ac9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401acd:	8b 04 24             	mov    (%rsp),%eax
  401ad0:	69 c0 d5 df 00 00    	imul   $0xdfd5,%eax,%eax
  401ad6:	89 04 24             	mov    %eax,(%rsp)
  401ad9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401add:	69 c0 2a 8a 00 00    	imul   $0x8a2a,%eax,%eax
  401ae3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ae7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401aeb:	69 c0 fc 95 00 00    	imul   $0x95fc,%eax,%eax
  401af1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401af5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af9:	69 c0 ee b6 00 00    	imul   $0xb6ee,%eax,%eax
  401aff:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b03:	8b 04 24             	mov    (%rsp),%eax
  401b06:	69 c0 a3 c9 00 00    	imul   $0xc9a3,%eax,%eax
  401b0c:	89 04 24             	mov    %eax,(%rsp)
  401b0f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b13:	69 c0 f0 32 00 00    	imul   $0x32f0,%eax,%eax
  401b19:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b1d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b21:	69 c0 f6 87 00 00    	imul   $0x87f6,%eax,%eax
  401b27:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b2b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b2f:	69 c0 2d 28 00 00    	imul   $0x282d,%eax,%eax
  401b35:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b39:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b3d:	69 c0 9a 6f 00 00    	imul   $0x6f9a,%eax,%eax
  401b43:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b47:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b4b:	69 c0 6b 8e 00 00    	imul   $0x8e6b,%eax,%eax
  401b51:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b55:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b59:	69 c0 81 b4 00 00    	imul   $0xb481,%eax,%eax
  401b5f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b63:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b67:	69 c0 ee b0 00 00    	imul   $0xb0ee,%eax,%eax
  401b6d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b71:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b75:	69 c0 b6 d4 00 00    	imul   $0xd4b6,%eax,%eax
  401b7b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b7f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b83:	69 c0 f2 31 00 00    	imul   $0x31f2,%eax,%eax
  401b89:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b8d:	8b 04 24             	mov    (%rsp),%eax
  401b90:	69 c0 4c 52 00 00    	imul   $0x524c,%eax,%eax
  401b96:	89 04 24             	mov    %eax,(%rsp)
  401b99:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b9d:	69 c0 10 cb 00 00    	imul   $0xcb10,%eax,%eax
  401ba3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ba7:	8b 04 24             	mov    (%rsp),%eax
  401baa:	69 c0 d2 d4 00 00    	imul   $0xd4d2,%eax,%eax
  401bb0:	89 04 24             	mov    %eax,(%rsp)
  401bb3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bb7:	69 c0 c8 e8 00 00    	imul   $0xe8c8,%eax,%eax
  401bbd:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bc1:	8b 04 24             	mov    (%rsp),%eax
  401bc4:	69 c0 aa 87 00 00    	imul   $0x87aa,%eax,%eax
  401bca:	89 04 24             	mov    %eax,(%rsp)
  401bcd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bd1:	69 c0 ca 4a 00 00    	imul   $0x4aca,%eax,%eax
  401bd7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bdb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bdf:	69 c0 02 b1 00 00    	imul   $0xb102,%eax,%eax
  401be5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401be9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bed:	69 c0 cf 51 00 00    	imul   $0x51cf,%eax,%eax
  401bf3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bf7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bfb:	69 c0 5e d3 00 00    	imul   $0xd35e,%eax,%eax
  401c01:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c05:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c09:	69 c0 09 fa 00 00    	imul   $0xfa09,%eax,%eax
  401c0f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c13:	8b 04 24             	mov    (%rsp),%eax
  401c16:	69 c0 58 4e 00 00    	imul   $0x4e58,%eax,%eax
  401c1c:	89 04 24             	mov    %eax,(%rsp)
  401c1f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c23:	69 c0 0d 12 00 00    	imul   $0x120d,%eax,%eax
  401c29:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c2d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c31:	69 c0 76 ef 00 00    	imul   $0xef76,%eax,%eax
  401c37:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c3b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c3f:	69 c0 a8 ab 00 00    	imul   $0xaba8,%eax,%eax
  401c45:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c49:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c4d:	69 c0 35 d9 00 00    	imul   $0xd935,%eax,%eax
  401c53:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c57:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c5b:	69 c0 e8 c5 00 00    	imul   $0xc5e8,%eax,%eax
  401c61:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c65:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c69:	69 c0 39 a1 00 00    	imul   $0xa139,%eax,%eax
  401c6f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c73:	8b 04 24             	mov    (%rsp),%eax
  401c76:	69 c0 a4 5d 00 00    	imul   $0x5da4,%eax,%eax
  401c7c:	89 04 24             	mov    %eax,(%rsp)
  401c7f:	8b 04 24             	mov    (%rsp),%eax
  401c82:	69 c0 33 e6 00 00    	imul   $0xe633,%eax,%eax
  401c88:	89 04 24             	mov    %eax,(%rsp)
  401c8b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c8f:	69 c0 db e0 00 00    	imul   $0xe0db,%eax,%eax
  401c95:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c99:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c9d:	69 c0 22 e6 00 00    	imul   $0xe622,%eax,%eax
  401ca3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ca7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401cab:	69 c0 2c bf 00 00    	imul   $0xbf2c,%eax,%eax
  401cb1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	ba 00 00 00 00       	mov    $0x0,%edx
  401cbf:	eb 0a                	jmp    401ccb <scramble+0x58f>
  401cc1:	89 c1                	mov    %eax,%ecx
  401cc3:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401cc6:	01 ca                	add    %ecx,%edx
  401cc8:	83 c0 01             	add    $0x1,%eax
  401ccb:	83 f8 09             	cmp    $0x9,%eax
  401cce:	76 f1                	jbe    401cc1 <scramble+0x585>
  401cd0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401cd5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401cdc:	00 00 
  401cde:	75 07                	jne    401ce7 <scramble+0x5ab>
  401ce0:	89 d0                	mov    %edx,%eax
  401ce2:	48 83 c4 38          	add    $0x38,%rsp
  401ce6:	c3                   	ret    
  401ce7:	e8 25 0a 00 00       	call   402711 <__stack_chk_fail>

0000000000401cec <getbuf>:
  401cec:	f3 0f 1e fa          	endbr64 
  401cf0:	48 83 ec 18          	sub    $0x18,%rsp
  401cf4:	48 89 e7             	mov    %rsp,%rdi
  401cf7:	e8 26 05 00 00       	call   402222 <Gets>
  401cfc:	b8 01 00 00 00       	mov    $0x1,%eax
  401d01:	48 83 c4 18          	add    $0x18,%rsp
  401d05:	c3                   	ret    

0000000000401d06 <touch1>:
  401d06:	f3 0f 1e fa          	endbr64 
  401d0a:	50                   	push   %rax
  401d0b:	58                   	pop    %rax
  401d0c:	48 83 ec 08          	sub    $0x8,%rsp
  401d10:	c7 05 0a 58 00 00 01 	movl   $0x1,0x580a(%rip)        # 407524 <vlevel>
  401d17:	00 00 00 
  401d1a:	48 8d 3d ea 28 00 00 	lea    0x28ea(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d21:	e8 5a f3 ff ff       	call   401080 <puts@plt>
  401d26:	bf 01 00 00 00       	mov    $0x1,%edi
  401d2b:	e8 6f 07 00 00       	call   40249f <validate>
  401d30:	bf 00 00 00 00       	mov    $0x0,%edi
  401d35:	e8 a6 f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d3a <touch2>:
  401d3a:	f3 0f 1e fa          	endbr64 
  401d3e:	50                   	push   %rax
  401d3f:	58                   	pop    %rax
  401d40:	48 83 ec 08          	sub    $0x8,%rsp
  401d44:	89 fa                	mov    %edi,%edx
  401d46:	c7 05 d4 57 00 00 02 	movl   $0x2,0x57d4(%rip)        # 407524 <vlevel>
  401d4d:	00 00 00 
  401d50:	39 3d d6 57 00 00    	cmp    %edi,0x57d6(%rip)        # 40752c <cookie>
  401d56:	74 2a                	je     401d82 <touch2+0x48>
  401d58:	48 8d 35 21 24 00 00 	lea    0x2421(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d5f:	bf 02 00 00 00       	mov    $0x2,%edi
  401d64:	b8 00 00 00 00       	mov    $0x0,%eax
  401d69:	e8 22 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d6e:	bf 02 00 00 00       	mov    $0x2,%edi
  401d73:	e8 02 08 00 00       	call   40257a <fail>
  401d78:	bf 00 00 00 00       	mov    $0x0,%edi
  401d7d:	e8 5e f4 ff ff       	call   4011e0 <exit@plt>
  401d82:	48 8d 35 cf 23 00 00 	lea    0x23cf(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d89:	bf 02 00 00 00       	mov    $0x2,%edi
  401d8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d93:	e8 f8 f3 ff ff       	call   401190 <__printf_chk@plt>
  401d98:	bf 02 00 00 00       	mov    $0x2,%edi
  401d9d:	e8 fd 06 00 00       	call   40249f <validate>
  401da2:	eb d4                	jmp    401d78 <touch2+0x3e>

0000000000401da4 <hexmatch>:
  401da4:	f3 0f 1e fa          	endbr64 
  401da8:	41 54                	push   %r12
  401daa:	55                   	push   %rbp
  401dab:	53                   	push   %rbx
  401dac:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401db0:	89 fd                	mov    %edi,%ebp
  401db2:	48 89 f3             	mov    %rsi,%rbx
  401db5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401dbc:	00 00 
  401dbe:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401dc3:	31 c0                	xor    %eax,%eax
  401dc5:	e8 96 f3 ff ff       	call   401160 <random@plt>
  401dca:	48 89 c6             	mov    %rax,%rsi
  401dcd:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401dd4:	0a d7 a3 
  401dd7:	48 f7 ea             	imul   %rdx
  401dda:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401dde:	48 c1 f9 06          	sar    $0x6,%rcx
  401de2:	48 89 f0             	mov    %rsi,%rax
  401de5:	48 c1 f8 3f          	sar    $0x3f,%rax
  401de9:	48 29 c1             	sub    %rax,%rcx
  401dec:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401df0:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401df4:	48 c1 e0 02          	shl    $0x2,%rax
  401df8:	48 29 c6             	sub    %rax,%rsi
  401dfb:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401dff:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401e04:	48 39 d6             	cmp    %rdx,%rsi
  401e07:	48 0f 43 d6          	cmovae %rsi,%rdx
  401e0b:	48 29 f2             	sub    %rsi,%rdx
  401e0e:	41 89 e8             	mov    %ebp,%r8d
  401e11:	48 8d 0d 10 28 00 00 	lea    0x2810(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e18:	be 02 00 00 00       	mov    $0x2,%esi
  401e1d:	4c 89 e7             	mov    %r12,%rdi
  401e20:	b8 00 00 00 00       	mov    $0x0,%eax
  401e25:	e8 f6 f3 ff ff       	call   401220 <__sprintf_chk@plt>
  401e2a:	ba 09 00 00 00       	mov    $0x9,%edx
  401e2f:	4c 89 e6             	mov    %r12,%rsi
  401e32:	48 89 df             	mov    %rbx,%rdi
  401e35:	e8 26 f2 ff ff       	call   401060 <strncmp@plt>
  401e3a:	85 c0                	test   %eax,%eax
  401e3c:	0f 94 c0             	sete   %al
  401e3f:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e44:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e4b:	00 00 
  401e4d:	75 0c                	jne    401e5b <hexmatch+0xb7>
  401e4f:	0f b6 c0             	movzbl %al,%eax
  401e52:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e56:	5b                   	pop    %rbx
  401e57:	5d                   	pop    %rbp
  401e58:	41 5c                	pop    %r12
  401e5a:	c3                   	ret    
  401e5b:	e8 b1 08 00 00       	call   402711 <__stack_chk_fail>

0000000000401e60 <touch3>:
  401e60:	f3 0f 1e fa          	endbr64 
  401e64:	53                   	push   %rbx
  401e65:	48 89 fb             	mov    %rdi,%rbx
  401e68:	c7 05 b2 56 00 00 03 	movl   $0x3,0x56b2(%rip)        # 407524 <vlevel>
  401e6f:	00 00 00 
  401e72:	48 89 fe             	mov    %rdi,%rsi
  401e75:	8b 3d b1 56 00 00    	mov    0x56b1(%rip),%edi        # 40752c <cookie>
  401e7b:	e8 24 ff ff ff       	call   401da4 <hexmatch>
  401e80:	85 c0                	test   %eax,%eax
  401e82:	74 2d                	je     401eb1 <touch3+0x51>
  401e84:	48 89 da             	mov    %rbx,%rdx
  401e87:	48 8d 35 1a 23 00 00 	lea    0x231a(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e8e:	bf 02 00 00 00       	mov    $0x2,%edi
  401e93:	b8 00 00 00 00       	mov    $0x0,%eax
  401e98:	e8 f3 f2 ff ff       	call   401190 <__printf_chk@plt>
  401e9d:	bf 03 00 00 00       	mov    $0x3,%edi
  401ea2:	e8 f8 05 00 00       	call   40249f <validate>
  401ea7:	bf 00 00 00 00       	mov    $0x0,%edi
  401eac:	e8 2f f3 ff ff       	call   4011e0 <exit@plt>
  401eb1:	48 89 da             	mov    %rbx,%rdx
  401eb4:	48 8d 35 15 23 00 00 	lea    0x2315(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401ebb:	bf 02 00 00 00       	mov    $0x2,%edi
  401ec0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec5:	e8 c6 f2 ff ff       	call   401190 <__printf_chk@plt>
  401eca:	bf 03 00 00 00       	mov    $0x3,%edi
  401ecf:	e8 a6 06 00 00       	call   40257a <fail>
  401ed4:	eb d1                	jmp    401ea7 <touch3+0x47>

0000000000401ed6 <test>:
  401ed6:	f3 0f 1e fa          	endbr64 
  401eda:	48 83 ec 08          	sub    $0x8,%rsp
  401ede:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee3:	e8 04 fe ff ff       	call   401cec <getbuf>
  401ee8:	89 c2                	mov    %eax,%edx
  401eea:	48 8d 35 07 23 00 00 	lea    0x2307(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401ef1:	bf 02 00 00 00       	mov    $0x2,%edi
  401ef6:	b8 00 00 00 00       	mov    $0x0,%eax
  401efb:	e8 90 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f00:	48 83 c4 08          	add    $0x8,%rsp
  401f04:	c3                   	ret    

0000000000401f05 <test2>:
  401f05:	f3 0f 1e fa          	endbr64 
  401f09:	48 83 ec 08          	sub    $0x8,%rsp
  401f0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f12:	e8 1d 00 00 00       	call   401f34 <getbuf_withcanary>
  401f17:	89 c2                	mov    %eax,%edx
  401f19:	48 8d 35 00 23 00 00 	lea    0x2300(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f20:	bf 02 00 00 00       	mov    $0x2,%edi
  401f25:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2a:	e8 61 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f2f:	48 83 c4 08          	add    $0x8,%rsp
  401f33:	c3                   	ret    

0000000000401f34 <getbuf_withcanary>:
  401f34:	55                   	push   %rbp
  401f35:	48 89 e5             	mov    %rsp,%rbp
  401f38:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401f3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f46:	00 00 
  401f48:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f4c:	31 c0                	xor    %eax,%eax
  401f4e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401f55:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f5c:	48 89 c7             	mov    %rax,%rdi
  401f5f:	e8 be 02 00 00       	call   402222 <Gets>
  401f64:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401f67:	48 98                	cltq   
  401f69:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401f70:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401f74:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401f7b:	ba 80 00 00 00       	mov    $0x80,%edx
  401f80:	48 89 c6             	mov    %rax,%rsi
  401f83:	48 89 cf             	mov    %rcx,%rdi
  401f86:	e8 b5 f1 ff ff       	call   401140 <memcpy@plt>
  401f8b:	b8 01 00 00 00       	mov    $0x1,%eax
  401f90:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f94:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f9b:	00 00 
  401f9d:	74 05                	je     401fa4 <getbuf_withcanary+0x70>
  401f9f:	e8 6d 07 00 00       	call   402711 <__stack_chk_fail>
  401fa4:	c9                   	leave  
  401fa5:	c3                   	ret    

0000000000401fa6 <start_farm>:
  401fa6:	f3 0f 1e fa          	endbr64 
  401faa:	b8 01 00 00 00       	mov    $0x1,%eax
  401faf:	c3                   	ret    

0000000000401fb0 <getval_446>:
  401fb0:	f3 0f 1e fa          	endbr64 
  401fb4:	b8 58 90 90 90       	mov    $0x90909058,%eax
  401fb9:	c3                   	ret    

0000000000401fba <setval_190>:
  401fba:	f3 0f 1e fa          	endbr64 
  401fbe:	c7 07 58 90 90 c1    	movl   $0xc1909058,(%rdi)
  401fc4:	c3                   	ret    

0000000000401fc5 <setval_343>:
  401fc5:	f3 0f 1e fa          	endbr64 
  401fc9:	c7 07 48 90 90 90    	movl   $0x90909048,(%rdi)
  401fcf:	c3                   	ret    

0000000000401fd0 <setval_289>:
  401fd0:	f3 0f 1e fa          	endbr64 
  401fd4:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  401fda:	c3                   	ret    

0000000000401fdb <getval_128>:
  401fdb:	f3 0f 1e fa          	endbr64 
  401fdf:	b8 ec 48 89 c7       	mov    $0xc78948ec,%eax
  401fe4:	c3                   	ret    

0000000000401fe5 <getval_342>:
  401fe5:	f3 0f 1e fa          	endbr64 
  401fe9:	b8 48 89 c7 92       	mov    $0x92c78948,%eax
  401fee:	c3                   	ret    

0000000000401fef <setval_183>:
  401fef:	f3 0f 1e fa          	endbr64 
  401ff3:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401ff9:	c3                   	ret    

0000000000401ffa <setval_368>:
  401ffa:	f3 0f 1e fa          	endbr64 
  401ffe:	c7 07 48 89 c7 c1    	movl   $0xc1c78948,(%rdi)
  402004:	c3                   	ret    

0000000000402005 <mid_farm>:
  402005:	f3 0f 1e fa          	endbr64 
  402009:	b8 01 00 00 00       	mov    $0x1,%eax
  40200e:	c3                   	ret    

000000000040200f <add_xy>:
  40200f:	f3 0f 1e fa          	endbr64 
  402013:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402017:	c3                   	ret    

0000000000402018 <addval_280>:
  402018:	f3 0f 1e fa          	endbr64 
  40201c:	8d 87 49 89 e0 c3    	lea    -0x3c1f76b7(%rdi),%eax
  402022:	c3                   	ret    

0000000000402023 <setval_465>:
  402023:	f3 0f 1e fa          	endbr64 
  402027:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  40202d:	c3                   	ret    

000000000040202e <getval_443>:
  40202e:	f3 0f 1e fa          	endbr64 
  402032:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  402037:	c3                   	ret    

0000000000402038 <addval_299>:
  402038:	f3 0f 1e fa          	endbr64 
  40203c:	8d 87 89 ca c3 92    	lea    -0x6d3c3577(%rdi),%eax
  402042:	c3                   	ret    

0000000000402043 <addval_398>:
  402043:	f3 0f 1e fa          	endbr64 
  402047:	8d 87 89 ca 28 c0    	lea    -0x3fd73577(%rdi),%eax
  40204d:	c3                   	ret    

000000000040204e <getval_497>:
  40204e:	f3 0f 1e fa          	endbr64 
  402052:	b8 c8 89 e0 90       	mov    $0x90e089c8,%eax
  402057:	c3                   	ret    

0000000000402058 <setval_439>:
  402058:	f3 0f 1e fa          	endbr64 
  40205c:	c7 07 89 d6 18 c9    	movl   $0xc918d689,(%rdi)
  402062:	c3                   	ret    

0000000000402063 <getval_333>:
  402063:	f3 0f 1e fa          	endbr64 
  402067:	b8 89 d6 20 d2       	mov    $0xd220d689,%eax
  40206c:	c3                   	ret    

000000000040206d <getval_106>:
  40206d:	f3 0f 1e fa          	endbr64 
  402071:	b8 89 c1 94 c3       	mov    $0xc394c189,%eax
  402076:	c3                   	ret    

0000000000402077 <addval_301>:
  402077:	f3 0f 1e fa          	endbr64 
  40207b:	8d 87 9b d2 89 ca    	lea    -0x35762d65(%rdi),%eax
  402081:	c3                   	ret    

0000000000402082 <getval_388>:
  402082:	f3 0f 1e fa          	endbr64 
  402086:	b8 48 99 e0 c3       	mov    $0xc3e09948,%eax
  40208b:	c3                   	ret    

000000000040208c <addval_194>:
  40208c:	f3 0f 1e fa          	endbr64 
  402090:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  402096:	c3                   	ret    

0000000000402097 <getval_224>:
  402097:	f3 0f 1e fa          	endbr64 
  40209b:	b8 8b c1 38 c9       	mov    $0xc938c18b,%eax
  4020a0:	c3                   	ret    

00000000004020a1 <addval_378>:
  4020a1:	f3 0f 1e fa          	endbr64 
  4020a5:	8d 87 09 ca 84 c0    	lea    -0x3f7b35f7(%rdi),%eax
  4020ab:	c3                   	ret    

00000000004020ac <setval_236>:
  4020ac:	f3 0f 1e fa          	endbr64 
  4020b0:	c7 07 2e 88 ca 90    	movl   $0x90ca882e,(%rdi)
  4020b6:	c3                   	ret    

00000000004020b7 <setval_199>:
  4020b7:	f3 0f 1e fa          	endbr64 
  4020bb:	c7 07 8d ca 38 c9    	movl   $0xc938ca8d,(%rdi)
  4020c1:	c3                   	ret    

00000000004020c2 <addval_396>:
  4020c2:	f3 0f 1e fa          	endbr64 
  4020c6:	8d 87 89 d6 78 c0    	lea    -0x3f872977(%rdi),%eax
  4020cc:	c3                   	ret    

00000000004020cd <getval_399>:
  4020cd:	f3 0f 1e fa          	endbr64 
  4020d1:	b8 89 c1 28 d2       	mov    $0xd228c189,%eax
  4020d6:	c3                   	ret    

00000000004020d7 <setval_163>:
  4020d7:	f3 0f 1e fa          	endbr64 
  4020db:	c7 07 89 ca 60 db    	movl   $0xdb60ca89,(%rdi)
  4020e1:	c3                   	ret    

00000000004020e2 <addval_162>:
  4020e2:	f3 0f 1e fa          	endbr64 
  4020e6:	8d 87 68 89 e0 90    	lea    -0x6f1f7698(%rdi),%eax
  4020ec:	c3                   	ret    

00000000004020ed <setval_148>:
  4020ed:	f3 0f 1e fa          	endbr64 
  4020f1:	c7 07 89 ca 18 d2    	movl   $0xd218ca89,(%rdi)
  4020f7:	c3                   	ret    

00000000004020f8 <addval_476>:
  4020f8:	f3 0f 1e fa          	endbr64 
  4020fc:	8d 87 89 c1 08 d2    	lea    -0x2df73e77(%rdi),%eax
  402102:	c3                   	ret    

0000000000402103 <addval_261>:
  402103:	f3 0f 1e fa          	endbr64 
  402107:	8d 87 89 c1 20 c0    	lea    -0x3fdf3e77(%rdi),%eax
  40210d:	c3                   	ret    

000000000040210e <getval_158>:
  40210e:	f3 0f 1e fa          	endbr64 
  402112:	b8 89 d6 28 d2       	mov    $0xd228d689,%eax
  402117:	c3                   	ret    

0000000000402118 <addval_353>:
  402118:	f3 0f 1e fa          	endbr64 
  40211c:	8d 87 89 c1 60 c9    	lea    -0x369f3e77(%rdi),%eax
  402122:	c3                   	ret    

0000000000402123 <addval_145>:
  402123:	f3 0f 1e fa          	endbr64 
  402127:	8d 87 99 c1 c3 a2    	lea    -0x5d3c3e67(%rdi),%eax
  40212d:	c3                   	ret    

000000000040212e <getval_381>:
  40212e:	f3 0f 1e fa          	endbr64 
  402132:	b8 89 d6 38 c9       	mov    $0xc938d689,%eax
  402137:	c3                   	ret    

0000000000402138 <getval_352>:
  402138:	f3 0f 1e fa          	endbr64 
  40213c:	b8 d1 89 d6 c2       	mov    $0xc2d689d1,%eax
  402141:	c3                   	ret    

0000000000402142 <getval_204>:
  402142:	f3 0f 1e fa          	endbr64 
  402146:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  40214b:	c3                   	ret    

000000000040214c <getval_212>:
  40214c:	f3 0f 1e fa          	endbr64 
  402150:	b8 a9 d6 38 c0       	mov    $0xc038d6a9,%eax
  402155:	c3                   	ret    

0000000000402156 <setval_314>:
  402156:	f3 0f 1e fa          	endbr64 
  40215a:	c7 07 8b d6 08 c9    	movl   $0xc908d68b,(%rdi)
  402160:	c3                   	ret    

0000000000402161 <getval_330>:
  402161:	f3 0f 1e fa          	endbr64 
  402165:	b8 89 c1 28 c0       	mov    $0xc028c189,%eax
  40216a:	c3                   	ret    

000000000040216b <end_farm>:
  40216b:	f3 0f 1e fa          	endbr64 
  40216f:	b8 01 00 00 00       	mov    $0x1,%eax
  402174:	c3                   	ret    

0000000000402175 <save_char>:
  402175:	8b 05 c9 5f 00 00    	mov    0x5fc9(%rip),%eax        # 408144 <gets_cnt>
  40217b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402180:	7f 4a                	jg     4021cc <save_char+0x57>
  402182:	89 f9                	mov    %edi,%ecx
  402184:	c0 e9 04             	shr    $0x4,%cl
  402187:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40218a:	4c 8d 05 6f 26 00 00 	lea    0x266f(%rip),%r8        # 404800 <trans_char>
  402191:	83 e1 0f             	and    $0xf,%ecx
  402194:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402199:	48 8d 0d a0 53 00 00 	lea    0x53a0(%rip),%rcx        # 407540 <gets_buf>
  4021a0:	48 63 f2             	movslq %edx,%rsi
  4021a3:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4021a7:	8d 72 01             	lea    0x1(%rdx),%esi
  4021aa:	83 e7 0f             	and    $0xf,%edi
  4021ad:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4021b2:	48 63 f6             	movslq %esi,%rsi
  4021b5:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4021b9:	83 c2 02             	add    $0x2,%edx
  4021bc:	48 63 d2             	movslq %edx,%rdx
  4021bf:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4021c3:	83 c0 01             	add    $0x1,%eax
  4021c6:	89 05 78 5f 00 00    	mov    %eax,0x5f78(%rip)        # 408144 <gets_cnt>
  4021cc:	c3                   	ret    

00000000004021cd <save_term>:
  4021cd:	8b 05 71 5f 00 00    	mov    0x5f71(%rip),%eax        # 408144 <gets_cnt>
  4021d3:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4021d6:	48 98                	cltq   
  4021d8:	48 8d 15 61 53 00 00 	lea    0x5361(%rip),%rdx        # 407540 <gets_buf>
  4021df:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021e3:	c3                   	ret    

00000000004021e4 <check_fail>:
  4021e4:	f3 0f 1e fa          	endbr64 
  4021e8:	50                   	push   %rax
  4021e9:	58                   	pop    %rax
  4021ea:	48 83 ec 08          	sub    $0x8,%rsp
  4021ee:	0f be 15 53 5f 00 00 	movsbl 0x5f53(%rip),%edx        # 408148 <target_prefix>
  4021f5:	4c 8d 05 44 53 00 00 	lea    0x5344(%rip),%r8        # 407540 <gets_buf>
  4021fc:	8b 0d 1e 53 00 00    	mov    0x531e(%rip),%ecx        # 407520 <check_level>
  402202:	48 8d 35 24 24 00 00 	lea    0x2424(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  402209:	bf 02 00 00 00       	mov    $0x2,%edi
  40220e:	b8 00 00 00 00       	mov    $0x0,%eax
  402213:	e8 78 ef ff ff       	call   401190 <__printf_chk@plt>
  402218:	bf 01 00 00 00       	mov    $0x1,%edi
  40221d:	e8 be ef ff ff       	call   4011e0 <exit@plt>

0000000000402222 <Gets>:
  402222:	f3 0f 1e fa          	endbr64 
  402226:	41 54                	push   %r12
  402228:	55                   	push   %rbp
  402229:	53                   	push   %rbx
  40222a:	49 89 fc             	mov    %rdi,%r12
  40222d:	c7 05 0d 5f 00 00 00 	movl   $0x0,0x5f0d(%rip)        # 408144 <gets_cnt>
  402234:	00 00 00 
  402237:	48 89 fb             	mov    %rdi,%rbx
  40223a:	eb 11                	jmp    40224d <Gets+0x2b>
  40223c:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402240:	88 03                	mov    %al,(%rbx)
  402242:	0f b6 f8             	movzbl %al,%edi
  402245:	e8 2b ff ff ff       	call   402175 <save_char>
  40224a:	48 89 eb             	mov    %rbp,%rbx
  40224d:	48 8b 3d c4 52 00 00 	mov    0x52c4(%rip),%rdi        # 407518 <infile>
  402254:	e8 b7 ef ff ff       	call   401210 <getc@plt>
  402259:	83 f8 ff             	cmp    $0xffffffff,%eax
  40225c:	74 05                	je     402263 <Gets+0x41>
  40225e:	83 f8 0a             	cmp    $0xa,%eax
  402261:	75 d9                	jne    40223c <Gets+0x1a>
  402263:	c6 03 00             	movb   $0x0,(%rbx)
  402266:	b8 00 00 00 00       	mov    $0x0,%eax
  40226b:	e8 5d ff ff ff       	call   4021cd <save_term>
  402270:	4c 89 e0             	mov    %r12,%rax
  402273:	5b                   	pop    %rbx
  402274:	5d                   	pop    %rbp
  402275:	41 5c                	pop    %r12
  402277:	c3                   	ret    

0000000000402278 <notify_server>:
  402278:	f3 0f 1e fa          	endbr64 
  40227c:	55                   	push   %rbp
  40227d:	53                   	push   %rbx
  40227e:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402285:	ff 
  402286:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40228d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402292:	4c 39 dc             	cmp    %r11,%rsp
  402295:	75 ef                	jne    402286 <notify_server+0xe>
  402297:	48 83 ec 18          	sub    $0x18,%rsp
  40229b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022a2:	00 00 
  4022a4:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022ab:	00 
  4022ac:	31 c0                	xor    %eax,%eax
  4022ae:	83 3d 7b 52 00 00 00 	cmpl   $0x0,0x527b(%rip)        # 407530 <is_checker>
  4022b5:	0f 85 c2 01 00 00    	jne    40247d <notify_server+0x205>
  4022bb:	89 fb                	mov    %edi,%ebx
  4022bd:	81 3d 7d 5e 00 00 9c 	cmpl   $0x1f9c,0x5e7d(%rip)        # 408144 <gets_cnt>
  4022c4:	1f 00 00 
  4022c7:	0f 8f bd 00 00 00    	jg     40238a <notify_server+0x112>
  4022cd:	0f be 05 74 5e 00 00 	movsbl 0x5e74(%rip),%eax        # 408148 <target_prefix>
  4022d4:	83 3d a5 51 00 00 00 	cmpl   $0x0,0x51a5(%rip)        # 407480 <notify>
  4022db:	0f 84 c4 00 00 00    	je     4023a5 <notify_server+0x12d>
  4022e1:	8b 15 41 52 00 00    	mov    0x5241(%rip),%edx        # 407528 <authkey>
  4022e7:	85 db                	test   %ebx,%ebx
  4022e9:	0f 84 c0 00 00 00    	je     4023af <notify_server+0x137>
  4022ef:	48 8d 2d 4d 23 00 00 	lea    0x234d(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4022f6:	48 89 e7             	mov    %rsp,%rdi
  4022f9:	48 8d 0d 40 52 00 00 	lea    0x5240(%rip),%rcx        # 407540 <gets_buf>
  402300:	51                   	push   %rcx
  402301:	56                   	push   %rsi
  402302:	50                   	push   %rax
  402303:	52                   	push   %rdx
  402304:	49 89 e9             	mov    %rbp,%r9
  402307:	44 8b 05 22 4e 00 00 	mov    0x4e22(%rip),%r8d        # 407130 <target_id>
  40230e:	48 8d 0d 38 23 00 00 	lea    0x2338(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  402315:	ba 00 20 00 00       	mov    $0x2000,%edx
  40231a:	be 02 00 00 00       	mov    $0x2,%esi
  40231f:	b8 00 00 00 00       	mov    $0x0,%eax
  402324:	e8 f7 ee ff ff       	call   401220 <__sprintf_chk@plt>
  402329:	48 83 c4 20          	add    $0x20,%rsp
  40232d:	83 3d 4c 51 00 00 00 	cmpl   $0x0,0x514c(%rip)        # 407480 <notify>
  402334:	0f 84 ba 00 00 00    	je     4023f4 <notify_server+0x17c>
  40233a:	48 89 e1             	mov    %rsp,%rcx
  40233d:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402344:	00 
  402345:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40234b:	48 8b 15 f6 4d 00 00 	mov    0x4df6(%rip),%rdx        # 407148 <lab>
  402352:	48 8b 35 f7 4d 00 00 	mov    0x4df7(%rip),%rsi        # 407150 <course>
  402359:	48 8b 3d e0 4d 00 00 	mov    0x4de0(%rip),%rdi        # 407140 <user_id>
  402360:	e8 4e 12 00 00       	call   4035b3 <driver_post>
  402365:	85 c0                	test   %eax,%eax
  402367:	78 52                	js     4023bb <notify_server+0x143>
  402369:	85 db                	test   %ebx,%ebx
  40236b:	74 76                	je     4023e3 <notify_server+0x16b>
  40236d:	48 8d 3d 0c 1f 00 00 	lea    0x1f0c(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  402374:	e8 07 ed ff ff       	call   401080 <puts@plt>
  402379:	48 8d 3d f5 22 00 00 	lea    0x22f5(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  402380:	e8 fb ec ff ff       	call   401080 <puts@plt>
  402385:	e9 f3 00 00 00       	jmp    40247d <notify_server+0x205>
  40238a:	48 8d 35 bf 1e 00 00 	lea    0x1ebf(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  402391:	bf 02 00 00 00       	mov    $0x2,%edi
  402396:	e8 f5 ed ff ff       	call   401190 <__printf_chk@plt>
  40239b:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a0:	e8 3b ee ff ff       	call   4011e0 <exit@plt>
  4023a5:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4023aa:	e9 38 ff ff ff       	jmp    4022e7 <notify_server+0x6f>
  4023af:	48 8d 2d 92 22 00 00 	lea    0x2292(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  4023b6:	e9 3b ff ff ff       	jmp    4022f6 <notify_server+0x7e>
  4023bb:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4023c2:	00 
  4023c3:	48 8d 35 9f 22 00 00 	lea    0x229f(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  4023ca:	bf 02 00 00 00       	mov    $0x2,%edi
  4023cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d4:	e8 b7 ed ff ff       	call   401190 <__printf_chk@plt>
  4023d9:	bf 01 00 00 00       	mov    $0x1,%edi
  4023de:	e8 fd ed ff ff       	call   4011e0 <exit@plt>
  4023e3:	48 8d 3d 95 22 00 00 	lea    0x2295(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  4023ea:	e8 91 ec ff ff       	call   401080 <puts@plt>
  4023ef:	e9 89 00 00 00       	jmp    40247d <notify_server+0x205>
  4023f4:	48 89 ea             	mov    %rbp,%rdx
  4023f7:	48 8d 35 ba 1e 00 00 	lea    0x1eba(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4023fe:	bf 02 00 00 00       	mov    $0x2,%edi
  402403:	b8 00 00 00 00       	mov    $0x0,%eax
  402408:	e8 83 ed ff ff       	call   401190 <__printf_chk@plt>
  40240d:	48 8b 15 2c 4d 00 00 	mov    0x4d2c(%rip),%rdx        # 407140 <user_id>
  402414:	48 8d 35 6b 22 00 00 	lea    0x226b(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  40241b:	bf 02 00 00 00       	mov    $0x2,%edi
  402420:	b8 00 00 00 00       	mov    $0x0,%eax
  402425:	e8 66 ed ff ff       	call   401190 <__printf_chk@plt>
  40242a:	48 8b 15 1f 4d 00 00 	mov    0x4d1f(%rip),%rdx        # 407150 <course>
  402431:	48 8d 35 5b 22 00 00 	lea    0x225b(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  402438:	bf 02 00 00 00       	mov    $0x2,%edi
  40243d:	b8 00 00 00 00       	mov    $0x0,%eax
  402442:	e8 49 ed ff ff       	call   401190 <__printf_chk@plt>
  402447:	48 8b 15 fa 4c 00 00 	mov    0x4cfa(%rip),%rdx        # 407148 <lab>
  40244e:	48 8d 35 4a 22 00 00 	lea    0x224a(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  402455:	bf 02 00 00 00       	mov    $0x2,%edi
  40245a:	b8 00 00 00 00       	mov    $0x0,%eax
  40245f:	e8 2c ed ff ff       	call   401190 <__printf_chk@plt>
  402464:	48 89 e2             	mov    %rsp,%rdx
  402467:	48 8d 35 3a 22 00 00 	lea    0x223a(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  40246e:	bf 02 00 00 00       	mov    $0x2,%edi
  402473:	b8 00 00 00 00       	mov    $0x0,%eax
  402478:	e8 13 ed ff ff       	call   401190 <__printf_chk@plt>
  40247d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402484:	00 
  402485:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40248c:	00 00 
  40248e:	75 0a                	jne    40249a <notify_server+0x222>
  402490:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402497:	5b                   	pop    %rbx
  402498:	5d                   	pop    %rbp
  402499:	c3                   	ret    
  40249a:	e8 72 02 00 00       	call   402711 <__stack_chk_fail>

000000000040249f <validate>:
  40249f:	f3 0f 1e fa          	endbr64 
  4024a3:	53                   	push   %rbx
  4024a4:	89 fb                	mov    %edi,%ebx
  4024a6:	83 3d 83 50 00 00 00 	cmpl   $0x0,0x5083(%rip)        # 407530 <is_checker>
  4024ad:	74 79                	je     402528 <validate+0x89>
  4024af:	39 3d 6f 50 00 00    	cmp    %edi,0x506f(%rip)        # 407524 <vlevel>
  4024b5:	75 39                	jne    4024f0 <validate+0x51>
  4024b7:	8b 15 63 50 00 00    	mov    0x5063(%rip),%edx        # 407520 <check_level>
  4024bd:	39 fa                	cmp    %edi,%edx
  4024bf:	75 45                	jne    402506 <validate+0x67>
  4024c1:	0f be 0d 80 5c 00 00 	movsbl 0x5c80(%rip),%ecx        # 408148 <target_prefix>
  4024c8:	4c 8d 0d 71 50 00 00 	lea    0x5071(%rip),%r9        # 407540 <gets_buf>
  4024cf:	41 89 f8             	mov    %edi,%r8d
  4024d2:	8b 15 50 50 00 00    	mov    0x5050(%rip),%edx        # 407528 <authkey>
  4024d8:	48 8d 35 29 1e 00 00 	lea    0x1e29(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  4024df:	bf 02 00 00 00       	mov    $0x2,%edi
  4024e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e9:	e8 a2 ec ff ff       	call   401190 <__printf_chk@plt>
  4024ee:	5b                   	pop    %rbx
  4024ef:	c3                   	ret    
  4024f0:	48 8d 3d bd 21 00 00 	lea    0x21bd(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024f7:	e8 84 eb ff ff       	call   401080 <puts@plt>
  4024fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402501:	e8 de fc ff ff       	call   4021e4 <check_fail>
  402506:	89 f9                	mov    %edi,%ecx
  402508:	48 8d 35 d1 1d 00 00 	lea    0x1dd1(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  40250f:	bf 02 00 00 00       	mov    $0x2,%edi
  402514:	b8 00 00 00 00       	mov    $0x0,%eax
  402519:	e8 72 ec ff ff       	call   401190 <__printf_chk@plt>
  40251e:	b8 00 00 00 00       	mov    $0x0,%eax
  402523:	e8 bc fc ff ff       	call   4021e4 <check_fail>
  402528:	39 3d f6 4f 00 00    	cmp    %edi,0x4ff6(%rip)        # 407524 <vlevel>
  40252e:	74 1a                	je     40254a <validate+0xab>
  402530:	48 8d 3d 7d 21 00 00 	lea    0x217d(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  402537:	e8 44 eb ff ff       	call   401080 <puts@plt>
  40253c:	89 de                	mov    %ebx,%esi
  40253e:	bf 00 00 00 00       	mov    $0x0,%edi
  402543:	e8 30 fd ff ff       	call   402278 <notify_server>
  402548:	eb a4                	jmp    4024ee <validate+0x4f>
  40254a:	0f be 0d f7 5b 00 00 	movsbl 0x5bf7(%rip),%ecx        # 408148 <target_prefix>
  402551:	89 fa                	mov    %edi,%edx
  402553:	48 8d 35 d6 1d 00 00 	lea    0x1dd6(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  40255a:	bf 02 00 00 00       	mov    $0x2,%edi
  40255f:	b8 00 00 00 00       	mov    $0x0,%eax
  402564:	e8 27 ec ff ff       	call   401190 <__printf_chk@plt>
  402569:	89 de                	mov    %ebx,%esi
  40256b:	bf 01 00 00 00       	mov    $0x1,%edi
  402570:	e8 03 fd ff ff       	call   402278 <notify_server>
  402575:	e9 74 ff ff ff       	jmp    4024ee <validate+0x4f>

000000000040257a <fail>:
  40257a:	f3 0f 1e fa          	endbr64 
  40257e:	48 83 ec 08          	sub    $0x8,%rsp
  402582:	83 3d a7 4f 00 00 00 	cmpl   $0x0,0x4fa7(%rip)        # 407530 <is_checker>
  402589:	75 11                	jne    40259c <fail+0x22>
  40258b:	89 fe                	mov    %edi,%esi
  40258d:	bf 00 00 00 00       	mov    $0x0,%edi
  402592:	e8 e1 fc ff ff       	call   402278 <notify_server>
  402597:	48 83 c4 08          	add    $0x8,%rsp
  40259b:	c3                   	ret    
  40259c:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a1:	e8 3e fc ff ff       	call   4021e4 <check_fail>

00000000004025a6 <bushandler>:
  4025a6:	f3 0f 1e fa          	endbr64 
  4025aa:	50                   	push   %rax
  4025ab:	58                   	pop    %rax
  4025ac:	48 83 ec 08          	sub    $0x8,%rsp
  4025b0:	83 3d 79 4f 00 00 00 	cmpl   $0x0,0x4f79(%rip)        # 407530 <is_checker>
  4025b7:	74 16                	je     4025cf <bushandler+0x29>
  4025b9:	48 8d 3d 12 21 00 00 	lea    0x2112(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  4025c0:	e8 bb ea ff ff       	call   401080 <puts@plt>
  4025c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ca:	e8 15 fc ff ff       	call   4021e4 <check_fail>
  4025cf:	48 8d 3d 92 1d 00 00 	lea    0x1d92(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  4025d6:	e8 a5 ea ff ff       	call   401080 <puts@plt>
  4025db:	48 8d 3d fa 20 00 00 	lea    0x20fa(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025e2:	e8 99 ea ff ff       	call   401080 <puts@plt>
  4025e7:	be 00 00 00 00       	mov    $0x0,%esi
  4025ec:	bf 00 00 00 00       	mov    $0x0,%edi
  4025f1:	e8 82 fc ff ff       	call   402278 <notify_server>
  4025f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4025fb:	e8 e0 eb ff ff       	call   4011e0 <exit@plt>

0000000000402600 <seghandler>:
  402600:	f3 0f 1e fa          	endbr64 
  402604:	50                   	push   %rax
  402605:	58                   	pop    %rax
  402606:	48 83 ec 08          	sub    $0x8,%rsp
  40260a:	83 3d 1f 4f 00 00 00 	cmpl   $0x0,0x4f1f(%rip)        # 407530 <is_checker>
  402611:	74 16                	je     402629 <seghandler+0x29>
  402613:	48 8d 3d d8 20 00 00 	lea    0x20d8(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  40261a:	e8 61 ea ff ff       	call   401080 <puts@plt>
  40261f:	b8 00 00 00 00       	mov    $0x0,%eax
  402624:	e8 bb fb ff ff       	call   4021e4 <check_fail>
  402629:	48 8d 3d 58 1d 00 00 	lea    0x1d58(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  402630:	e8 4b ea ff ff       	call   401080 <puts@plt>
  402635:	48 8d 3d a0 20 00 00 	lea    0x20a0(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40263c:	e8 3f ea ff ff       	call   401080 <puts@plt>
  402641:	be 00 00 00 00       	mov    $0x0,%esi
  402646:	bf 00 00 00 00       	mov    $0x0,%edi
  40264b:	e8 28 fc ff ff       	call   402278 <notify_server>
  402650:	bf 01 00 00 00       	mov    $0x1,%edi
  402655:	e8 86 eb ff ff       	call   4011e0 <exit@plt>

000000000040265a <illegalhandler>:
  40265a:	f3 0f 1e fa          	endbr64 
  40265e:	50                   	push   %rax
  40265f:	58                   	pop    %rax
  402660:	48 83 ec 08          	sub    $0x8,%rsp
  402664:	83 3d c5 4e 00 00 00 	cmpl   $0x0,0x4ec5(%rip)        # 407530 <is_checker>
  40266b:	74 16                	je     402683 <illegalhandler+0x29>
  40266d:	48 8d 3d 91 20 00 00 	lea    0x2091(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  402674:	e8 07 ea ff ff       	call   401080 <puts@plt>
  402679:	b8 00 00 00 00       	mov    $0x0,%eax
  40267e:	e8 61 fb ff ff       	call   4021e4 <check_fail>
  402683:	48 8d 3d 26 1d 00 00 	lea    0x1d26(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  40268a:	e8 f1 e9 ff ff       	call   401080 <puts@plt>
  40268f:	48 8d 3d 46 20 00 00 	lea    0x2046(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402696:	e8 e5 e9 ff ff       	call   401080 <puts@plt>
  40269b:	be 00 00 00 00       	mov    $0x0,%esi
  4026a0:	bf 00 00 00 00       	mov    $0x0,%edi
  4026a5:	e8 ce fb ff ff       	call   402278 <notify_server>
  4026aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4026af:	e8 2c eb ff ff       	call   4011e0 <exit@plt>

00000000004026b4 <sigalrmhandler>:
  4026b4:	f3 0f 1e fa          	endbr64 
  4026b8:	50                   	push   %rax
  4026b9:	58                   	pop    %rax
  4026ba:	48 83 ec 08          	sub    $0x8,%rsp
  4026be:	83 3d 6b 4e 00 00 00 	cmpl   $0x0,0x4e6b(%rip)        # 407530 <is_checker>
  4026c5:	74 16                	je     4026dd <sigalrmhandler+0x29>
  4026c7:	48 8d 3d 4b 20 00 00 	lea    0x204b(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  4026ce:	e8 ad e9 ff ff       	call   401080 <puts@plt>
  4026d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d8:	e8 07 fb ff ff       	call   4021e4 <check_fail>
  4026dd:	ba 02 00 00 00       	mov    $0x2,%edx
  4026e2:	48 8d 35 f7 1c 00 00 	lea    0x1cf7(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  4026e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4026ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f3:	e8 98 ea ff ff       	call   401190 <__printf_chk@plt>
  4026f8:	be 00 00 00 00       	mov    $0x0,%esi
  4026fd:	bf 00 00 00 00       	mov    $0x0,%edi
  402702:	e8 71 fb ff ff       	call   402278 <notify_server>
  402707:	bf 01 00 00 00       	mov    $0x1,%edi
  40270c:	e8 cf ea ff ff       	call   4011e0 <exit@plt>

0000000000402711 <__stack_chk_fail>:
  402711:	f3 0f 1e fa          	endbr64 
  402715:	50                   	push   %rax
  402716:	58                   	pop    %rax
  402717:	48 83 ec 08          	sub    $0x8,%rsp
  40271b:	83 3d 0e 4e 00 00 00 	cmpl   $0x0,0x4e0e(%rip)        # 407530 <is_checker>
  402722:	74 16                	je     40273a <__stack_chk_fail+0x29>
  402724:	48 8d 3d f6 1f 00 00 	lea    0x1ff6(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  40272b:	e8 50 e9 ff ff       	call   401080 <puts@plt>
  402730:	b8 00 00 00 00       	mov    $0x0,%eax
  402735:	e8 aa fa ff ff       	call   4021e4 <check_fail>
  40273a:	48 8d 3d d7 1c 00 00 	lea    0x1cd7(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  402741:	e8 3a e9 ff ff       	call   401080 <puts@plt>
  402746:	48 8d 3d 8f 1f 00 00 	lea    0x1f8f(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40274d:	e8 2e e9 ff ff       	call   401080 <puts@plt>
  402752:	be 00 00 00 00       	mov    $0x0,%esi
  402757:	bf 00 00 00 00       	mov    $0x0,%edi
  40275c:	e8 17 fb ff ff       	call   402278 <notify_server>
  402761:	bf 01 00 00 00       	mov    $0x1,%edi
  402766:	e8 75 ea ff ff       	call   4011e0 <exit@plt>

000000000040276b <launch>:
  40276b:	f3 0f 1e fa          	endbr64 
  40276f:	55                   	push   %rbp
  402770:	48 89 e5             	mov    %rsp,%rbp
  402773:	53                   	push   %rbx
  402774:	48 83 ec 18          	sub    $0x18,%rsp
  402778:	48 89 fa             	mov    %rdi,%rdx
  40277b:	89 f3                	mov    %esi,%ebx
  40277d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402784:	00 00 
  402786:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40278a:	31 c0                	xor    %eax,%eax
  40278c:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402790:	48 89 c6             	mov    %rax,%rsi
  402793:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402797:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40279d:	48 89 e1             	mov    %rsp,%rcx
  4027a0:	48 29 c1             	sub    %rax,%rcx
  4027a3:	48 39 cc             	cmp    %rcx,%rsp
  4027a6:	74 12                	je     4027ba <launch+0x4f>
  4027a8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4027af:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4027b6:	00 00 
  4027b8:	eb e9                	jmp    4027a3 <launch+0x38>
  4027ba:	48 89 f0             	mov    %rsi,%rax
  4027bd:	25 ff 0f 00 00       	and    $0xfff,%eax
  4027c2:	48 29 c4             	sub    %rax,%rsp
  4027c5:	48 85 c0             	test   %rax,%rax
  4027c8:	74 06                	je     4027d0 <launch+0x65>
  4027ca:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4027d0:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4027d5:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4027d9:	48 89 d1             	mov    %rdx,%rcx
  4027dc:	be f4 00 00 00       	mov    $0xf4,%esi
  4027e1:	e8 ea e9 ff ff       	call   4011d0 <__memset_chk@plt>
  4027e6:	48 8b 05 b3 4c 00 00 	mov    0x4cb3(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4027ed:	48 39 05 24 4d 00 00 	cmp    %rax,0x4d24(%rip)        # 407518 <infile>
  4027f4:	74 42                	je     402838 <launch+0xcd>
  4027f6:	c7 05 24 4d 00 00 00 	movl   $0x0,0x4d24(%rip)        # 407524 <vlevel>
  4027fd:	00 00 00 
  402800:	85 db                	test   %ebx,%ebx
  402802:	75 4c                	jne    402850 <launch+0xe5>
  402804:	b8 00 00 00 00       	mov    $0x0,%eax
  402809:	e8 c8 f6 ff ff       	call   401ed6 <test>
  40280e:	83 3d 1b 4d 00 00 00 	cmpl   $0x0,0x4d1b(%rip)        # 407530 <is_checker>
  402815:	75 45                	jne    40285c <launch+0xf1>
  402817:	48 8d 3d 2a 1f 00 00 	lea    0x1f2a(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  40281e:	e8 5d e8 ff ff       	call   401080 <puts@plt>
  402823:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402827:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40282e:	00 00 
  402830:	75 40                	jne    402872 <launch+0x107>
  402832:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402836:	c9                   	leave  
  402837:	c3                   	ret    
  402838:	48 8d 35 f1 1e 00 00 	lea    0x1ef1(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  40283f:	bf 02 00 00 00       	mov    $0x2,%edi
  402844:	b8 00 00 00 00       	mov    $0x0,%eax
  402849:	e8 42 e9 ff ff       	call   401190 <__printf_chk@plt>
  40284e:	eb a6                	jmp    4027f6 <launch+0x8b>
  402850:	b8 00 00 00 00       	mov    $0x0,%eax
  402855:	e8 ab f6 ff ff       	call   401f05 <test2>
  40285a:	eb b2                	jmp    40280e <launch+0xa3>
  40285c:	48 8d 3d da 1e 00 00 	lea    0x1eda(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  402863:	e8 18 e8 ff ff       	call   401080 <puts@plt>
  402868:	b8 00 00 00 00       	mov    $0x0,%eax
  40286d:	e8 72 f9 ff ff       	call   4021e4 <check_fail>
  402872:	e8 9a fe ff ff       	call   402711 <__stack_chk_fail>

0000000000402877 <stable_launch>:
  402877:	f3 0f 1e fa          	endbr64 
  40287b:	55                   	push   %rbp
  40287c:	53                   	push   %rbx
  40287d:	48 83 ec 08          	sub    $0x8,%rsp
  402881:	89 f5                	mov    %esi,%ebp
  402883:	48 89 3d 86 4c 00 00 	mov    %rdi,0x4c86(%rip)        # 407510 <global_offset>
  40288a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402890:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402896:	b9 32 01 00 00       	mov    $0x132,%ecx
  40289b:	ba 07 00 00 00       	mov    $0x7,%edx
  4028a0:	be 00 00 10 00       	mov    $0x100000,%esi
  4028a5:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4028aa:	e8 01 e8 ff ff       	call   4010b0 <mmap@plt>
  4028af:	48 89 c3             	mov    %rax,%rbx
  4028b2:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4028b8:	75 4a                	jne    402904 <stable_launch+0x8d>
  4028ba:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4028c1:	48 89 15 40 4c 00 00 	mov    %rdx,0x4c40(%rip)        # 407508 <stack_top>
  4028c8:	48 89 e0             	mov    %rsp,%rax
  4028cb:	48 89 d4             	mov    %rdx,%rsp
  4028ce:	48 89 c2             	mov    %rax,%rdx
  4028d1:	48 89 15 28 4c 00 00 	mov    %rdx,0x4c28(%rip)        # 407500 <global_save_stack>
  4028d8:	89 ee                	mov    %ebp,%esi
  4028da:	48 8b 3d 2f 4c 00 00 	mov    0x4c2f(%rip),%rdi        # 407510 <global_offset>
  4028e1:	e8 85 fe ff ff       	call   40276b <launch>
  4028e6:	48 8b 05 13 4c 00 00 	mov    0x4c13(%rip),%rax        # 407500 <global_save_stack>
  4028ed:	48 89 c4             	mov    %rax,%rsp
  4028f0:	be 00 00 10 00       	mov    $0x100000,%esi
  4028f5:	48 89 df             	mov    %rbx,%rdi
  4028f8:	e8 83 e8 ff ff       	call   401180 <munmap@plt>
  4028fd:	48 83 c4 08          	add    $0x8,%rsp
  402901:	5b                   	pop    %rbx
  402902:	5d                   	pop    %rbp
  402903:	c3                   	ret    
  402904:	be 00 00 10 00       	mov    $0x100000,%esi
  402909:	48 89 c7             	mov    %rax,%rdi
  40290c:	e8 6f e8 ff ff       	call   401180 <munmap@plt>
  402911:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402916:	48 8d 15 23 1b 00 00 	lea    0x1b23(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  40291d:	be 02 00 00 00       	mov    $0x2,%esi
  402922:	48 8b 3d b7 4b 00 00 	mov    0x4bb7(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402929:	b8 00 00 00 00       	mov    $0x0,%eax
  40292e:	e8 cd e8 ff ff       	call   401200 <__fprintf_chk@plt>
  402933:	bf 01 00 00 00       	mov    $0x1,%edi
  402938:	e8 a3 e8 ff ff       	call   4011e0 <exit@plt>

000000000040293d <rio_readinitb>:
  40293d:	89 37                	mov    %esi,(%rdi)
  40293f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402946:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40294a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40294e:	c3                   	ret    

000000000040294f <sigalrm_handler>:
  40294f:	f3 0f 1e fa          	endbr64 
  402953:	50                   	push   %rax
  402954:	58                   	pop    %rax
  402955:	48 83 ec 08          	sub    $0x8,%rsp
  402959:	b9 00 00 00 00       	mov    $0x0,%ecx
  40295e:	48 8d 15 03 1b 00 00 	lea    0x1b03(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  402965:	be 02 00 00 00       	mov    $0x2,%esi
  40296a:	48 8b 3d 6f 4b 00 00 	mov    0x4b6f(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402971:	b8 00 00 00 00       	mov    $0x0,%eax
  402976:	e8 85 e8 ff ff       	call   401200 <__fprintf_chk@plt>
  40297b:	bf 01 00 00 00       	mov    $0x1,%edi
  402980:	e8 5b e8 ff ff       	call   4011e0 <exit@plt>

0000000000402985 <rio_writen>:
  402985:	41 55                	push   %r13
  402987:	41 54                	push   %r12
  402989:	55                   	push   %rbp
  40298a:	53                   	push   %rbx
  40298b:	48 83 ec 08          	sub    $0x8,%rsp
  40298f:	41 89 fc             	mov    %edi,%r12d
  402992:	48 89 f5             	mov    %rsi,%rbp
  402995:	49 89 d5             	mov    %rdx,%r13
  402998:	48 89 d3             	mov    %rdx,%rbx
  40299b:	eb 06                	jmp    4029a3 <rio_writen+0x1e>
  40299d:	48 29 c3             	sub    %rax,%rbx
  4029a0:	48 01 c5             	add    %rax,%rbp
  4029a3:	48 85 db             	test   %rbx,%rbx
  4029a6:	74 24                	je     4029cc <rio_writen+0x47>
  4029a8:	48 89 da             	mov    %rbx,%rdx
  4029ab:	48 89 ee             	mov    %rbp,%rsi
  4029ae:	44 89 e7             	mov    %r12d,%edi
  4029b1:	e8 da e6 ff ff       	call   401090 <write@plt>
  4029b6:	48 85 c0             	test   %rax,%rax
  4029b9:	7f e2                	jg     40299d <rio_writen+0x18>
  4029bb:	e8 70 e6 ff ff       	call   401030 <__errno_location@plt>
  4029c0:	83 38 04             	cmpl   $0x4,(%rax)
  4029c3:	75 15                	jne    4029da <rio_writen+0x55>
  4029c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ca:	eb d1                	jmp    40299d <rio_writen+0x18>
  4029cc:	4c 89 e8             	mov    %r13,%rax
  4029cf:	48 83 c4 08          	add    $0x8,%rsp
  4029d3:	5b                   	pop    %rbx
  4029d4:	5d                   	pop    %rbp
  4029d5:	41 5c                	pop    %r12
  4029d7:	41 5d                	pop    %r13
  4029d9:	c3                   	ret    
  4029da:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029e1:	eb ec                	jmp    4029cf <rio_writen+0x4a>

00000000004029e3 <rio_read>:
  4029e3:	41 55                	push   %r13
  4029e5:	41 54                	push   %r12
  4029e7:	55                   	push   %rbp
  4029e8:	53                   	push   %rbx
  4029e9:	48 83 ec 08          	sub    $0x8,%rsp
  4029ed:	48 89 fb             	mov    %rdi,%rbx
  4029f0:	49 89 f5             	mov    %rsi,%r13
  4029f3:	49 89 d4             	mov    %rdx,%r12
  4029f6:	eb 0a                	jmp    402a02 <rio_read+0x1f>
  4029f8:	e8 33 e6 ff ff       	call   401030 <__errno_location@plt>
  4029fd:	83 38 04             	cmpl   $0x4,(%rax)
  402a00:	75 5f                	jne    402a61 <rio_read+0x7e>
  402a02:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402a05:	85 ed                	test   %ebp,%ebp
  402a07:	7f 22                	jg     402a2b <rio_read+0x48>
  402a09:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a0d:	8b 3b                	mov    (%rbx),%edi
  402a0f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a14:	48 89 ee             	mov    %rbp,%rsi
  402a17:	e8 c4 e6 ff ff       	call   4010e0 <read@plt>
  402a1c:	89 43 04             	mov    %eax,0x4(%rbx)
  402a1f:	85 c0                	test   %eax,%eax
  402a21:	78 d5                	js     4029f8 <rio_read+0x15>
  402a23:	74 45                	je     402a6a <rio_read+0x87>
  402a25:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a29:	eb d7                	jmp    402a02 <rio_read+0x1f>
  402a2b:	89 e8                	mov    %ebp,%eax
  402a2d:	4c 39 e0             	cmp    %r12,%rax
  402a30:	72 03                	jb     402a35 <rio_read+0x52>
  402a32:	44 89 e5             	mov    %r12d,%ebp
  402a35:	4c 63 e5             	movslq %ebp,%r12
  402a38:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a3c:	4c 89 e2             	mov    %r12,%rdx
  402a3f:	4c 89 ef             	mov    %r13,%rdi
  402a42:	e8 f9 e6 ff ff       	call   401140 <memcpy@plt>
  402a47:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a4b:	8b 43 04             	mov    0x4(%rbx),%eax
  402a4e:	29 e8                	sub    %ebp,%eax
  402a50:	89 43 04             	mov    %eax,0x4(%rbx)
  402a53:	4c 89 e0             	mov    %r12,%rax
  402a56:	48 83 c4 08          	add    $0x8,%rsp
  402a5a:	5b                   	pop    %rbx
  402a5b:	5d                   	pop    %rbp
  402a5c:	41 5c                	pop    %r12
  402a5e:	41 5d                	pop    %r13
  402a60:	c3                   	ret    
  402a61:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a68:	eb ec                	jmp    402a56 <rio_read+0x73>
  402a6a:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6f:	eb e5                	jmp    402a56 <rio_read+0x73>

0000000000402a71 <rio_readlineb>:
  402a71:	41 55                	push   %r13
  402a73:	41 54                	push   %r12
  402a75:	55                   	push   %rbp
  402a76:	53                   	push   %rbx
  402a77:	48 83 ec 18          	sub    $0x18,%rsp
  402a7b:	49 89 fd             	mov    %rdi,%r13
  402a7e:	48 89 f5             	mov    %rsi,%rbp
  402a81:	49 89 d4             	mov    %rdx,%r12
  402a84:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a8b:	00 00 
  402a8d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a92:	31 c0                	xor    %eax,%eax
  402a94:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a99:	eb 18                	jmp    402ab3 <rio_readlineb+0x42>
  402a9b:	85 c0                	test   %eax,%eax
  402a9d:	75 65                	jne    402b04 <rio_readlineb+0x93>
  402a9f:	48 83 fb 01          	cmp    $0x1,%rbx
  402aa3:	75 3d                	jne    402ae2 <rio_readlineb+0x71>
  402aa5:	b8 00 00 00 00       	mov    $0x0,%eax
  402aaa:	eb 3d                	jmp    402ae9 <rio_readlineb+0x78>
  402aac:	48 83 c3 01          	add    $0x1,%rbx
  402ab0:	48 89 d5             	mov    %rdx,%rbp
  402ab3:	4c 39 e3             	cmp    %r12,%rbx
  402ab6:	73 2a                	jae    402ae2 <rio_readlineb+0x71>
  402ab8:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402abd:	ba 01 00 00 00       	mov    $0x1,%edx
  402ac2:	4c 89 ef             	mov    %r13,%rdi
  402ac5:	e8 19 ff ff ff       	call   4029e3 <rio_read>
  402aca:	83 f8 01             	cmp    $0x1,%eax
  402acd:	75 cc                	jne    402a9b <rio_readlineb+0x2a>
  402acf:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402ad3:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402ad8:	88 45 00             	mov    %al,0x0(%rbp)
  402adb:	3c 0a                	cmp    $0xa,%al
  402add:	75 cd                	jne    402aac <rio_readlineb+0x3b>
  402adf:	48 89 d5             	mov    %rdx,%rbp
  402ae2:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402ae6:	48 89 d8             	mov    %rbx,%rax
  402ae9:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402aee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402af5:	00 00 
  402af7:	75 14                	jne    402b0d <rio_readlineb+0x9c>
  402af9:	48 83 c4 18          	add    $0x18,%rsp
  402afd:	5b                   	pop    %rbx
  402afe:	5d                   	pop    %rbp
  402aff:	41 5c                	pop    %r12
  402b01:	41 5d                	pop    %r13
  402b03:	c3                   	ret    
  402b04:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b0b:	eb dc                	jmp    402ae9 <rio_readlineb+0x78>
  402b0d:	e8 ff fb ff ff       	call   402711 <__stack_chk_fail>

0000000000402b12 <urlencode>:
  402b12:	41 54                	push   %r12
  402b14:	55                   	push   %rbp
  402b15:	53                   	push   %rbx
  402b16:	48 83 ec 10          	sub    $0x10,%rsp
  402b1a:	48 89 fb             	mov    %rdi,%rbx
  402b1d:	48 89 f5             	mov    %rsi,%rbp
  402b20:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b27:	00 00 
  402b29:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b2e:	31 c0                	xor    %eax,%eax
  402b30:	e8 6b e5 ff ff       	call   4010a0 <strlen@plt>
  402b35:	eb 0f                	jmp    402b46 <urlencode+0x34>
  402b37:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402b3b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b3f:	48 83 c3 01          	add    $0x1,%rbx
  402b43:	44 89 e0             	mov    %r12d,%eax
  402b46:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b4a:	85 c0                	test   %eax,%eax
  402b4c:	0f 84 a8 00 00 00    	je     402bfa <urlencode+0xe8>
  402b52:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b56:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b5a:	0f 94 c0             	sete   %al
  402b5d:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b61:	0f 94 c2             	sete   %dl
  402b64:	08 d0                	or     %dl,%al
  402b66:	75 cf                	jne    402b37 <urlencode+0x25>
  402b68:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b6c:	74 c9                	je     402b37 <urlencode+0x25>
  402b6e:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b72:	74 c3                	je     402b37 <urlencode+0x25>
  402b74:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b78:	3c 09                	cmp    $0x9,%al
  402b7a:	76 bb                	jbe    402b37 <urlencode+0x25>
  402b7c:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b80:	3c 19                	cmp    $0x19,%al
  402b82:	76 b3                	jbe    402b37 <urlencode+0x25>
  402b84:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b88:	3c 19                	cmp    $0x19,%al
  402b8a:	76 ab                	jbe    402b37 <urlencode+0x25>
  402b8c:	41 80 f8 20          	cmp    $0x20,%r8b
  402b90:	74 56                	je     402be8 <urlencode+0xd6>
  402b92:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b96:	3c 5f                	cmp    $0x5f,%al
  402b98:	0f 96 c0             	setbe  %al
  402b9b:	41 80 f8 09          	cmp    $0x9,%r8b
  402b9f:	0f 94 c2             	sete   %dl
  402ba2:	08 d0                	or     %dl,%al
  402ba4:	74 4f                	je     402bf5 <urlencode+0xe3>
  402ba6:	48 89 e7             	mov    %rsp,%rdi
  402ba9:	45 0f b6 c0          	movzbl %r8b,%r8d
  402bad:	48 8d 0d a2 1b 00 00 	lea    0x1ba2(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402bb4:	ba 08 00 00 00       	mov    $0x8,%edx
  402bb9:	be 02 00 00 00       	mov    $0x2,%esi
  402bbe:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc3:	e8 58 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402bc8:	0f b6 04 24          	movzbl (%rsp),%eax
  402bcc:	88 45 00             	mov    %al,0x0(%rbp)
  402bcf:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402bd4:	88 45 01             	mov    %al,0x1(%rbp)
  402bd7:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402bdc:	88 45 02             	mov    %al,0x2(%rbp)
  402bdf:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402be3:	e9 57 ff ff ff       	jmp    402b3f <urlencode+0x2d>
  402be8:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402bec:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bf0:	e9 4a ff ff ff       	jmp    402b3f <urlencode+0x2d>
  402bf5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bfa:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402bff:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402c06:	00 00 
  402c08:	75 09                	jne    402c13 <urlencode+0x101>
  402c0a:	48 83 c4 10          	add    $0x10,%rsp
  402c0e:	5b                   	pop    %rbx
  402c0f:	5d                   	pop    %rbp
  402c10:	41 5c                	pop    %r12
  402c12:	c3                   	ret    
  402c13:	e8 f9 fa ff ff       	call   402711 <__stack_chk_fail>

0000000000402c18 <submitr>:
  402c18:	f3 0f 1e fa          	endbr64 
  402c1c:	41 57                	push   %r15
  402c1e:	41 56                	push   %r14
  402c20:	41 55                	push   %r13
  402c22:	41 54                	push   %r12
  402c24:	55                   	push   %rbp
  402c25:	53                   	push   %rbx
  402c26:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402c2d:	ff 
  402c2e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402c35:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402c3a:	4c 39 dc             	cmp    %r11,%rsp
  402c3d:	75 ef                	jne    402c2e <submitr+0x16>
  402c3f:	48 83 ec 68          	sub    $0x68,%rsp
  402c43:	49 89 fd             	mov    %rdi,%r13
  402c46:	41 89 f6             	mov    %esi,%r14d
  402c49:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402c4e:	49 89 cc             	mov    %rcx,%r12
  402c51:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402c56:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402c5b:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402c62:	00 
  402c63:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c6a:	00 00 
  402c6c:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c73:	00 
  402c74:	31 c0                	xor    %eax,%eax
  402c76:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c7d:	00 
  402c7e:	ba 00 00 00 00       	mov    $0x0,%edx
  402c83:	be 01 00 00 00       	mov    $0x1,%esi
  402c88:	bf 02 00 00 00       	mov    $0x2,%edi
  402c8d:	e8 9e e5 ff ff       	call   401230 <socket@plt>
  402c92:	85 c0                	test   %eax,%eax
  402c94:	0f 88 72 02 00 00    	js     402f0c <submitr+0x2f4>
  402c9a:	89 c3                	mov    %eax,%ebx
  402c9c:	4c 89 ef             	mov    %r13,%rdi
  402c9f:	e8 6c e4 ff ff       	call   401110 <gethostbyname@plt>
  402ca4:	48 85 c0             	test   %rax,%rax
  402ca7:	0f 84 ab 02 00 00    	je     402f58 <submitr+0x340>
  402cad:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402cb2:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402cb6:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402cbb:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402cc2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cc6:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cca:	48 8b 30             	mov    (%rax),%rsi
  402ccd:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402cd2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cd7:	e8 44 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402cdc:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402ce1:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402ce7:	ba 10 00 00 00       	mov    $0x10,%edx
  402cec:	48 89 ee             	mov    %rbp,%rsi
  402cef:	89 df                	mov    %ebx,%edi
  402cf1:	e8 fa e4 ff ff       	call   4011f0 <connect@plt>
  402cf6:	85 c0                	test   %eax,%eax
  402cf8:	0f 88 cc 02 00 00    	js     402fca <submitr+0x3b2>
  402cfe:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d03:	e8 98 e3 ff ff       	call   4010a0 <strlen@plt>
  402d08:	49 89 c6             	mov    %rax,%r14
  402d0b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402d10:	e8 8b e3 ff ff       	call   4010a0 <strlen@plt>
  402d15:	48 89 c5             	mov    %rax,%rbp
  402d18:	4c 89 e7             	mov    %r12,%rdi
  402d1b:	e8 80 e3 ff ff       	call   4010a0 <strlen@plt>
  402d20:	48 01 c5             	add    %rax,%rbp
  402d23:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402d28:	e8 73 e3 ff ff       	call   4010a0 <strlen@plt>
  402d2d:	48 01 c5             	add    %rax,%rbp
  402d30:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402d34:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402d3b:	00 
  402d3c:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402d42:	0f 87 e6 02 00 00    	ja     40302e <submitr+0x416>
  402d48:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d4f:	00 
  402d50:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d55:	b8 00 00 00 00       	mov    $0x0,%eax
  402d5a:	48 89 f7             	mov    %rsi,%rdi
  402d5d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d60:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d65:	e8 a8 fd ff ff       	call   402b12 <urlencode>
  402d6a:	85 c0                	test   %eax,%eax
  402d6c:	0f 88 2e 03 00 00    	js     4030a0 <submitr+0x488>
  402d72:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402d79:	00 
  402d7a:	48 83 ec 08          	sub    $0x8,%rsp
  402d7e:	41 55                	push   %r13
  402d80:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d87:	00 
  402d88:	50                   	push   %rax
  402d89:	41 54                	push   %r12
  402d8b:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d90:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d95:	48 8d 0d f4 16 00 00 	lea    0x16f4(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d9c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402da1:	be 02 00 00 00       	mov    $0x2,%esi
  402da6:	48 89 ef             	mov    %rbp,%rdi
  402da9:	b8 00 00 00 00       	mov    $0x0,%eax
  402dae:	e8 6d e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402db3:	48 83 c4 20          	add    $0x20,%rsp
  402db7:	48 89 ef             	mov    %rbp,%rdi
  402dba:	e8 e1 e2 ff ff       	call   4010a0 <strlen@plt>
  402dbf:	48 89 c2             	mov    %rax,%rdx
  402dc2:	48 89 ee             	mov    %rbp,%rsi
  402dc5:	89 df                	mov    %ebx,%edi
  402dc7:	e8 b9 fb ff ff       	call   402985 <rio_writen>
  402dcc:	48 85 c0             	test   %rax,%rax
  402dcf:	0f 88 53 03 00 00    	js     403128 <submitr+0x510>
  402dd5:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402dda:	89 de                	mov    %ebx,%esi
  402ddc:	48 89 ef             	mov    %rbp,%rdi
  402ddf:	e8 59 fb ff ff       	call   40293d <rio_readinitb>
  402de4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402deb:	00 
  402dec:	ba 00 20 00 00       	mov    $0x2000,%edx
  402df1:	48 89 ef             	mov    %rbp,%rdi
  402df4:	e8 78 fc ff ff       	call   402a71 <rio_readlineb>
  402df9:	48 85 c0             	test   %rax,%rax
  402dfc:	0f 8e 92 03 00 00    	jle    403194 <submitr+0x57c>
  402e02:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402e07:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402e0e:	00 
  402e0f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e16:	00 
  402e17:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402e1e:	00 
  402e1f:	48 8d 35 37 19 00 00 	lea    0x1937(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402e26:	b8 00 00 00 00       	mov    $0x0,%eax
  402e2b:	e8 40 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402e30:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e37:	00 
  402e38:	48 8d 35 35 19 00 00 	lea    0x1935(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402e3f:	e8 ac e2 ff ff       	call   4010f0 <strcmp@plt>
  402e44:	85 c0                	test   %eax,%eax
  402e46:	0f 84 c8 03 00 00    	je     403214 <submitr+0x5fc>
  402e4c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e53:	00 
  402e54:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e59:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e5e:	e8 0e fc ff ff       	call   402a71 <rio_readlineb>
  402e63:	48 85 c0             	test   %rax,%rax
  402e66:	7f c8                	jg     402e30 <submitr+0x218>
  402e68:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e6f:	3a 20 43 
  402e72:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e79:	20 75 6e 
  402e7c:	49 89 07             	mov    %rax,(%r15)
  402e7f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e83:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e8a:	74 6f 20 
  402e8d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e94:	68 65 61 
  402e97:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e9b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e9f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ea6:	66 72 6f 
  402ea9:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402eb0:	6f 6c 61 
  402eb3:	49 89 47 20          	mov    %rax,0x20(%r15)
  402eb7:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402ebb:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ec2:	6c 61 62 
  402ec5:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402ecc:	65 72 00 
  402ecf:	49 89 47 29          	mov    %rax,0x29(%r15)
  402ed3:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402ed7:	89 df                	mov    %ebx,%edi
  402ed9:	e8 f2 e1 ff ff       	call   4010d0 <close@plt>
  402ede:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ee3:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402eea:	00 
  402eeb:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ef2:	00 00 
  402ef4:	0f 85 67 04 00 00    	jne    403361 <submitr+0x749>
  402efa:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402f01:	5b                   	pop    %rbx
  402f02:	5d                   	pop    %rbp
  402f03:	41 5c                	pop    %r12
  402f05:	41 5d                	pop    %r13
  402f07:	41 5e                	pop    %r14
  402f09:	41 5f                	pop    %r15
  402f0b:	c3                   	ret    
  402f0c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f13:	3a 20 43 
  402f16:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f1d:	20 75 6e 
  402f20:	49 89 07             	mov    %rax,(%r15)
  402f23:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f27:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f2e:	74 6f 20 
  402f31:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f38:	65 20 73 
  402f3b:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f3f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f43:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402f4a:	65 74 00 
  402f4d:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402f51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f56:	eb 8b                	jmp    402ee3 <submitr+0x2cb>
  402f58:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f5f:	3a 20 44 
  402f62:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f69:	20 75 6e 
  402f6c:	49 89 07             	mov    %rax,(%r15)
  402f6f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f73:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f7a:	74 6f 20 
  402f7d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f84:	76 65 20 
  402f87:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f8b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f8f:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f96:	61 62 20 
  402f99:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402fa0:	72 20 61 
  402fa3:	49 89 47 20          	mov    %rax,0x20(%r15)
  402fa7:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402fab:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402fb2:	73 73 00 
  402fb5:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402fb9:	89 df                	mov    %ebx,%edi
  402fbb:	e8 10 e1 ff ff       	call   4010d0 <close@plt>
  402fc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fc5:	e9 19 ff ff ff       	jmp    402ee3 <submitr+0x2cb>
  402fca:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402fd1:	3a 20 55 
  402fd4:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402fdb:	20 74 6f 
  402fde:	49 89 07             	mov    %rax,(%r15)
  402fe1:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fe5:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402fec:	65 63 74 
  402fef:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402ff6:	68 65 20 
  402ff9:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ffd:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403001:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403008:	6c 61 62 
  40300b:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403012:	65 72 00 
  403015:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  403019:	49 89 57 27          	mov    %rdx,0x27(%r15)
  40301d:	89 df                	mov    %ebx,%edi
  40301f:	e8 ac e0 ff ff       	call   4010d0 <close@plt>
  403024:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403029:	e9 b5 fe ff ff       	jmp    402ee3 <submitr+0x2cb>
  40302e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403035:	3a 20 52 
  403038:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40303f:	20 73 74 
  403042:	49 89 07             	mov    %rax,(%r15)
  403045:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403049:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403050:	74 6f 6f 
  403053:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40305a:	65 2e 20 
  40305d:	49 89 47 10          	mov    %rax,0x10(%r15)
  403061:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403065:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40306c:	61 73 65 
  40306f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403076:	49 54 52 
  403079:	49 89 47 20          	mov    %rax,0x20(%r15)
  40307d:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403081:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403088:	55 46 00 
  40308b:	49 89 47 30          	mov    %rax,0x30(%r15)
  40308f:	89 df                	mov    %ebx,%edi
  403091:	e8 3a e0 ff ff       	call   4010d0 <close@plt>
  403096:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309b:	e9 43 fe ff ff       	jmp    402ee3 <submitr+0x2cb>
  4030a0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4030a7:	3a 20 55 
  4030aa:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  4030b1:	20 73 74 
  4030b4:	49 89 07             	mov    %rax,(%r15)
  4030b7:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030bb:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4030c2:	63 6f 6e 
  4030c5:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4030cc:	20 61 6e 
  4030cf:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030d3:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030d7:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4030de:	67 61 6c 
  4030e1:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4030e8:	6e 70 72 
  4030eb:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030ef:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030f3:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4030fa:	6c 65 20 
  4030fd:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403104:	63 74 65 
  403107:	49 89 47 30          	mov    %rax,0x30(%r15)
  40310b:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40310f:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  403116:	00 
  403117:	89 df                	mov    %ebx,%edi
  403119:	e8 b2 df ff ff       	call   4010d0 <close@plt>
  40311e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403123:	e9 bb fd ff ff       	jmp    402ee3 <submitr+0x2cb>
  403128:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40312f:	3a 20 43 
  403132:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403139:	20 75 6e 
  40313c:	49 89 07             	mov    %rax,(%r15)
  40313f:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403143:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40314a:	74 6f 20 
  40314d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403154:	20 74 6f 
  403157:	49 89 47 10          	mov    %rax,0x10(%r15)
  40315b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40315f:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  403166:	41 75 74 
  403169:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403170:	73 65 72 
  403173:	49 89 47 20          	mov    %rax,0x20(%r15)
  403177:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40317b:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403182:	00 
  403183:	89 df                	mov    %ebx,%edi
  403185:	e8 46 df ff ff       	call   4010d0 <close@plt>
  40318a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40318f:	e9 4f fd ff ff       	jmp    402ee3 <submitr+0x2cb>
  403194:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40319b:	3a 20 43 
  40319e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031a5:	20 75 6e 
  4031a8:	49 89 07             	mov    %rax,(%r15)
  4031ab:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4031af:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031b6:	74 6f 20 
  4031b9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4031c0:	66 69 72 
  4031c3:	49 89 47 10          	mov    %rax,0x10(%r15)
  4031c7:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4031cb:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4031d2:	61 64 65 
  4031d5:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4031dc:	6d 20 41 
  4031df:	49 89 47 20          	mov    %rax,0x20(%r15)
  4031e3:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4031e7:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4031ee:	6c 61 62 
  4031f1:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4031f8:	65 72 00 
  4031fb:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  4031ff:	49 89 57 36          	mov    %rdx,0x36(%r15)
  403203:	89 df                	mov    %ebx,%edi
  403205:	e8 c6 de ff ff       	call   4010d0 <close@plt>
  40320a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40320f:	e9 cf fc ff ff       	jmp    402ee3 <submitr+0x2cb>
  403214:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40321b:	00 
  40321c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403221:	ba 00 20 00 00       	mov    $0x2000,%edx
  403226:	e8 46 f8 ff ff       	call   402a71 <rio_readlineb>
  40322b:	48 85 c0             	test   %rax,%rax
  40322e:	7e 78                	jle    4032a8 <submitr+0x690>
  403230:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403235:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40323c:	0f 85 e6 00 00 00    	jne    403328 <submitr+0x710>
  403242:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403249:	00 
  40324a:	4c 89 ff             	mov    %r15,%rdi
  40324d:	e8 1e de ff ff       	call   401070 <strcpy@plt>
  403252:	89 df                	mov    %ebx,%edi
  403254:	e8 77 de ff ff       	call   4010d0 <close@plt>
  403259:	48 8d 35 0e 15 00 00 	lea    0x150e(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  403260:	4c 89 ff             	mov    %r15,%rdi
  403263:	e8 88 de ff ff       	call   4010f0 <strcmp@plt>
  403268:	85 c0                	test   %eax,%eax
  40326a:	0f 84 73 fc ff ff    	je     402ee3 <submitr+0x2cb>
  403270:	48 8d 35 fb 14 00 00 	lea    0x14fb(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  403277:	4c 89 ff             	mov    %r15,%rdi
  40327a:	e8 71 de ff ff       	call   4010f0 <strcmp@plt>
  40327f:	85 c0                	test   %eax,%eax
  403281:	0f 84 5c fc ff ff    	je     402ee3 <submitr+0x2cb>
  403287:	48 8d 35 e9 14 00 00 	lea    0x14e9(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  40328e:	4c 89 ff             	mov    %r15,%rdi
  403291:	e8 5a de ff ff       	call   4010f0 <strcmp@plt>
  403296:	85 c0                	test   %eax,%eax
  403298:	0f 84 45 fc ff ff    	je     402ee3 <submitr+0x2cb>
  40329e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032a3:	e9 3b fc ff ff       	jmp    402ee3 <submitr+0x2cb>
  4032a8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4032af:	3a 20 43 
  4032b2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032b9:	20 75 6e 
  4032bc:	49 89 07             	mov    %rax,(%r15)
  4032bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4032c3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032ca:	74 6f 20 
  4032cd:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4032d4:	73 74 61 
  4032d7:	49 89 47 10          	mov    %rax,0x10(%r15)
  4032db:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4032df:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4032e6:	65 73 73 
  4032e9:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4032f0:	72 6f 6d 
  4032f3:	49 89 47 20          	mov    %rax,0x20(%r15)
  4032f7:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4032fb:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403302:	6c 61 62 
  403305:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40330c:	65 72 00 
  40330f:	49 89 47 30          	mov    %rax,0x30(%r15)
  403313:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403317:	89 df                	mov    %ebx,%edi
  403319:	e8 b2 dd ff ff       	call   4010d0 <close@plt>
  40331e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403323:	e9 bb fb ff ff       	jmp    402ee3 <submitr+0x2cb>
  403328:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40332f:	00 
  403330:	48 8d 0d b9 11 00 00 	lea    0x11b9(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  403337:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40333e:	be 02 00 00 00       	mov    $0x2,%esi
  403343:	4c 89 ff             	mov    %r15,%rdi
  403346:	b8 00 00 00 00       	mov    $0x0,%eax
  40334b:	e8 d0 de ff ff       	call   401220 <__sprintf_chk@plt>
  403350:	89 df                	mov    %ebx,%edi
  403352:	e8 79 dd ff ff       	call   4010d0 <close@plt>
  403357:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40335c:	e9 82 fb ff ff       	jmp    402ee3 <submitr+0x2cb>
  403361:	e8 ab f3 ff ff       	call   402711 <__stack_chk_fail>

0000000000403366 <init_timeout>:
  403366:	f3 0f 1e fa          	endbr64 
  40336a:	85 ff                	test   %edi,%edi
  40336c:	74 26                	je     403394 <init_timeout+0x2e>
  40336e:	53                   	push   %rbx
  40336f:	89 fb                	mov    %edi,%ebx
  403371:	78 1a                	js     40338d <init_timeout+0x27>
  403373:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 40294f <sigalrm_handler>
  40337a:	bf 0e 00 00 00       	mov    $0xe,%edi
  40337f:	e8 7c dd ff ff       	call   401100 <signal@plt>
  403384:	89 df                	mov    %ebx,%edi
  403386:	e8 35 dd ff ff       	call   4010c0 <alarm@plt>
  40338b:	5b                   	pop    %rbx
  40338c:	c3                   	ret    
  40338d:	bb 00 00 00 00       	mov    $0x0,%ebx
  403392:	eb df                	jmp    403373 <init_timeout+0xd>
  403394:	c3                   	ret    

0000000000403395 <init_driver>:
  403395:	f3 0f 1e fa          	endbr64 
  403399:	41 54                	push   %r12
  40339b:	55                   	push   %rbp
  40339c:	53                   	push   %rbx
  40339d:	48 83 ec 20          	sub    $0x20,%rsp
  4033a1:	48 89 fd             	mov    %rdi,%rbp
  4033a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4033ab:	00 00 
  4033ad:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4033b2:	31 c0                	xor    %eax,%eax
  4033b4:	be 01 00 00 00       	mov    $0x1,%esi
  4033b9:	bf 0d 00 00 00       	mov    $0xd,%edi
  4033be:	e8 3d dd ff ff       	call   401100 <signal@plt>
  4033c3:	be 01 00 00 00       	mov    $0x1,%esi
  4033c8:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033cd:	e8 2e dd ff ff       	call   401100 <signal@plt>
  4033d2:	be 01 00 00 00       	mov    $0x1,%esi
  4033d7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4033dc:	e8 1f dd ff ff       	call   401100 <signal@plt>
  4033e1:	ba 00 00 00 00       	mov    $0x0,%edx
  4033e6:	be 01 00 00 00       	mov    $0x1,%esi
  4033eb:	bf 02 00 00 00       	mov    $0x2,%edi
  4033f0:	e8 3b de ff ff       	call   401230 <socket@plt>
  4033f5:	85 c0                	test   %eax,%eax
  4033f7:	0f 88 93 00 00 00    	js     403490 <init_driver+0xfb>
  4033fd:	89 c3                	mov    %eax,%ebx
  4033ff:	48 8d 3d 74 13 00 00 	lea    0x1374(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403406:	e8 05 dd ff ff       	call   401110 <gethostbyname@plt>
  40340b:	48 85 c0             	test   %rax,%rax
  40340e:	0f 84 c9 00 00 00    	je     4034dd <init_driver+0x148>
  403414:	49 89 e4             	mov    %rsp,%r12
  403417:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40341b:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40341f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403425:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403429:	48 8b 40 18          	mov    0x18(%rax),%rax
  40342d:	48 8b 30             	mov    (%rax),%rsi
  403430:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403435:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40343a:	e8 e1 dc ff ff       	call   401120 <__memmove_chk@plt>
  40343f:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  403446:	ba 10 00 00 00       	mov    $0x10,%edx
  40344b:	4c 89 e6             	mov    %r12,%rsi
  40344e:	89 df                	mov    %ebx,%edi
  403450:	e8 9b dd ff ff       	call   4011f0 <connect@plt>
  403455:	85 c0                	test   %eax,%eax
  403457:	0f 88 e5 00 00 00    	js     403542 <init_driver+0x1ad>
  40345d:	89 df                	mov    %ebx,%edi
  40345f:	e8 6c dc ff ff       	call   4010d0 <close@plt>
  403464:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40346a:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40346e:	b8 00 00 00 00       	mov    $0x0,%eax
  403473:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403478:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40347f:	00 00 
  403481:	0f 85 27 01 00 00    	jne    4035ae <init_driver+0x219>
  403487:	48 83 c4 20          	add    $0x20,%rsp
  40348b:	5b                   	pop    %rbx
  40348c:	5d                   	pop    %rbp
  40348d:	41 5c                	pop    %r12
  40348f:	c3                   	ret    
  403490:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403497:	3a 20 43 
  40349a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4034a1:	20 75 6e 
  4034a4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034a8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034ac:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034b3:	74 6f 20 
  4034b6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4034bd:	65 20 73 
  4034c0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034c4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034c8:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  4034cf:	65 74 00 
  4034d2:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  4034d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034db:	eb 96                	jmp    403473 <init_driver+0xde>
  4034dd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4034e4:	3a 20 44 
  4034e7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4034ee:	20 75 6e 
  4034f1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034f9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403500:	74 6f 20 
  403503:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40350a:	76 65 20 
  40350d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403511:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403515:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  40351c:	65 72 20 
  40351f:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  403526:	73 73 00 
  403529:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  40352d:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  403531:	89 df                	mov    %ebx,%edi
  403533:	e8 98 db ff ff       	call   4010d0 <close@plt>
  403538:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40353d:	e9 31 ff ff ff       	jmp    403473 <init_driver+0xde>
  403542:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
  403549:	36 38 2e 
  40354c:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
  403553:	37 37 00 
  403556:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40355a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40355e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403565:	3a 20 55 
  403568:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40356f:	20 74 6f 
  403572:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403576:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40357a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403581:	65 63 74 
  403584:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40358b:	65 72 76 
  40358e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403592:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403596:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40359d:	89 df                	mov    %ebx,%edi
  40359f:	e8 2c db ff ff       	call   4010d0 <close@plt>
  4035a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035a9:	e9 c5 fe ff ff       	jmp    403473 <init_driver+0xde>
  4035ae:	e8 5e f1 ff ff       	call   402711 <__stack_chk_fail>

00000000004035b3 <driver_post>:
  4035b3:	f3 0f 1e fa          	endbr64 
  4035b7:	53                   	push   %rbx
  4035b8:	4c 89 cb             	mov    %r9,%rbx
  4035bb:	45 85 c0             	test   %r8d,%r8d
  4035be:	75 18                	jne    4035d8 <driver_post+0x25>
  4035c0:	48 85 ff             	test   %rdi,%rdi
  4035c3:	74 05                	je     4035ca <driver_post+0x17>
  4035c5:	80 3f 00             	cmpb   $0x0,(%rdi)
  4035c8:	75 37                	jne    403601 <driver_post+0x4e>
  4035ca:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035cf:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035d3:	44 89 c0             	mov    %r8d,%eax
  4035d6:	5b                   	pop    %rbx
  4035d7:	c3                   	ret    
  4035d8:	48 89 ca             	mov    %rcx,%rdx
  4035db:	48 8d 35 a8 11 00 00 	lea    0x11a8(%rip),%rsi        # 40478a <_IO_stdin_used+0x78a>
  4035e2:	bf 02 00 00 00       	mov    $0x2,%edi
  4035e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ec:	e8 9f db ff ff       	call   401190 <__printf_chk@plt>
  4035f1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4035f6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4035fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ff:	eb d5                	jmp    4035d6 <driver_post+0x23>
  403601:	48 83 ec 08          	sub    $0x8,%rsp
  403605:	41 51                	push   %r9
  403607:	49 89 c9             	mov    %rcx,%r9
  40360a:	49 89 d0             	mov    %rdx,%r8
  40360d:	48 89 f9             	mov    %rdi,%rcx
  403610:	48 89 f2             	mov    %rsi,%rdx
  403613:	be b8 0b 00 00       	mov    $0xbb8,%esi
  403618:	48 8d 3d 5b 11 00 00 	lea    0x115b(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  40361f:	e8 f4 f5 ff ff       	call   402c18 <submitr>
  403624:	48 83 c4 10          	add    $0x10,%rsp
  403628:	eb ac                	jmp    4035d6 <driver_post+0x23>

000000000040362a <check>:
  40362a:	f3 0f 1e fa          	endbr64 
  40362e:	89 f8                	mov    %edi,%eax
  403630:	c1 e8 1c             	shr    $0x1c,%eax
  403633:	74 1d                	je     403652 <check+0x28>
  403635:	b9 00 00 00 00       	mov    $0x0,%ecx
  40363a:	83 f9 1f             	cmp    $0x1f,%ecx
  40363d:	7f 0d                	jg     40364c <check+0x22>
  40363f:	89 f8                	mov    %edi,%eax
  403641:	d3 e8                	shr    %cl,%eax
  403643:	3c 0a                	cmp    $0xa,%al
  403645:	74 11                	je     403658 <check+0x2e>
  403647:	83 c1 08             	add    $0x8,%ecx
  40364a:	eb ee                	jmp    40363a <check+0x10>
  40364c:	b8 01 00 00 00       	mov    $0x1,%eax
  403651:	c3                   	ret    
  403652:	b8 00 00 00 00       	mov    $0x0,%eax
  403657:	c3                   	ret    
  403658:	b8 00 00 00 00       	mov    $0x0,%eax
  40365d:	c3                   	ret    

000000000040365e <gencookie>:
  40365e:	f3 0f 1e fa          	endbr64 
  403662:	53                   	push   %rbx
  403663:	83 c7 01             	add    $0x1,%edi
  403666:	e8 d5 d9 ff ff       	call   401040 <srandom@plt>
  40366b:	e8 f0 da ff ff       	call   401160 <random@plt>
  403670:	89 c3                	mov    %eax,%ebx
  403672:	89 c7                	mov    %eax,%edi
  403674:	e8 b1 ff ff ff       	call   40362a <check>
  403679:	85 c0                	test   %eax,%eax
  40367b:	74 ee                	je     40366b <gencookie+0xd>
  40367d:	89 d8                	mov    %ebx,%eax
  40367f:	5b                   	pop    %rbx
  403680:	c3                   	ret    

Disassembly of section .fini:

0000000000403684 <_fini>:
  403684:	f3 0f 1e fa          	endbr64 
  403688:	48 83 ec 08          	sub    $0x8,%rsp
  40368c:	48 83 c4 08          	add    $0x8,%rsp
  403690:	c3                   	ret    
