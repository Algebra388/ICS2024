################################################################################
# ncopy.ys - Copy a src block of len words to dst.
# Return the number of positive words (>0) contained in src.
#
# Name:张乐天
# ID:2300012938
#
# Describe how and why you modified the baseline code.
#
################################################################################
# Do not modify this portion
# Function prologue.
# %rdi = src, %rsi = dst, %rdx = len
ncopy:
################################################################################
# You can modify this portion
	# Loop header
	xorq %rax,%rax		# count = 0;
	rrmovq %rdx,%rcx
    iaddq $-8,%rcx
    jle Loop2
Loop1:
	mrmovq (%rdi), %r8	# read val from src...
	mrmovq 8(%rdi), %r9	# read val from src...
	mrmovq 16(%rdi), %r10	# read val from src...
	mrmovq 24(%rdi), %r11	# read val from src...
	mrmovq 32(%rdi), %r12	# read val from src...
	mrmovq 40(%rdi), %r13	# read val from src...
	mrmovq 48(%rdi), %r14	# read val from src...
	mrmovq 56(%rdi), %rbp	# read val from src...
	rmmovq %r8, (%rsi)	# ...and store it to dst
	rmmovq %r9, 8(%rsi)	# ...and store it to dst
	rmmovq %r10, 16(%rsi)	# ...and store it to dst
	rmmovq %r11, 24(%rsi)	# ...and store it to dst
	rmmovq %r12, 32(%rsi)	# ...and store it to dst
	rmmovq %r13, 40(%rsi)	# ...and store it to dst
	rmmovq %r14, 48(%rsi)	# ...and store it to dst
	rmmovq %rbp, 56(%rsi)	# ...and store it to dst
	andq %r8, %r8		# val <= 0?
	jle L1		
	iaddq $1, %rax		# count++
L1:
	andq %r9, %r9		# val <= 0?
	jle L2		
	iaddq $1, %rax		# count++
L2:
	andq %r10, %r10		# val <= 0?
	jle L3		
	iaddq $1, %rax		# count++
L3:
	andq %r11, %r11		# val <= 0?
	jle L4		
	iaddq $1, %rax		# count++
L4:
	andq %r12, %r12		# val <= 0?
	jle L5		
	iaddq $1, %rax		# count++
L5:
	andq %r13, %r13		# val <= 0?
	jle L6		
	iaddq $1, %rax		# count++
L6:
	andq %r14, %r14		# val <= 0?
	jle L7
	iaddq $1, %rax		# count++
L7:
	andq %rbp, %rbp		# val <= 0?
	jle L8
	iaddq $1, %rax		# count++
L8:
	iaddq $64,%rdi
	iaddq $64,%rsi
	iaddq $-8,%rdx
test:
	iaddq $-8,%rcx
	jg Loop1

	iaddq $5,%rcx
	jle Loop2
Loop3:
	mrmovq (%rdi), %r8	# read val from src...
	mrmovq 8(%rdi), %r9	# read val from src...
	mrmovq 16(%rdi), %r10	# read val from src...
	rmmovq %r8, (%rsi)	# ...and store it to dst
	rmmovq %r9, 8(%rsi)	# ...and store it to dst
	rmmovq %r10, 16(%rsi)	# ...and store it to dst
	andq %r8, %r8		# val <= 0?
	jle L11		
	iaddq $1, %rax		# count++
L11:
	andq %r9, %r9		# val <= 0?
	jle L12		
	iaddq $1, %rax		# count++
L12:
	andq %r10, %r10		# val <= 0?
	jle L13
	iaddq $1, %rax		# count++
L13:
	iaddq $24,%rdi
	iaddq $24,%rsi
	iaddq $-3,%rdx
test2:
	iaddq $-3,%rcx
	jg Loop3
Loop2:	
	mrmovq (%rdi), %r10	# read val from src...
	rmmovq %r10, (%rsi)	# ...and store it to dst
	andq %r10, %r10		# val <= 0?
	jle Npos2		# if so, goto Npos:
	iaddq $1, %rax		# count++

Npos2:
	iaddq $8,%rdi
	iaddq $8,%rsi
	iaddq $-1, %rdx		# len--
	jg Loop2			# if so, goto Loop:
Done:
	ret

# In grader, we will add a "trap: jmp trap" here, which traps your program in an
# infinite loop. Thus your function should always return instead of falling
# through till the end of the source code :)