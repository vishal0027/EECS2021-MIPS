	.globl	SB
	.globl	append
	.globl	setCharAt
	.text
SB:
	#----------------------------------
	addi	$v0,	$0,	9	#allocate address service
	syscall				#--> Return address in $v0
	sb	$0,	0($v0)		# null terminator

	jr	$ra
#------------------------------------------------------------------

append:
	#-----------------------------------Accept Argument: $a0 reference, $a1 char
loop:		lb	$t0,	0($a0)	
		beq	$t0,	$0,	exit
		addi	$a0,	$a0,	1
		j	loop

exit:		sb	$a1,	0($a0)
		sb	$0,	1($a0)
		jr	$ra

#-------------------------------------------------------

setCharAt:  #----------------------------------- Accept Argument: $ssa0 reference, $a1 pos, $a2 char

	add	$a0,	$a0,	$a1
	sb	$a2,	0($a0)	
	jr	$ra
#---------------------------------------------------------------------
