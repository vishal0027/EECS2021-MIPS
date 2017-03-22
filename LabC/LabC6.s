


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
		.globl signum
#-----------------------------
	.text
#-----------------------------
getCount:
		lw	$v0, count($0)
		jr $ra

setCount:
		sw	$a0, count($0)
		jr $ra

signum:
		add 	$t0, $0, $0 	#result t0 = 0
		slt 	$t9, $a0, $0	# arg < 0
		beq 	$t9, $0, elfiel	#ELSE GO TO ELSE STATEMENT NOT ELSE IF 
		addi	$t0, $0, -1	#result = -1
		
		j last

	elfiel: beq 	$a0, $0, elfi	#IF ARG ==0 THEN GO TO ELSE IF OTHERWISE CONTINUE
		addi 	$t0, $0, 1		
		
		j last

	elfi:  add 	$t0, $0, $0
			 				
		j last
	
	last:
		lw 	$t5, count($0)
		addi	$t5, $t5, 1
		sw	$t5, count($0)
		add 	$v0, $0, $t0
		
	jr	$ra
