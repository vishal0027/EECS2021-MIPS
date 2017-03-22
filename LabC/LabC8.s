#########################################################
#	public static void printVertical(int n){	#
#		if (n > 0){				#
#			printVertical(n / 10);		#
#			System.out.println(n % 10);	#
#		}					#
#	}						#
#########################################################




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
		.globl isPrime
		.globl isFactor
		.globl printVertical
#----------------------------------------
	.text
#----------------------------------------
getCount:
		lw	$v0, count($0)
		jr $ra
#----------------------------------------
setCount:
		sw	$a0, count($0)
		jr $ra
#-----------------------------------------
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
		lw 	$t1, count($0)
		addi	$t1, $t1, 1
		sw	$t1, count($0)
		add 	$v0, $0, $t0
		
	jr	$ra
#-----------------------------------------
isPrime:	
		
		addi	$t5, $0, 1	#Boolean result = true
		addi 	$t2, $0, 2	#candidate for FOR loop
		
	loop:	slt	$t8, $t2, $a0	#candidate < $a0
		beq	$t8, $0, skip	# skip to
		beq	$t5, $0, skip	#skip
		add	$a1, $0, $t2	# save  candidate in $a1
	#-----------------------------------------------------------
		sw	$ra, 0($sp)
		addi	$sp, $sp, -4	#push ra
	#-----------------------------------------------------------

		jal isFactor

	#------------------------------------------------------------
		addi	$sp, $sp, 4
		lw	$ra, 0($sp)	#pop ra
	#------------------------------------------------------------
		beq 	$v0, $0, go
		add 	$t5, $0, $0
		j inc

	go:	addi 	$t5, $0, 1 		
	
	inc:	addi 	$t2, $t2, 1	# canditate(i)++
		j loop
		
	skip:	
	
		add $v0, $0, $t5	# saving result in return
		jr	$ra	
#------------------------------------------
isFactor:	
		
		div	$a0, $a1	# dividing i/candidate
		mfhi	$s0		# i%candidate
		beq	$s0, $0, trans
		addi 	$t4, $0, 0	# boolean t4 false
		add	$v0, $0, $t4	# return
		jr $ra

	trans: 	
		addi 	$t4, $0, 1	# boolean t4 true
		add	$v0, $0, $t4	# return
		jr 	$ra
#-----------------------------------------
printVertical:
	
		sgt	$t0, $a0, $0	# n>0?1:0
		beq 	$t0, $0, goto
		addi	$t2, $0, 10	# t3 = 10
		div	$a0, $t2
		mflo 	$a0
		
		mfhi	$t4
	#-----------------------------------------------------------
		sw	$ra, 0($sp)
		addi	$sp, $sp, -4	#push ra
	#-----------------------------------------------------------


	#-----------------------------------------------------------
		sw	$t4, 0($sp)
		addi	$sp, $sp, -4	#push mfhi
	#-----------------------------------------------------------
		jal printVertical
	
	#------------------------------------------------------------
		addi	$sp, $sp, 4
		lw	$t4, 0($sp)	#pop mfhi
	#------------------------------------------------------------	

		add	$a0, $0, $t4					
		addi    $v0, $0, 1		
	     	syscall				
		addi    $a0, $0, 10		
		addi    $v0, $0, 11		
		syscall	

	#------------------------------------------------------------
		addi	$sp, $sp, 4
		lw	$ra, 0($sp)	#pop ra
	#------------------------------------------------------------
		
		
	
	
		jr $ra
	goto:
		jr $ra
