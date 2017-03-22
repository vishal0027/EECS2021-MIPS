	

	.text
main:
	li.d 	$f2, 0.23
	li.d 	$f4, 2.1


	add.d  		$f6, $f2, $f4
	c.le.d  	$f2, $f4
	bc1t    	exiot 

	div.d  	 	$f6,$f2, $f4
	add.d		$f12, $0, $f6
	addi		$v0, $0, 3
	syscall 
	jr   $ra
exiot:

	jr   $ra



