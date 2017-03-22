module LabL;
reg [31:0]a,b,d,e,expect;
reg [1:0]c;
wire [31:0]z;
yMux4to1 #(32) test(z,a,b,d,e,c);

initial
repeat(10)
begin
	
	a = $random*10;
	b = $random*10;
	d = $random*10;
	e = $random*10;
	c = $random%2;
	#2;
	expect = ( c == 0 )? a : (c==1)?b:(c ==2)?d:e;
	#2;
	if (expect === z)
		 $display("PASS\nA ==> %0d\nB ==> %0d\nD ==> %0d\nE ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,d,e,c,z);
	else
		 $display("FAIL\nA ==> %0d\nB ==> %0d\nD ==> %0d\nE ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,d,e,c,z);
end
endmodule
