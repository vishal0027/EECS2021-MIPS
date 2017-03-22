########################################################
#
#			Prog.s
#
########################################################
	.text
main:	sw	$ra, 0($sp)
	addi	$sp, $sp, -4

	addi	$s0, $0, 34	# s0 = n
	addi	$v0, $0, 5
	syscall
	add	$s1, $0, $v0	# s1 = x

	slt	$t5, $s1, $s0
	beq	$t5, $0, part2

part1:	add	$a0, $0, $s1
	add	$a1, $0, $s0
	jal	compute
	add	$a0, $0, $v0
	addi	$v0, $0, 1
	syscall
	j	done

part2:	add	$a0, $0, $s1
	jal	gar
	add     $a0, $0, $v0
	addi    $v0, $0, 1
	syscall 
	j       done

done:	addi	$sp, $sp, 4
	lw	$ra, 0($sp)
	jr	$ra

#------------------------------compute
compute:
	
	add	$t0, $0, $0	#t0 result
	mult 	$a1, $a0	#multfpy a1 * a0
	mflo	$t2		#mflo = t2
	sub	$t3, $a0, $t2	#sub a0 - t2
	
	add 	$v0, $0, $t3	#return t3
	jr $ra		
#------------------------------gar
gar:
	add	$t1, $0, $0	#result
	addi	$t6, $0, 1	#t6 =1
	beq	$a0, $t6, skip	#argument a0 == 1 if yes go to skip
	addi 	$t3, $0, 2	#t3 = 2
	div 	$a0, $t3	#div a0/t3
	mflo	$s0		#store divide in $s0
	add 	$a0, $0, $s0	# $a0 + $s0
	
	#-----------------------------------------------------------
		sw	$ra, 0($sp)
		addi	$sp, $sp, -4	#push ra
	#-----------------------------------------------------------
	jal gar
	add 	$t1, $t6, $t1		# recursion call (imp)
	#------------------------------------------------------------
		addi	$sp, $sp, 4	
		lw	$ra, 0($sp)	#pop ra
	#------------------------------------------------------------


	add 	$v0, $0, $t1	#return result
	jr $ra				
	
skip:
	add	$t1, $0, $0
	add 	$v0, $0, $0	#return result
	jr $ra		

########################################################
