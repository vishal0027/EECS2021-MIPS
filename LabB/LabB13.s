
        .text         
main:    #---------------------    
         addi	$v0, $0, 5
	 syscall
	 add	$t0, $0, $v0   
   
	 sll	$t1, $t0, 21
	 srl	$t2, $t1, 31
	 
	 add	$a0, $0, $t2
	 addi 	$v0, $0, 1
	 syscall
#--------------------------------
	 addi $a0, $0, 10	#new line
	 addi $v0, $0, 11	#print char
	 syscall


	jr $ra	
