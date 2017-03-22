


	.globl MAX
	.globl SIZE
#-----------------------------
	.data
	MAX:	 .word 2147483647;
	SIZE:	 .byte 32;
	count:	 .word 0
#-----------------------------
		.globl getCount
		.globl setCount
#-----------------------------
	.text
#-----------------------------
getCount:
		lw	$v0, count($0)
		jr $ra

setCount:
		sw	$a0, count($0)
		jr $ra
