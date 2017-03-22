         .text   
main:    add      $t5, $0, $0      # index 
         add      $s0, $0, $0      # sum 
         add      $a0, $0, $0      # or reduction 
loop:    lw       $t0, 0x50($t5)   # loop: t0 = array[t5] 
         beq      $t0, $0, done    # if (t0 == 0) done 
            add      $s0,      $s0,      $t0      
         or       $a0, $a0, $t0 
         addi     $t5, $t5, 4      # t5++ 
         j        loop   
done:    sw       $s0, 0x20($0)    # done: save s0 
         sw       $a0, 0x24($0)    # save a0 
