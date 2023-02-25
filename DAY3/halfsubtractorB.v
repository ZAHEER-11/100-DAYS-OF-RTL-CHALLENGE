`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:44 02/25/2023 
// Design Name: 
// Module Name:    halfsubtractorB 
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
module halfsubtractorB(diff,borrow,A,B
    );
input wire A,B;
output reg diff,borrow;
always @(A or B)
begin
diff = A^B;
borrow = (~A)&B;
end

endmodule
