	

	.text
main: 		lw	 $a0, MAX($0)
		addi	 $v0, $0, 1	
		syscall

		addi	 $t0, $0, 4
		lb	 $a0, MAX($t0)
		addi	 $v0, $0, 1
		syscall

		jr $ra
