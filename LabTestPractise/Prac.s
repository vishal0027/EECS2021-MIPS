
	.text
main:
	addi	$v0, $0, 5
	syscall
	add	$a0, $v0, $0 
	addi	$v0, $0, 5
	syscall
	add 	$a1, $v0, $0
	
	#-----------------------------------------------------------
		sw	$ra, 0($sp)
		addi	$sp, $sp, -4	#push ra
	#-----------------------------------------------------------
	
	jal test
	
	#------------------------------------------------------------
		addi	$sp, $sp, 4
		lw	$ra, 0($sp)	#pop ra
	#------------------------------------------------------------
	
	add	$a0, $v0, $0
	addi	$v0, $0, 1
	syscall
	jr 	$ra

test:
	
	srl 	$a0, $a0, 31	# a
	srl	$a1, $a1, 31	# b
	xor	$t0, $a0, $a1
	beq 	$t0, $0, fs
	add	$v0, $0, $0	
	jr 	$ra
fs:	
	addu 	$t3, $a0, $a1
	srl 	$t3, $t3, 31
	xor	$v0, $a0, $t4
	jr 	$ra
