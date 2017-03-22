module LabL;
reg a,b,c;
wire z;
yMux1 test(z,a,b,c);

initial
begin
	
	a = $random;
	b = $random;
	c = $random;
	#1 $display("A ==> %0d\nB ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,c,z);

end
endmodule
