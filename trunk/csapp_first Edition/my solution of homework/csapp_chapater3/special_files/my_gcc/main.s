	.file	"main.cpp"
	.text
	.p2align 4,,15
.globl _Z7decode2iii
	.type	_Z7decode2iii, @function
_Z7decode2iii:
.LFB997:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %edx
	subl	16(%ebp), %edx
	movl	%edx, %eax
	imull	8(%ebp), %edx
	sall	$31, %eax
	sarl	$31, %eax
	popl	%ebp
	andl	%edx, %eax
	ret
	.cfi_endproc
.LFE997:
	.size	_Z7decode2iii, .-_Z7decode2iii
	.p2align 4,,15
	.type	_GLOBAL__I__Z7decode2iii, @function
_GLOBAL__I__Z7decode2iii:
.LFB1008:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	$_ZNSt8ios_base4InitD1Ev, (%esp)
	call	__cxa_atexit
	leave
	ret
	.cfi_endproc
.LFE1008:
	.size	_GLOBAL__I__Z7decode2iii, .-_GLOBAL__I__Z7decode2iii
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I__Z7decode2iii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello world!"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB998:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	movl	$12, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	.cfi_escape 0x10,0x3,0x7,0x55,0x9,0xf0,0x1a,0x9,0xf8,0x22
	.cfi_escape 0x10,0x6,0x7,0x55,0x9,0xf0,0x1a,0x9,0xfc,0x22
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	_ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	_ZSt4cout+124(%eax), %ebx
	testl	%ebx, %ebx
	je	.L13
	cmpb	$0, 28(%ebx)
	je	.L7
	movzbl	39(%ebx), %eax
.L8:
	movsbl	%al,%eax
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZNSo3putEc
	movl	%eax, (%esp)
	call	_ZNSo5flushEv
	movl	$0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZNSolsEi
	movl	%eax, %ebx
	movl	(%eax), %eax
	movl	-12(%eax), %eax
	movl	124(%ebx,%eax), %esi
	testl	%esi, %esi
	je	.L13
	cmpb	$0, 28(%esi)
	je	.L10
	movzbl	39(%esi), %eax
.L11:
	movsbl	%al,%eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZNSo3putEc
	movl	%eax, (%esp)
	call	_ZNSo5flushEv
	addl	$24, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,7
	.p2align 3
.L7:
	movl	%ebx, (%esp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%ebx), %eax
	movl	$10, 4(%esp)
	movl	%ebx, (%esp)
	call	*24(%eax)
	jmp	.L8
	.p2align 4,,7
	.p2align 3
.L10:
	movl	%esi, (%esp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%esi), %eax
	movl	$10, 4(%esp)
	movl	%esi, (%esp)
	call	*24(%eax)
	jmp	.L11
.L13:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE998:
	.size	main, .-main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
