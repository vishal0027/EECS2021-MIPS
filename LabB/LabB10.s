 




        .text         
main:    #---------------------    
         addi     $t0, $0, 60 
         addi     $t1, $0, 7 
         div      $t0, $t1   
         mflo     $a0  		#Question
	 addi 	  $v0, $0, 1
	 syscall
	
	 addi $a0, $0, 10	#new line
	 addi $v0, $0, 11	#print char
	 syscall	

	 mfhi	$a0		#remender
	 addi 	$v0, $0, 1
	 syscall

	 addi $a0, $0, 10	#new line
	 addi $v0, $0, 11	#print char
	 syscall
	 jr $ra  
