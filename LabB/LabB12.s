#multply

# multpily without using mult but we have to do without using it
        .text         
main:    #---------------------    
         addi	$v0, $0, 5
	 syscall
	 add	$t0, $0, $v0   
   
	 sll	$t1, $t0, 4
	 sll	$t2, $t0, 1

	 add 	$t3, $t2, $t1
	 
	 add	$a0, $0, $t3
	 addi 	$v0, $0, 1
	 syscall
#--------------------------------
	 addi $a0, $0, 10	#new line
	 addi $v0, $0, 11	#print char
	 syscall


	jr $ra	
