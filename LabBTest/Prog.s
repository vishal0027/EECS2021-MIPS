########################################################
#
#			Prog.s
#
########################################################
	.text
main:	addi	$v0, $0, 5	# read int service
	syscall
	add	$t0, $0, $v0	#t0 = input
	addi 	$t1, $0, 5	#t1 = 5
	
	sub	$t3, $t0, 3	# t0-3
	
	sle	$t2, $t0, $t1	#t0<=5
	beq	$t2, $0, skip	#got skip 
	add	$a0, $0, $t3	# we print t3
	addi 	$v0, $0, 1	
	syscall	
	jr 	$ra
skip:	
	add	$t8, $0, $0	#y=0	
	add	$t5, $0, $0	#i=0	

loop:	slt $t9, $t5, $t0	#t5<t0
	beq $t9, $0, out 	#if t9 == 0
	
	addi $t6, $0, 5		# constant 5
	mult $t6, $t0
	mflo $t7		#5*x
	add $t8, $t8, $t7	#s0 = s0+t5
	addi $t5, $t5, 1	# t5 = t5+1;
	j loop

out:	add $a0, $0, $t8
	addi $v0, $0, 1
	syscall

#--------------------------------

	jr	$ra
########################################################

