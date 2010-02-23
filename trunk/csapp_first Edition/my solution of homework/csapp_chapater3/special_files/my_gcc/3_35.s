	.file	"3_35.c"
	.text
.globl var_prod_ele_opt
	.type	var_prod_ele_opt, @function
var_prod_ele_opt:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	16(%ebp), %eax
	imull	24(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, 24(%ebp)
	jg	.L2
	movl	-12(%ebp), %eax
	jmp	.L3
.L2:
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	addl	%eax, -12(%ebp)
	addl	$4, -4(%ebp)
	movl	24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, -8(%ebp)
	subl	$1, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L2
	movl	-12(%ebp), %eax
.L3:
	leave
	ret
	.size	var_prod_ele_opt, .-var_prod_ele_opt
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
