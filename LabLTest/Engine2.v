module Engine2(z, a);
output [31:0] z;
input [31:0] a;

wire signed[31:0]twice;
assign twice = a<<1;
//yAlu myAlu(twice, null, a,a , 3'b010);
yAdder myAdder(z,null,a,twice, 1'b0);
endmodule
