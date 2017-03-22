module LabK;
reg	[31:0] x; // a 32-bit register
reg	[0:0] one;// a 1-bit reg
reg	[1:0] two;// a 2-bit reg
reg	[2:0] three;	// a 3-bit reg


initial
begin
	#2 $display($time, " ", one);
	#2 $display($time, " ", two);
	#2 $display($time, " ", three);
	#2 $display($time, " ", x);
	#2 x = 32'hffff0000;
	#2 one = &x;
	#2 $display($time, " ",one);
	#2 $display($time, " ",x);
	#2 two = x[1:0];
	#2 x = x+2;
	#2 three = {one, two};
	#2 $display($time, " ",two);
	#2 $display($time, " ",three);
	#2 $display($time, " ",x);
	$finish;
end
endmodule
