#Convert following in mips
#########################################################
#public class LabB1 					#
#{ 							#
#         public static void main(String[] args) 	#
#         {         					#
#                  int t0 = (new Scanner(System.in)).nextInt();  				#
#                  int t1 = (new Scanner(System.in)).nextInt(); 				#
#                  int t2 = t0 + t1; 			#
#                  //-------------------         	#
#                  int a0 = t2; 			#
#                  System.out.print(a0);         	#
#         }         					#
#}   							#	
#########################################################
	.globl fini
	.text
main:
	addi $v0, $0, 5		#calling service 5
	syscall
	add $t0, $0, $v0 	#saving register's value in t0 =x


	addi $v0, $0, 5		#calling service 5
	syscall
	add $t1, $0, $v0	#saving register's value in t1 =y

	
	add $t2, $t1, $t0	# adding t1 ad t0 and saving it in t2

	addi $v0, $0, 1		#calling OS service 1 to print
	add $a0, $0, $t2	#putting value to t2 in argument a0
	syscall

fini:	jr $ra			#return
