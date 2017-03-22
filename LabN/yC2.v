module yC2(RegDst, ALUSrc, RegWrite, Mem2Reg, MemRead, MemWrite, rtype, lw, sw,branch);
output RegDst, ALUSrc, RegWrite, Mem2Reg, MemRead, MemWrite;
input rtype, lw, sw, branch;
assign RegDst = rtype;				//use [rd] field
nor (ALUSrc, rtype, branch);			//0 - do calculation; 1 - add immediate
nor (RegWrite, sw, branch);			//need to write to a register
assign Mem2Reg = lw;
assign MemRead = lw;
assign MemWrite = sw;
endmodule
