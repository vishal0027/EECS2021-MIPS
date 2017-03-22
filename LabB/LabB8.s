#Convert following in mips
#########################################################

	.text
main:

         addi     $v0, $0, 1 
         add      $a0, $0, $0 
loop:    slti     $t9, $a0, 5 
         beq      $t9, $0, fini 
         syscall         
         addi     $a0, $a0, 1 
         j         loop         
fini:
	jr $ra
