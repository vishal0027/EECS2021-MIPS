module LabK;
reg	a;
reg 	b;
reg	cin;
reg 	expect;
integer i,j;
wire myxor1, myand1, z, myand2, myor, cout;
	xor firstxor(myxor1,b,a);
	and firstand(myand1,b,a);
	and secondand(myand2, cin, myxor1);
	xor secondxor(z, myxor1, cin);
	or  firstor(cout, myand2, myand1);
	

	initial
	begin
		for(i=0; i<2; i=i+1) begin
			for(j=0; j<2; j=j+1) begin
				a = i;
				b = j;
				cin = i;
				expect = a+b+cin;
				#2
				if(expect === z)
					$display("PASS: a=%b b=%b cin =%b z=%b ", a, b, cin, z);
		 		else
					$display("FAIL: a=%b b=%b cin =%b z=%b ", a, b, cin, z);
			end
		end
		$finish;
	end
endmodule
