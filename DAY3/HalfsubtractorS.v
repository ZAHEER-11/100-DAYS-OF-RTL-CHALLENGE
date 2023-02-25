`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:33 02/25/2023 
// Design Name: 
// Module Name:    HalfsubtractorS 
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
module HalfsubtractorS(diff,borrow,A,B
    );
input A,B;
output diff,borrow;
xor g1(diff,A,B);
not g2(Abar,A);
and g3(borrow,Abar,B);

endmodule
