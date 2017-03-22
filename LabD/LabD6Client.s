    
#########################################################################
#	public static void main(String[] args){ 	   		#	
#        	StringBuffer sb = new StringBuffer(16); 		#
#        	sb.append('A');    					#
#        	sb.append('B');    					#
#        	System.out.println(sb);    				#
#        	sb.setCharAt(1,    'A');    				#
#        	System.out.println(sb);    				#
#    }   								#
#########################################################################


	     .text         
main:    sw       $ra,    0($sp)    
         addi     $sp, $sp, -4 


#----------------Allocation----------------------------
         addi     $a0, $0, 16        
         jal      SB                # call the constructor 
         add      $s0, $0, $v0 
#-----------------------------------------------------

         add      $a0, $0, $s0       
         addi     $a1, $0, 'A'       
         jal      append            # append 'A'
 
         add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B' 

	 add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B'
 
	 add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B' 

	 add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B' 

	 add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B' 

	 add      $a0, $0, $s0 
         addi     $a1, $0, 'B'
         jal      append            # append 'B' 
#---------------------------------------------------------------
  
	
	 add	  $a0, $0, $s0	    # String
	 addi 	  $a2, $0, 'V' 	    # T
	 addi 	  $a1, $0, 3        # pos
	
	 
	jal setCharAt

#-----------------Print----------------------------------------------		
	 add 	 $a0, $0, $s0
	 addi 	 $v0, $0, 4
	 syscall
 
#-------------------Stack pop-----------------------------------
         addi     $sp, $sp, 4 
         lw       $ra, 0($sp) 
#---------------------------------------------------------------
        
         jr         $ra         
