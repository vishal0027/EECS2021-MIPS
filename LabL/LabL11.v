module LabL; 
reg signed [31:0] a, b, temp, zero; 
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
	temp = $random %2;
	if(temp == 0)
		b=a;	 
	// The oracle: compute "expect" based on "op" 
    	if(op === 3'b000)
		expect = a&b;
	if(op === 3'b001)
		expect = a|b;
	if(op === 3'b010)
		expect = a+b;
	if(op === 3'b110)
		expect = a-b;
	if(op === 3'b111)
		expect = a<b?1:0;
	  
	zero = (expect == 0)?1:0;
	#2;
	// Compare the circuit's output with "expect" 
	// and set "ok" accordingly 	
	// Display ok and the various signals 
	if (ex == zero)
		$display("PASS\n A ==> %0d\n B ==> %0d\n OPC ==> %0b\n Expect ==> %0d\n Ex ==> %0d\n Result ==> %0d\n",a,b,op,expect,ex,z);
	
	//if(z == expect)
    	//	$display("PASS\n A ==> %0d\n B ==> %0d\n Zero ==> %0d\n Ex ==> %0b\n Result ==> %0d\n",a,b,zero,ex,z);
	//else 
		//$display("FAIL\n A ==> %0d\n B ==> %0d\n OPC ==> %0b\n Expect ==> %0d\n Result ==> %0d\n",a,b,op,expect,z);
end
end 
endmodule 
