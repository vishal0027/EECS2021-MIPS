module LabL;
reg [1:0]a,b;
reg c;
wire [1:0]z;
yMux2 test(z,a,b,c);

initial
begin
	
	a = 2;
	b = 1;
	c = $random;
	#1 $display("A ==> %0d\nB ==> %0d\nC ==> %0d\nZ ==> %0d\n", a,b,c,z);

end
endmodule
