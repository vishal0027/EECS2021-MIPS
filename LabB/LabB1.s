#Convert following in mips
#########################################################
#public class LabB1 					#
#{ 							#
#         public static void main(String[] args) 	#
#         {         					#
#                 int t0 = 60; 				#
#                  int t1 = 7; 				#
#                  int t2 = t0 + t1; 			#
#                  //-------------------         	#
#                  int a0 = t2; 			#
#                  System.out.print(a0);         	#
#         }         					#
#}   							#	
#########################################################

	.text
main:
	addi $t0, $0, 60	#int t0 = 60
	addi $t1, $0, 7 	#int t1 = 7
	
	add $t3, $t0, $t1	#int t3 = t1+t0


	addi $v0, $0, 1		#calling OS printing servivce
	add $a0, $0, $t3	#putting value to t2 in argument a0
	syscall

	jr $ra
