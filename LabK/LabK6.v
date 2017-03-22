module labK;
reg a, b, c, flag;
	
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
		flag = $value$plusargs("a=%b", a);
		flag = $value$plusargs("b=%b", b);
		flag = $value$plusargs("c=%b", c);
		#10
		$display("a=%b b=%b z=%b", a, b, z);
		$finish;
	end
endmodule
