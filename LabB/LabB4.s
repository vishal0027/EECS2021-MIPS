#Convert following in mips
#########################################################
#public class LabB4					#
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
	
	sub $t4, $t0, $t1 	#int t4 = t0-t1	

	addi $v0, $0, 1		#calling OS printing servivce
	add $a0, $0, $t3	#putting value to t2 in argument a0
	syscall
	
	
	addi $v0, $0,11		#Callinf OS service (print)
	addi $a0, $0, ' '	#Adding space b/w add and sub
	syscall

	addi $v0, $0, 1		#Callinf OS service (print)
	add $a0, $0, $t4	#putting t4 value in args
	syscall
	

	jr $ra
