
ncopy:     file format elf64-x86-64


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
    1020:	ff 35 92 2f 00 00    	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 2f 00 00 	bnd jmp *0x2f93(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 2f 00 00 	bnd jmp *0x2f9d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <__printf_chk@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <exit@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <main>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	50                   	push   %rax
    1085:	58                   	pop    %rax
    1086:	48 8d 05 f3 2f 00 00 	lea    0x2ff3(%rip),%rax        # 4080 <src>
    108d:	45 31 c0             	xor    %r8d,%r8d
    1090:	48 8d 15 a9 2f 00 00 	lea    0x2fa9(%rip),%rdx        # 4040 <dst>
    1097:	48 8d 70 40          	lea    0x40(%rax),%rsi
    109b:	48 83 ec 08          	sub    $0x8,%rsp
    109f:	48 c7 05 d6 2f 00 00 	movq   $0x1,0x2fd6(%rip)        # 4080 <src>
    10a6:	01 00 00 00 
    10aa:	48 c7 05 d3 2f 00 00 	movq   $0x2,0x2fd3(%rip)        # 4088 <src+0x8>
    10b1:	02 00 00 00 
    10b5:	48 c7 05 d0 2f 00 00 	movq   $0x3,0x2fd0(%rip)        # 4090 <src+0x10>
    10bc:	03 00 00 00 
    10c0:	48 c7 05 cd 2f 00 00 	movq   $0x4,0x2fcd(%rip)        # 4098 <src+0x18>
    10c7:	04 00 00 00 
    10cb:	48 c7 05 ca 2f 00 00 	movq   $0x5,0x2fca(%rip)        # 40a0 <src+0x20>
    10d2:	05 00 00 00 
    10d6:	48 c7 05 c7 2f 00 00 	movq   $0x6,0x2fc7(%rip)        # 40a8 <src+0x28>
    10dd:	06 00 00 00 
    10e1:	48 c7 05 c4 2f 00 00 	movq   $0x7,0x2fc4(%rip)        # 40b0 <src+0x30>
    10e8:	07 00 00 00 
    10ec:	48 c7 05 c1 2f 00 00 	movq   $0x8,0x2fc1(%rip)        # 40b8 <src+0x38>
    10f3:	08 00 00 00 
    10f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    10fe:	00 00 
    1100:	48 8b 08             	mov    (%rax),%rcx
    1103:	48 83 c0 08          	add    $0x8,%rax
    1107:	48 83 c2 08          	add    $0x8,%rdx
    110b:	48 83 f9 01          	cmp    $0x1,%rcx
    110f:	48 89 4a f8          	mov    %rcx,-0x8(%rdx)
    1113:	49 83 d8 ff          	sbb    $0xffffffffffffffff,%r8
    1117:	48 39 f0             	cmp    %rsi,%rax
    111a:	75 e4                	jne    1100 <main+0x80>
    111c:	bf 01 00 00 00       	mov    $0x1,%edi
    1121:	4c 89 c2             	mov    %r8,%rdx
    1124:	48 8d 35 d9 0e 00 00 	lea    0xed9(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    112b:	31 c0                	xor    %eax,%eax
    112d:	e8 2e ff ff ff       	call   1060 <__printf_chk@plt>
    1132:	31 ff                	xor    %edi,%edi
    1134:	e8 37 ff ff ff       	call   1070 <exit@plt>
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	45 31 c0             	xor    %r8d,%r8d
    1156:	31 c9                	xor    %ecx,%ecx
    1158:	48 8d 3d 21 ff ff ff 	lea    -0xdf(%rip),%rdi        # 1080 <main>
    115f:	ff 15 73 2e 00 00    	call   *0x2e73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt    
    1166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    0x2e92(%rip),%rax        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    0x2e56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    0x2e69(%rip),%rdi        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    0x2e62(%rip),%rsi        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 35 2e 00 00 00 	cmpb   $0x0,0x2e35(%rip)        # 4020 <completed.0>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 49 fe ff ff       	call   1050 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 0d 2e 00 00 01 	movb   $0x1,0x2e0d(%rip)        # 4020 <completed.0>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret    
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <ncopy>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	48 85 d2             	test   %rdx,%rdx
    1237:	74 27                	je     1260 <ncopy+0x30>
    1239:	31 c0                	xor    %eax,%eax
    123b:	45 31 c0             	xor    %r8d,%r8d
    123e:	66 90                	xchg   %ax,%ax
    1240:	48 8b 0c c7          	mov    (%rdi,%rax,8),%rcx
    1244:	48 83 f9 01          	cmp    $0x1,%rcx
    1248:	48 89 0c c6          	mov    %rcx,(%rsi,%rax,8)
    124c:	49 83 d8 ff          	sbb    $0xffffffffffffffff,%r8
    1250:	48 83 c0 01          	add    $0x1,%rax
    1254:	48 39 d0             	cmp    %rdx,%rax
    1257:	75 e7                	jne    1240 <ncopy+0x10>
    1259:	4c 89 c0             	mov    %r8,%rax
    125c:	c3                   	ret    
    125d:	0f 1f 00             	nopl   (%rax)
    1260:	45 31 c0             	xor    %r8d,%r8d
    1263:	4c 89 c0             	mov    %r8,%rax
    1266:	c3                   	ret    

Disassembly of section .fini:

0000000000001268 <_fini>:
    1268:	f3 0f 1e fa          	endbr64 
    126c:	48 83 ec 08          	sub    $0x8,%rsp
    1270:	48 83 c4 08          	add    $0x8,%rsp
    1274:	c3                   	ret    
