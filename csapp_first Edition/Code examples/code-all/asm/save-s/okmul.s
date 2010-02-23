	.file	"okmul.c"
	.version	"01.01"
gcc2_compiled.:
.text
	.align 4
.globl ok_smul1
	.type	 ok_smul1,@function
ok_smul1:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	imull 12(%ebp),%eax
	movl %eax,(%edx)
#APP
	setae %al
#NO_APP
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ok_smul1,.Lfe1-ok_smul1
.globl dummy
.data
	.align 4
	.type	 dummy,@object
	.size	 dummy,4
dummy:
	.long 0
.text
	.align 4
.globl ok_smul2
	.type	 ok_smul2,@function
ok_smul2:
	pushl %ebp
	movl %esp,%ebp
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	imull 12(%ebp),%eax
	movl %eax,(%edx)
	movl dummy,%eax
#APP
	setae %al
#NO_APP
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ok_smul2,.Lfe2-ok_smul2
	.align 4
.globl ok_smul3
	.type	 ok_smul3,@function
ok_smul3:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 16(%ebp),%edx
	movl 8(%ebp),%eax
	imull 12(%ebp),%eax
	movl %eax,(%edx)
#APP
	setae %bl; movzbl %bl,%eax
#NO_APP
	popl %ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ok_smul3,.Lfe3-ok_smul3
	.align 4
.globl ok_umul
	.type	 ok_umul,@function
ok_umul:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
#APP
	movl %ecx,%eax; mull %ebx; movl %eax,%ecx; 
           setae %dl; movzbl %dl,%ebx
#NO_APP
	movl %ecx,(%esi)
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ok_umul,.Lfe4-ok_umul
.section	.rodata
.LC0:
	.string	"Enter sx:"
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter sy:"
	.align 32
.LC3:
	.string	"ok_smul1: %d*%d=%d does not overflow\n"
.LC4:
	.string	"ok_smul1: %d*%d=%d overflows\n"
	.align 32
.LC5:
	.string	"ok_smul2: %d*%d=%d does not overflow\n"
.LC6:
	.string	"ok_smul2: %d*%d=%d overflows\n"
	.align 32
.LC7:
	.string	"ok_smul3: %d*%d=%d does not overflow\n"
.LC8:
	.string	"ok_smul3: %d*%d=%d overflows\n"
.LC9:
	.string	"Enter ux:"
.LC10:
	.string	"%u"
.LC11:
	.string	"Enter uy:"
	.align 32
.LC12:
	.string	"ok_umul: %u*%u=%u does not overflow\n"
.LC13:
	.string	"ok_umul: %u*%u=%u overflows\n"
.text
	.align 4
.globl main
	.type	 main,@function
main:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %ebx
	addl $-12,%esp
	pushl $.LC0
	call printf
	addl $-8,%esp
	leal -4(%ebp),%eax
	pushl %eax
	pushl $.LC1
	call scanf
	addl $32,%esp
	addl $-12,%esp
	pushl $.LC2
	call printf
	addl $-8,%esp
	leal -8(%ebp),%eax
	pushl %eax
	pushl $.LC1
	call scanf
	addl $32,%esp
	addl $-4,%esp
	leal -12(%ebp),%ebx
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	call ok_smul1
	addl $16,%esp
	testl %eax,%eax
	je .L37
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC3
	jmp .L45
	.p2align 4,,7
.L37:
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC4
.L45:
	call printf
	addl $16,%esp
	addl $-4,%esp
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	call ok_smul2
	addl $16,%esp
	testl %eax,%eax
	je .L39
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC5
	jmp .L46
	.p2align 4,,7
.L39:
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC6
.L46:
	call printf
	addl $16,%esp
	addl $-4,%esp
	pushl %ebx
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	call ok_smul3
	addl $16,%esp
	testl %eax,%eax
	je .L41
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC7
	jmp .L47
	.p2align 4,,7
.L41:
	movl -12(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	pushl $.LC8
.L47:
	call printf
	addl $16,%esp
	addl $-12,%esp
	pushl $.LC9
	call printf
	addl $-8,%esp
	leal -16(%ebp),%eax
	pushl %eax
	pushl $.LC10
	call scanf
	addl $32,%esp
	addl $-12,%esp
	pushl $.LC11
	call printf
	addl $-8,%esp
	leal -20(%ebp),%eax
	pushl %eax
	pushl $.LC10
	call scanf
	addl $32,%esp
	addl $-4,%esp
	leal -24(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	call ok_umul
	addl $16,%esp
	testl %eax,%eax
	je .L43
	movl -24(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	pushl $.LC12
	jmp .L48
	.p2align 4,,7
.L43:
	movl -24(%ebp),%eax
	pushl %eax
	movl -20(%ebp),%eax
	pushl %eax
	movl -16(%ebp),%eax
	pushl %eax
	pushl $.LC13
.L48:
	call printf
	addl $16,%esp
	addl $-12,%esp
	pushl $0
	call exit
.Lfe5:
	.size	 main,.Lfe5-main
	.ident	"GCC: (GNU) 2.95.3 20010315 (release)"
