module labK;
reg a, b, expect;
integer i,j;
  // reg without size means 1-bit
wire notOutput, lowerInput, tmp, z;
	not my_not(notOutput, b);
	and my_and(z, a, lowerInput);
	assign lowerInput = notOutput;
	initial
	begin
		for (i = 0; i < 2; i = i + 1)
        	begin
            		for (j = 0; j < 2; j = j + 1)
            		begin
       				a = i; b = j;
                		expect = a & ~b;
				#1; // wait for z
				if (expect === z)
					$display("PASS: a=%b b=%b z=%b", a, b, z);
				else
					$display("FAIL: a=%b b=%b z=%b", a, b, z);
            		end
        	end
        $finish;
	end
endmodule
