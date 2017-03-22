	.text
main:	#-------------------
	sw	$ra, 0($sp)
	addi	$sp, $sp, -4

	addi	$v0, $0, 5
	syscall
	add	$a0, $0, $v0	
	addi    $v0, $0, 5
	syscall
	sll	$v0, $v0, 24
	srl	$a1, $v0, 24

	jal	Prog3
	add	$a0, $v0, $0
	jal	compute
	add	$a0, $0, $v0
	addi	$v0, $0, 1
	syscall
done:	addi	$sp, $sp, 4
	lw	$ra, 0($sp)
	jr	$ra
Prog3:	#-------------------


		add	$t5, $0, $a0	#temporary storing a0
	
	#-------------------Heap--------------------------#
		addi	$v0, $0, 9	
		addi	$a0, $0, 5	# allocating memorary for two parameter
		syscall			# v0 = address of 5B block
	#-------------------------------------------------#
		
		add	$a0, $0, $t5	# get back the a0 parameter
		sw	$a0, 0($v0)	# store argument one to heap
		sw	$a1, 4($v0)	# store a1 to heap
		jr 	$ra
compute:#-----------------
		lw 	$t0, 0($a0)	#t0 = f
		lb	$t1, 4($a0)	#t1 = b
		mult 	$t0, $t1
		mflo	$v0
		jr 	$ra
