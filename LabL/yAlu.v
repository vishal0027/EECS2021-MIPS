module yAlu(z, ex, a, b, op); 
input [31:0] a, b; 
input [2:0] op; 
output [31:0] z; 
output ex; 
wire [31:0] andi, ori, arith, sub, slt;
wire condition;
wire [15:0] z16;
wire [7:0]  z8;
wire [3:0]  z4;
wire [1:0]  z2;
wire z1;
assign slt[31:1] = 0;  
// not supported 
// instantiate the components and connect them 
// Hint: about 4 lines of code 

//and-----------------------------------------
and myAnd[31:0](andi, a, b);
//or------------------------------------------
or  myOr[31:0](ori, a, b);
//(+-)----------------------------------------
yArith myArith(arith,null, a, b, op[2]);

//slt-----------------------------------------
xor myXor (condition, a[31], b[31]);
yArith sltArith(sub,null, a, b, 1'b1);
yMux1  sltMux (slt[0], sub[31], a[31], condition);
//---------------------------------------------
//chosing result
yMux4to1 #(32) myMux (z, andi, ori, arith, slt, op[1:0]);

//Ex--------------------------------------------
or or16[15:0] (z16, z[15:0], z[31:16]); 
or or8[7:0]  (z8, z16[7:0], z16[15:8]); 
or or4[3:0] (z4, z8[3:0], z8[7:4]); 
or or2[1:0]  (z2, z4[1:0], z4[3:2]); 
or or1 (z1, z2[0:0], z2[1:1]);
not noting(ex, z1);
endmodule
