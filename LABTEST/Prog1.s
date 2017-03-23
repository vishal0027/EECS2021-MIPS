	.text
main:	#-------------------
	
		addi 	$v0, $0, 5
		syscall
		add 	$t0, $0, $v0
		sll	$t0, $t0, 2
		ori	$t0, $t0, 3
		add	$t2, $0, $0	#count = 0
		add	$t5, $0, $0

loop:		slt	$t9, $t5, $t0	#t5<t0 (Comparision i< something)
		beq	$t9, $0, ex	#if t9 == 0(loop in-varient)
		add	$t3, $0, $t5	# t3 = i
		mult 	$t3, $t3
		mflo	$t3
		
		addu 	$t2, $t2, $t3	# s0 = s0+t5(Task)
		addi 	$t5, $t5, 1	# t5 = t5+1;(i++)
		j loop
ex:
		add 	$a0, $0, $t2
		addi 	$v0, $0, 1
		syscall

		jr	$ra
