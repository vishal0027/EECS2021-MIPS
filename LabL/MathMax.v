module mathMax;
reg signed[31:0] a,b;
wire [31:0] slt;
wire signed[31:0] z;
wire ex;
yAlu myAlu(slt, ex, a, b, 3'b111);
yMux #(32) mymux(z, a, b, slt[0]);
initial
	repeat(10)
	begin
		a = $random%100;
		b = $random%100;
		#1;
		$display(" A ==> %0d\n B ==> %0d\n Z ==> %0d\n",a,b, z);
	end
endmodule
