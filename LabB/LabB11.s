#Convert following in mips
#################################################################
#         int t0, a0; 						#
#         t0 = 60; 						#
#         a0 = t0 >>> 1; 					#
#         System.out.print(a0);         			#	
#         System.out.print('         ');         		#
#         a0 = t0 << 1;  					#
#         System.out.print(a0);         			#
#        							#
#   								#	
#################################################################


        .text         
main:  
#-------------------------------    
        addi    $t0, $0, 60 
        sra     $a0, $t0, 1 
        addi 	$v0, $0,  1
	syscall
	
#-------------------------------
#------	for adding space------ 	#

	addi	$a0, $0, ' '
	addi	$v0, $0, 11
	syscall

#-------------------------------

        sll     $a0, $t0, 1 
        addi 	$v0, $0, 1
	syscall 

#-------------------------------
#------	To add new line--------#

	addi $a0, $0, 10	#new line
	addi $v0, $0, 11	#print char
	syscall
	
	
#-------------------------------         
fini:   jr       $ra    
