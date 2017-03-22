#################################################################
#								#
#			Prac3.s					#
#								#
#################################################################

		.text

main:	sw $ra, 0($sp)
	addi $sp, $sp, -4
	addi $s0, $0, 34 # s0 = n
	addi $v0, $0, 5
	syscall
	add $s1, $0, $v0 # s1 = x
	add $a0, $0, $s1
	jal Prog
	add $s2, $v0, $0 # s2 = obj
	slt $t5, $s1, $s0
	beq $t5, $0, part2
part1:	add $a0, $s2, $0
	jal getRate	
	add $a0, $0, $v0
	addi $v0, $0, 1
	syscall
	j done
part2:	add $a0, $s0, $0
	jal Prog
	add $a0, $0, $s2
	add $a1, $0, $v0
	jal combine
	add $a0, $0, $v0
	addi $v0, $0, 1
	syscall
	j done
done:	addi $sp, $sp, 4
	lw $ra, 0($sp)
	jr $ra
#----------------------------------------------------
Prog:		add	$t5, $0, $a0	#temporary storing a0
	
	#-------------------Heap--------------------------#
		addi	$v0, $0, 9	
		addi	$a0, $0, 4	# allocating memorary for two parameter
		syscall			# v0 = address of 4B block
	#-------------------------------------------------#
		
		add	$a0, $0, $t5	# get back the a0 parameter
		sw	$a0, 0($v0)	# store argument one to heap

		jr	$ra
#-------------------------------------------------------	
getRate:
		addi 	$t0, $0, 12
		lw 	$t1, 0($a0)
		sub 	$t0, $t0, $t1
		addi 	$t1, $0, 3
		xor	$v0, $t0, $t1
		jr 	$ra
#---------------------------------------------------------		
combine:
	
		lw 	$t0, 0($a0)
		lw 	$t1, 0($a1)
		div 	$t0, $t1
		mfhi	$t2
		sub 	$v0, $t1, $t2
		jr 	$ra
########################################################
