module labK;
reg a, b, c,expect;
integer i,j;
wire mynot, myand1,myand2, notwire, z;
	
	not not_gate(mynot, c);
	assign notwire = mynot;
	and and_1(myand1, a, notwire);
	assign first = myand1;
	and and_2(myand2, b, c);
	assign second= myand2;
	or final(z, first, second);
	
	initial	
	begin
		for(i=0; i<2; i=i+1) begin
			for(j=0; j<2; j=j+1) begin
				a = i; 
				b = j;
				c = i;
				expect = ((a & ~c) | (b & c));
				#1

				if(expect === z)
					 $display("PASS: a=%b b=%b c =%b z=%b ", a, b, c, z);
				else
					 $display("FAIL: a=%b b=%b c =%b z=%b ", a, b, c, z);
			end
		end
		$finish;
	end
endmodule
