#Convert following in mips
#########################################################
#public class LabB6 					#
#{ 							#
#         public static void main(String[] args) 	#
#         {         					#
#                  int t0 = (new Scanner(System.in)).nextInt(); #
#                  int t1 = (new Scanner(System.in)).nextInt(); #
#		   if(t0 == t1){			#
#			print(t0 + t1);			#
#		   else{				#
#			print(t0 - t1);			#
#			}				#
#		   }					#
#                					#
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
	
	add $t3, $t1, $t0	#t3 = t1+10;
	sub $t4, $t0, $t1	#t4 = t0-t1;
	
	add $t5, $0, $t3	#temporary variable to store value
	beq $t1, $t0, skip	#if t0 == t1
	add $t5, $0, $t4
skip: 	#-----------------#	#skiped the instruction if t0 == t1


	addi $v0, $0, 1		#calling OS service 1 to print
	add $a0, $0, $t5	#putting value to t3 in argument a0
	syscall

fini:	jr $ra			#return
