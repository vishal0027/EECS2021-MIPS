module Engine(z, a);
output [31:0] z;
input [31:0] a;

wire signed[31:0]twice;
assign twice[31:1] =a[30:0];
assign twice[0] = 0;
yAdder myAdder(z,null,a,twice, 1'b0);
endmodule
