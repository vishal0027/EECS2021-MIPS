module LabL; 
reg signed [31:0] a, b; 
reg signed [31:0] expect; 
reg [2:0] op; 
wire ex; 
wire signed [31:0] z; 
reg ok, flag; 
yAlu mine(z, ex, a, b, op); 
initial 
begin 
  repeat  (10)  
  begin  
	a  =  $random%100;  
	b  =  $random%100;
	//flag = $value$plusargs("op=%d", op);
	op =  $random%3;	 
	// The oracle: compute "expect" based on "op" 
    	if(op === 3'b000)
		expect = a&b;
	if(op === 3'b001)
		expect = a|b;
	if(op === 3'b010)
		expect = a+b;
	if(op === 3'b110)
		expect = a-b;
	
	#1;  
	// Compare the circuit's output with "expect" 
	// and set "ok" accordingly 	
	// Display ok and the various signals 


	if(expect === z)
    		$display("z ==> %0d\n", z);
	else 
		$display("FAIL\n A ==> %0d\n B ==> %0d\n OPC ==> %0b\n Expect ==> %0d\n Result ==> %0d\n",a,b,op,expect,z);
end
end 
endmodule 
