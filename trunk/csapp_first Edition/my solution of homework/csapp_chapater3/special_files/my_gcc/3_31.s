	.file	"3_31.c"
	.text
.globl decode2
	.type	decode2, @function
decode2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	sall	$31, %eax
	sarl	$31, %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %edx
	andl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	leave
	ret
	.size	decode2, .-decode2
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
