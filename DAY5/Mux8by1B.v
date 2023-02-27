`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:06 02/27/2023 
// Design Name: 
// Module Name:    Mux8by1B 
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
module Mux8by1B(out,s,i0,i1,i2,i3,i4,i5,i6,i7
    );
input i0,i1,i2,i3,i4,i5,i6,i7;
input [2:0] s;
output reg out;
always @(s)
begin
case(s)
3'b000:out=i0;
3'b001:out=i1;
3'b010:out=i2;
3'b011:out=i3;
3'b100:out=i4;
3'b101:out=i5;
3'b110:out=i6;
3'b111:out=i7;
default:out=8'bx;
endcase
end

endmodule
