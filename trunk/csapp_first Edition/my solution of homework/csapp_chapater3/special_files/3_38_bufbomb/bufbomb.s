
bufbomb:     file format elf32-i386


Disassembly of section .init:

080483bc <_init>:
 80483bc:	55                   	push   %ebp
 80483bd:	89 e5                	mov    %esp,%ebp
 80483bf:	53                   	push   %ebx
 80483c0:	83 ec 04             	sub    $0x4,%esp
 80483c3:	e8 00 00 00 00       	call   80483c8 <_init+0xc>
 80483c8:	5b                   	pop    %ebx
 80483c9:	81 c3 2c 1c 00 00    	add    $0x1c2c,%ebx
 80483cf:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80483d5:	85 d2                	test   %edx,%edx
 80483d7:	74 05                	je     80483de <_init+0x22>
 80483d9:	e8 1e 00 00 00       	call   80483fc <__gmon_start__@plt>
 80483de:	e8 0d 01 00 00       	call   80484f0 <frame_dummy>
 80483e3:	e8 28 03 00 00       	call   8048710 <__do_global_ctors_aux>
 80483e8:	58                   	pop    %eax
 80483e9:	5b                   	pop    %ebx
 80483ea:	c9                   	leave  
 80483eb:	c3                   	ret    

Disassembly of section .plt:

080483ec <__gmon_start__@plt-0x10>:
 80483ec:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 80483f2:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483f8:	00 00                	add    %al,(%eax)
	...

080483fc <__gmon_start__@plt>:
 80483fc:	ff 25 00 a0 04 08    	jmp    *0x804a000
 8048402:	68 00 00 00 00       	push   $0x0
 8048407:	e9 e0 ff ff ff       	jmp    80483ec <_init+0x30>

0804840c <__printf_chk@plt>:
 804840c:	ff 25 04 a0 04 08    	jmp    *0x804a004
 8048412:	68 08 00 00 00       	push   $0x8
 8048417:	e9 d0 ff ff ff       	jmp    80483ec <_init+0x30>

0804841c <__libc_start_main@plt>:
 804841c:	ff 25 08 a0 04 08    	jmp    *0x804a008
 8048422:	68 10 00 00 00       	push   $0x10
 8048427:	e9 c0 ff ff ff       	jmp    80483ec <_init+0x30>

0804842c <_IO_getc@plt>:
 804842c:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048432:	68 18 00 00 00       	push   $0x18
 8048437:	e9 b0 ff ff ff       	jmp    80483ec <_init+0x30>

0804843c <__ctype_b_loc@plt>:
 804843c:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048442:	68 20 00 00 00       	push   $0x20
 8048447:	e9 a0 ff ff ff       	jmp    80483ec <_init+0x30>

0804844c <__stack_chk_fail@plt>:
 804844c:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048452:	68 28 00 00 00       	push   $0x28
 8048457:	e9 90 ff ff ff       	jmp    80483ec <_init+0x30>

Disassembly of section .text:

08048460 <_start>:
 8048460:	31 ed                	xor    %ebp,%ebp
 8048462:	5e                   	pop    %esi
 8048463:	89 e1                	mov    %esp,%ecx
 8048465:	83 e4 f0             	and    $0xfffffff0,%esp
 8048468:	50                   	push   %eax
 8048469:	54                   	push   %esp
 804846a:	52                   	push   %edx
 804846b:	68 a0 86 04 08       	push   $0x80486a0
 8048470:	68 b0 86 04 08       	push   $0x80486b0
 8048475:	51                   	push   %ecx
 8048476:	56                   	push   %esi
 8048477:	68 40 86 04 08       	push   $0x8048640
 804847c:	e8 9b ff ff ff       	call   804841c <__libc_start_main@plt>
 8048481:	f4                   	hlt    
 8048482:	90                   	nop
 8048483:	90                   	nop
 8048484:	90                   	nop
 8048485:	90                   	nop
 8048486:	90                   	nop
 8048487:	90                   	nop
 8048488:	90                   	nop
 8048489:	90                   	nop
 804848a:	90                   	nop
 804848b:	90                   	nop
 804848c:	90                   	nop
 804848d:	90                   	nop
 804848e:	90                   	nop
 804848f:	90                   	nop

08048490 <__do_global_dtors_aux>:
 8048490:	55                   	push   %ebp
 8048491:	89 e5                	mov    %esp,%ebp
 8048493:	53                   	push   %ebx
 8048494:	83 ec 04             	sub    $0x4,%esp
 8048497:	80 3d 24 a0 04 08 00 	cmpb   $0x0,0x804a024
 804849e:	75 3f                	jne    80484df <__do_global_dtors_aux+0x4f>
 80484a0:	a1 28 a0 04 08       	mov    0x804a028,%eax
 80484a5:	bb 18 9f 04 08       	mov    $0x8049f18,%ebx
 80484aa:	81 eb 14 9f 04 08    	sub    $0x8049f14,%ebx
 80484b0:	c1 fb 02             	sar    $0x2,%ebx
 80484b3:	83 eb 01             	sub    $0x1,%ebx
 80484b6:	39 d8                	cmp    %ebx,%eax
 80484b8:	73 1e                	jae    80484d8 <__do_global_dtors_aux+0x48>
 80484ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484c0:	83 c0 01             	add    $0x1,%eax
 80484c3:	a3 28 a0 04 08       	mov    %eax,0x804a028
 80484c8:	ff 14 85 14 9f 04 08 	call   *0x8049f14(,%eax,4)
 80484cf:	a1 28 a0 04 08       	mov    0x804a028,%eax
 80484d4:	39 d8                	cmp    %ebx,%eax
 80484d6:	72 e8                	jb     80484c0 <__do_global_dtors_aux+0x30>
 80484d8:	c6 05 24 a0 04 08 01 	movb   $0x1,0x804a024
 80484df:	83 c4 04             	add    $0x4,%esp
 80484e2:	5b                   	pop    %ebx
 80484e3:	5d                   	pop    %ebp
 80484e4:	c3                   	ret    
 80484e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484f0 <frame_dummy>:
 80484f0:	55                   	push   %ebp
 80484f1:	89 e5                	mov    %esp,%ebp
 80484f3:	83 ec 18             	sub    $0x18,%esp
 80484f6:	a1 1c 9f 04 08       	mov    0x8049f1c,%eax
 80484fb:	85 c0                	test   %eax,%eax
 80484fd:	74 12                	je     8048511 <frame_dummy+0x21>
 80484ff:	b8 00 00 00 00       	mov    $0x0,%eax
 8048504:	85 c0                	test   %eax,%eax
 8048506:	74 09                	je     8048511 <frame_dummy+0x21>
 8048508:	c7 04 24 1c 9f 04 08 	movl   $0x8049f1c,(%esp)
 804850f:	ff d0                	call   *%eax
 8048511:	c9                   	leave  
 8048512:	c3                   	ret    
 8048513:	90                   	nop
 8048514:	90                   	nop
 8048515:	90                   	nop
 8048516:	90                   	nop
 8048517:	90                   	nop
 8048518:	90                   	nop
 8048519:	90                   	nop
 804851a:	90                   	nop
 804851b:	90                   	nop
 804851c:	90                   	nop
 804851d:	90                   	nop
 804851e:	90                   	nop
 804851f:	90                   	nop

08048520 <getxs>:
 8048520:	55                   	push   %ebp
 8048521:	89 e5                	mov    %esp,%ebp
 8048523:	57                   	push   %edi
 8048524:	31 ff                	xor    %edi,%edi
 8048526:	56                   	push   %esi
 8048527:	53                   	push   %ebx
 8048528:	83 ec 2c             	sub    $0x2c,%esp
 804852b:	8b 45 08             	mov    0x8(%ebp),%eax
 804852e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048531:	be 01 00 00 00       	mov    $0x1,%esi
 8048536:	66 90                	xchg   %ax,%ax
 8048538:	a1 20 a0 04 08       	mov    0x804a020,%eax
 804853d:	89 04 24             	mov    %eax,(%esp)
 8048540:	e8 e7 fe ff ff       	call   804842c <_IO_getc@plt>
 8048545:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048548:	89 c3                	mov    %eax,%ebx
 804854a:	74 34                	je     8048580 <getxs+0x60>
 804854c:	83 f8 0a             	cmp    $0xa,%eax
 804854f:	74 2f                	je     8048580 <getxs+0x60>
 8048551:	e8 e6 fe ff ff       	call   804843c <__ctype_b_loc@plt>
 8048556:	8b 00                	mov    (%eax),%eax
 8048558:	f6 44 58 01 10       	testb  $0x10,0x1(%eax,%ebx,2)
 804855d:	74 d9                	je     8048538 <getxs+0x18>
 804855f:	8d 43 d0             	lea    -0x30(%ebx),%eax
 8048562:	83 f8 09             	cmp    $0x9,%eax
 8048565:	76 0b                	jbe    8048572 <getxs+0x52>
 8048567:	8d 43 bf             	lea    -0x41(%ebx),%eax
 804856a:	83 f8 05             	cmp    $0x5,%eax
 804856d:	77 29                	ja     8048598 <getxs+0x78>
 804856f:	8d 43 c9             	lea    -0x37(%ebx),%eax
 8048572:	85 f6                	test   %esi,%esi
 8048574:	74 29                	je     804859f <getxs+0x7f>
 8048576:	89 c7                	mov    %eax,%edi
 8048578:	31 f6                	xor    %esi,%esi
 804857a:	eb bc                	jmp    8048538 <getxs+0x18>
 804857c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048580:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048583:	c6 00 00             	movb   $0x0,(%eax)
 8048586:	8b 45 08             	mov    0x8(%ebp),%eax
 8048589:	83 c4 2c             	add    $0x2c,%esp
 804858c:	5b                   	pop    %ebx
 804858d:	5e                   	pop    %esi
 804858e:	5f                   	pop    %edi
 804858f:	5d                   	pop    %ebp
 8048590:	c3                   	ret    
 8048591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048598:	85 f6                	test   %esi,%esi
 804859a:	8d 43 a9             	lea    -0x57(%ebx),%eax
 804859d:	75 d7                	jne    8048576 <getxs+0x56>
 804859f:	89 fa                	mov    %edi,%edx
 80485a1:	c1 e2 04             	shl    $0x4,%edx
 80485a4:	8d 04 02             	lea    (%edx,%eax,1),%eax
 80485a7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 80485aa:	88 02                	mov    %al,(%edx)
 80485ac:	83 c2 01             	add    $0x1,%edx
 80485af:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 80485b2:	e9 7a ff ff ff       	jmp    8048531 <getxs+0x11>
 80485b7:	89 f6                	mov    %esi,%esi
 80485b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485c0 <getbuf>:
 80485c0:	55                   	push   %ebp
 80485c1:	89 e5                	mov    %esp,%ebp
 80485c3:	83 ec 28             	sub    $0x28,%esp
 80485c6:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485cc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485cf:	31 c0                	xor    %eax,%eax
 80485d1:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80485d4:	89 04 24             	mov    %eax,(%esp)
 80485d7:	e8 44 ff ff ff       	call   8048520 <getxs>
 80485dc:	b8 01 00 00 00       	mov    $0x1,%eax
 80485e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485e4:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80485eb:	75 02                	jne    80485ef <getbuf+0x2f>
 80485ed:	c9                   	leave  
 80485ee:	c3                   	ret    
 80485ef:	90                   	nop
 80485f0:	e8 57 fe ff ff       	call   804844c <__stack_chk_fail@plt>
 80485f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048600 <test>:
 8048600:	55                   	push   %ebp
 8048601:	89 e5                	mov    %esp,%ebp
 8048603:	83 ec 18             	sub    $0x18,%esp
 8048606:	c7 44 24 04 60 87 04 	movl   $0x8048760,0x4(%esp)
 804860d:	08 
 804860e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048615:	e8 f2 fd ff ff       	call   804840c <__printf_chk@plt>
 804861a:	e8 a1 ff ff ff       	call   80485c0 <getbuf>
 804861f:	c7 44 24 04 71 87 04 	movl   $0x8048771,0x4(%esp)
 8048626:	08 
 8048627:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804862e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048632:	e8 d5 fd ff ff       	call   804840c <__printf_chk@plt>
 8048637:	c9                   	leave  
 8048638:	c3                   	ret    
 8048639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048640 <main>:
 8048640:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048644:	83 e4 f0             	and    $0xfffffff0,%esp
 8048647:	ff 71 fc             	pushl  -0x4(%ecx)
 804864a:	55                   	push   %ebp
 804864b:	89 e5                	mov    %esp,%ebp
 804864d:	51                   	push   %ecx
 804864e:	83 ec 54             	sub    $0x54,%esp
 8048651:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048657:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804865a:	31 c0                	xor    %eax,%eax
 804865c:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804865f:	25 ff 0f 00 00       	and    $0xfff,%eax
 8048664:	83 c0 1e             	add    $0x1e,%eax
 8048667:	25 f0 1f 00 00       	and    $0x1ff0,%eax
 804866c:	29 c4                	sub    %eax,%esp
 804866e:	8d 44 24 0f          	lea    0xf(%esp),%eax
 8048672:	83 e0 f0             	and    $0xfffffff0,%eax
 8048675:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804867b:	e8 80 ff ff ff       	call   8048600 <test>
 8048680:	31 c0                	xor    %eax,%eax
 8048682:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048685:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804868c:	75 08                	jne    8048696 <main+0x56>
 804868e:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8048691:	c9                   	leave  
 8048692:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048695:	c3                   	ret    
 8048696:	e8 b1 fd ff ff       	call   804844c <__stack_chk_fail@plt>
 804869b:	90                   	nop
 804869c:	90                   	nop
 804869d:	90                   	nop
 804869e:	90                   	nop
 804869f:	90                   	nop

080486a0 <__libc_csu_fini>:
 80486a0:	55                   	push   %ebp
 80486a1:	89 e5                	mov    %esp,%ebp
 80486a3:	5d                   	pop    %ebp
 80486a4:	c3                   	ret    
 80486a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80486a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486b0 <__libc_csu_init>:
 80486b0:	55                   	push   %ebp
 80486b1:	89 e5                	mov    %esp,%ebp
 80486b3:	57                   	push   %edi
 80486b4:	56                   	push   %esi
 80486b5:	53                   	push   %ebx
 80486b6:	e8 4f 00 00 00       	call   804870a <__i686.get_pc_thunk.bx>
 80486bb:	81 c3 39 19 00 00    	add    $0x1939,%ebx
 80486c1:	83 ec 1c             	sub    $0x1c,%esp
 80486c4:	e8 f3 fc ff ff       	call   80483bc <_init>
 80486c9:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 80486cf:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 80486d5:	29 c7                	sub    %eax,%edi
 80486d7:	c1 ff 02             	sar    $0x2,%edi
 80486da:	85 ff                	test   %edi,%edi
 80486dc:	74 24                	je     8048702 <__libc_csu_init+0x52>
 80486de:	31 f6                	xor    %esi,%esi
 80486e0:	8b 45 10             	mov    0x10(%ebp),%eax
 80486e3:	89 44 24 08          	mov    %eax,0x8(%esp)
 80486e7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80486ea:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80486f1:	89 04 24             	mov    %eax,(%esp)
 80486f4:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 80486fb:	83 c6 01             	add    $0x1,%esi
 80486fe:	39 fe                	cmp    %edi,%esi
 8048700:	72 de                	jb     80486e0 <__libc_csu_init+0x30>
 8048702:	83 c4 1c             	add    $0x1c,%esp
 8048705:	5b                   	pop    %ebx
 8048706:	5e                   	pop    %esi
 8048707:	5f                   	pop    %edi
 8048708:	5d                   	pop    %ebp
 8048709:	c3                   	ret    

0804870a <__i686.get_pc_thunk.bx>:
 804870a:	8b 1c 24             	mov    (%esp),%ebx
 804870d:	c3                   	ret    
 804870e:	90                   	nop
 804870f:	90                   	nop

08048710 <__do_global_ctors_aux>:
 8048710:	55                   	push   %ebp
 8048711:	89 e5                	mov    %esp,%ebp
 8048713:	53                   	push   %ebx
 8048714:	83 ec 04             	sub    $0x4,%esp
 8048717:	a1 0c 9f 04 08       	mov    0x8049f0c,%eax
 804871c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804871f:	74 13                	je     8048734 <__do_global_ctors_aux+0x24>
 8048721:	bb 0c 9f 04 08       	mov    $0x8049f0c,%ebx
 8048726:	66 90                	xchg   %ax,%ax
 8048728:	83 eb 04             	sub    $0x4,%ebx
 804872b:	ff d0                	call   *%eax
 804872d:	8b 03                	mov    (%ebx),%eax
 804872f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048732:	75 f4                	jne    8048728 <__do_global_ctors_aux+0x18>
 8048734:	83 c4 04             	add    $0x4,%esp
 8048737:	5b                   	pop    %ebx
 8048738:	5d                   	pop    %ebp
 8048739:	c3                   	ret    
 804873a:	90                   	nop
 804873b:	90                   	nop

Disassembly of section .fini:

0804873c <_fini>:
 804873c:	55                   	push   %ebp
 804873d:	89 e5                	mov    %esp,%ebp
 804873f:	53                   	push   %ebx
 8048740:	83 ec 04             	sub    $0x4,%esp
 8048743:	e8 00 00 00 00       	call   8048748 <_fini+0xc>
 8048748:	5b                   	pop    %ebx
 8048749:	81 c3 ac 18 00 00    	add    $0x18ac,%ebx
 804874f:	e8 3c fd ff ff       	call   8048490 <__do_global_dtors_aux>
 8048754:	59                   	pop    %ecx
 8048755:	5b                   	pop    %ebx
 8048756:	c9                   	leave  
 8048757:	c3                   	ret    
