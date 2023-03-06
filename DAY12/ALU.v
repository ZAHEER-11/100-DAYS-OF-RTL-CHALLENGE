`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:02:35 03/07/2023 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(operand1,operand2,opcode,result
    );
input [7:0] operand1,operand2;
input [3:0] opcode;
output reg [15:0] result;
always @(*)
begin
case(opcode)
4'b0000:result=operand1+operand2;
4'b0001:result=operand1-operand2;
4'b0010:result=operand1*operand2;


4'b0011:result=operand1<<1;
4'b0100:result=operand1>>1;

4'b0101:result={operand1[6:0],operand1[7]};
4'b0110:result={operand1[0],operand1[7:1]};


4'b0111:result=operand1 & operand2;
4'b1000:result=operand1 | operand2;
4'b1001:result=operand1 ^ operand2;
4'b1010:result=~(operand1 & operand2);
4'b1011:result=~(operand1 | operand2);
4'b1100:result=~(operand1 ^ operand2);
4'b1101:result=~(operand1);

4'b1110:result=(operand1>operand2);
4'b1111:result=(operand1<operand2);

default:result=8'bxxxxxxxx;
endcase
end
endmodule
