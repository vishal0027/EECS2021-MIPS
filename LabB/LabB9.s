#Convert following in mips
#################################################################
#								#
#public class LabB9						#
#{ 								#
#         public static void main(String[] args) 		#
#         {         						#
#            	int s0 = 0; 					#
#         	int t0 = (new Scanner(System.in).nextInt(); 	#
#         	for (int t5 = 0; t5 < t0; t5++) 		#
#         	{         					#
#             		s0 = s0 + t5; 				#
#        	 }         					#
#         	System.out.print(s0);         print(a0);        #
#         }         						#
#}   								#	
#################################################################
	.text
main:
	add $s0, $0,$0		# $s0 = 0	
	
	addi $v0, $0, 5 	#os service call
	syscall
	add $t0, $0, $v0	#t0 = input

	add $t5, $0,$0		#t5 = 0

loop:	slt $t9, $t5, $t0	#t5<t0
	beq $t9, $0, out 	#if t9 == 0
	add $s0, $s0, $t5	# s0 = s0+t5
	addi $t5, $t5, 1	# t5 = t5+1;
	j loop

out: 	add $a0, $0, $s0	# a0 = s0
	addi $v0, $0, 1		# calling os service 1
	syscall
	

	addi $a0, $0, 10	#new line
	addi $v0, $0, 11	#print char
	syscall
	
	jr $ra
