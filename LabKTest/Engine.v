module Engine(z, a, b);
output z;

input [1:0] a,b;
rm test(z, a, b);
wire z;
assign z = (a==3)?  b[0] : z;//a[0]|b[0]|a[1]|b[1];
endmodule