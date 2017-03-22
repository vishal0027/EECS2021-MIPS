module client;
wire z;
reg	[1:0] a;
reg	[1:0] b;
integer flag, i;

Engine test(z, a, b);

initial
begin
	flag = $value$plusargs("a=%b", a);
	flag = $value$plusargs("b=%b", b);
	#4;
	$display("a=%b, b=%b --> z=%b", a, b , z);
	$finish;
end

endmodule


