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
	add	$a0, $0, $s1
	jal	Prog
	add	$s2, $v0, $0	# s2 = ref

	slt	$t5, $s1, $s0
	beq	$t5, $0, part2

part1:	add	$a0, $s2, $0
	jal	getScale
	add	$a0, $0, $v0
	addi	$v0, $0, 1
	syscall
	j	done

part2:	add	$a0, $s0, $0
	jal	Prog
	add	$a0, $0, $s2
	add	$a1, $0, $v0
	jal	toRatio
	add     $a0, $0, $v0
	addi    $v0, $0, 1
	syscall 
	j       done

done:	addi	$sp, $sp, 4
	lw	$ra, 0($sp)
	jr	$ra

Prog:	#--------------------
		add	$t5, $0, $a0	#temporary storing a0
	
	#-------------------Heap--------------------------#
		addi	$v0, $0, 9	
		addi	$a0, $0, 4	# allocating memorary for two parameter
		syscall			# v0 = address of 8B block
	#-------------------------------------------------#
		
		add	$a0, $0, $t5	# get back the a0 parameter
		sw	$a0, 0($v0)	# store argument one to heap
		
		jr $ra

getScale: #-----------------
		addi 	$t2, $0, 5
		
		lw	$s5, 0($a0)
		div 	$s5, $t2
		mflo 	$t3
		sll 	$t3, $t3, 3
		add 	$v0, $0, $t3
		jr $ra

toRatio: #-----------------
	
		addi 	$t6, $0, 33
		lw	$t4, 0($a0)
		lw 	$t7, 0($a1)
		mult	$t4, $t6
		mflo	$t4
		div 	$t4, $t7
		mflo	$t8
		add 	$v0 , $0, $t8
		jr $ra

########################################################
