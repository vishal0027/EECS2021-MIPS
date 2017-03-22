module LabL;
reg [31:0]a,b,expect;
reg c;
wire [31:0]z;
yMux #(32) test(z,a,b,c);

initial
repeat(10)
begin
	
	a = $random;
	b = $random;
	c = $random%2;
	#2;
	expect = ( c == 0 )? a : b;
	#2;
	if (expect === z)
		 $display("PASS\nA ==> %0d\nB ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,c,z);
	else
		 $display("FAIL\nA ==> %0d\nB ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,c,z);
end
endmodule
