module LabL;
reg [31:0]a,b, expect, ok;
reg c;
wire [31:0]z;
wire cout;
yAdder test(z,cout,a,b,c);

initial
repeat(10)
begin
	
	a = $random;
	b = $random;
	c = $random;
	#2 expect = a+b+c;
	ok = 0;
	#1;
	if(expect === z)
		ok = 1;
	if(ok === 1)
		$display("PASS");
	else 
		$display("FAIL");
end
endmodule
