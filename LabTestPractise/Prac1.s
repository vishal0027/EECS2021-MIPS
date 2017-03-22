#########################################################
#							#
#			Prac1.s				#
#							#
#########################################################

#------------------globle declaration--------------------

		.globl	Rectangle
		.globl	Area
		.globl	Perimeter

#--------------------------------------------------------
	.text

main:	#----------------_Main_----------------------------
	
	#-----------------------------------------------------------
		sw	$ra, 0($sp)
		addi	$sp, $sp, -4	#push ra
	#-----------------------------------------------------------
	
	#---------------Making Rectangle----------------------------	
		addi	$v0, $0, 5
		syscall
		add 	$a0, $0, $v0	# storing parameter one
		
		addi 	$v0, $0, 5
		syscall
		add	$a1, $0, $v0	# storing parameter two
		
		jal Rectangle
		
		add	$s0, $0, $v0	# storing rectangle			
	#-------------------- Area -----------------------------------

		add 	$a0, $0, $s0
		jal 	Area
		
		add	$a0, $0, $v0
		addi 	$v0, $0, 1
		syscall	
	#------------------new line---------------------------------
		addi    $a0, $0, 10		
		addi    $v0, $0, 11		
		syscall		
	#----------------------Primeter------------------------------
	
		add	$a0, $0, $s0
		
		jal	Perimeter
		
		add	$a0, $0, $v0
		addi 	$v0, $0, 1
		syscall
	#------------------------------------------------------------
		addi	$sp, $sp, 4
		lw	$ra, 0($sp)	#pop ra
	#------------------------------------------------------------

		jr $ra

#---------------------------------------------------------

Rectangle:

		add	$t5, $0, $a0	#temporary storing a0
	
	#-------------------Heap--------------------------#
		addi	$v0, $0, 9	
		addi	$a0, $0, 8	# allocating memorary for two parameter
		syscall			# v0 = address of 8B block
	#-------------------------------------------------#
		
		add	$a0, $0, $t5	# get back the a0 parameter
		sw	$a0, 0($v0)	# store argument one to heap
		sw	$a1, 4($v0)	# store argument one to heap


		jr $ra
#----------------------------------------------------------

Area:
		lw	$t1, 0($a0)
		lw 	$t2, 4($a0)

		mult 	$t1, $t2
		mflo	$v0

		jr $ra

#-----------------------------------------------------------

Perimeter:

		lw 	$t3, 0($a0)
		lw	$t4, 4($a0)

		add	$t3, $t3, $t3
		add	$t4, $t4, $t4
		add	$v0, $t3, $t4
		
		jr $ra
#-----------------------------------------------------------


