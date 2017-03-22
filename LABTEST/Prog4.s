
	.text
main:	#-------------------
	sw	$ra, 0($sp)
	addi	$sp, $sp, -4

	addi	$v0, $0, 5
	syscall
	add	$a0, $0, $v0

	jal	sign

	add	$a0, $0, $v0
	addi	$v0, $0, 4
	syscall

done:	addi	$sp, $sp, 4
	lw	$ra, 0($sp)

	jr	$ra
sign:	
	#-------------------	
	
		add 	$t5, $0, $a0
#-----------------------------------------------
		addi	$v0, $0, 9	
		addi	$a0, $0, 2	# allocating memorary for two parameter
		syscall			# v0 = address of 2B block
		addi	$t0, $0, '-'
		sb	$t0,  0($v0)
		sb	$0,   1($v0)
#-----------------------------------------------
		addi	$t1, $0, '+'
		sle	$t9, $0, $t5
		beq	$t9, $0, out
		sb	$t1, 0($v0)
		jr	$ra
out:
		
		jr 	$ra
	
