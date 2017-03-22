module prog;
reg signed [31:0] in;
wire signed[31:0] z;
Engine3 a(z, in);
initial
begin
	in = 32;
	#2;
	$display("Z ==> %0d\n", z);
end
endmodule
