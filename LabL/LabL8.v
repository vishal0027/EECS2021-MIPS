module labL; 
reg signed [31:0] a, b,ok; 
reg signed [31:0] expect; 
reg c;
wire cout;
wire signed [31:0]z;
yArith test(z,cout,a,b,c);

initial
repeat(10)
begin
	
	a = $random;
	b = $random;
	c =$random%2;
	if(c == 0)
	   expect = a+b+c;
	else 
	   expect = a +~b+1;
	#1;
	if(expect === z)
		$display("PASS");
		//$display("PASS\nA ==> %0d\nB ==> %0d\nC ==> %0d\nCout ==> %0d\nZ ==> %0d\n", a,b,c, cout,z);
	else 
		$display("FAIL\nA ==> %0d\nB ==> %0d\nC ==> %0d\nCout ==> %0d\nZ ==> %0d\n", a,b,c, cout,z);
end
endmodule 
