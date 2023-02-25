`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:20 02/25/2023 
// Design Name: 
// Module Name:    halfsubtractorD 
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
module halfsubtractorD(diff,borrow,A,B
    );
input A,B;
output diff,borrow;
assign diff=A^B;
assign borrow=(~A)&B;

endmodule
