module LabL;
reg a,b,c;
wire z, cout;
yAdder1 test(z,cout,a,b,c);

initial
repeat(10)
begin
	
	a = $random;
	b = $random;
	c = $random;
	#1 $display("A ==> %0d\nB ==> %0d\nC ==> %0d\nCout ==> %0d\nZ ==> %0d\n", a,b,c, cout,z);

end
endmodule
