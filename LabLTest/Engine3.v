module Engine3(z, a);
output signed [31:0] z;
input signed [31:0] a;

wire signed [31:0]twice;

assign twice[30:0] =a[31:1];
assign twice[31] = 0;
yAdder myAdder(z,null,twice,32'b0, 1'b0);
endmodule
