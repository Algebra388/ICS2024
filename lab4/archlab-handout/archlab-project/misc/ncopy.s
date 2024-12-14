	.file	"ncopy.c"
	.text
	.p2align 4
	.globl	ncopy
	.type	ncopy, @function
ncopy:
.LFB23:
	.cfi_startproc
	endbr64
	testq	%rdx, %rdx
	je	.L5
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L4:
	movq	(%rdi,%rax,8), %rcx
	cmpq	$1, %rcx
	movq	%rcx, (%rsi,%rax,8)
	sbbq	$-1, %r8
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L4
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE23:
	.size	ncopy, .-ncopy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"count=%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	src(%rip), %rax
	xorl	%r8d, %r8d
	leaq	dst(%rip), %rdx
	leaq	64(%rax), %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	$1, src(%rip)
	movq	$2, 8+src(%rip)
	movq	$3, 16+src(%rip)
	movq	$4, 24+src(%rip)
	movq	$5, 32+src(%rip)
	movq	$6, 40+src(%rip)
	movq	$7, 48+src(%rip)
	movq	$8, 56+src(%rip)
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rax), %rcx
	addq	$8, %rax
	addq	$8, %rdx
	cmpq	$1, %rcx
	movq	%rcx, -8(%rdx)
	sbbq	$-1, %r8
	cmpq	%rsi, %rax
	jne	.L12
	movl	$1, %edi
	movq	%r8, %rdx
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.globl	dst
	.bss
	.align 32
	.type	dst, @object
	.size	dst, 64
dst:
	.zero	64
	.globl	src
	.align 32
	.type	src, @object
	.size	src, 64
src:
	.zero	64
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
