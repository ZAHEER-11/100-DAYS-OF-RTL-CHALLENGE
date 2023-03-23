`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:01 03/23/2023 
// Design Name: 
// Module Name:    PIPOb 
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
module PIPOb(clk,d,q
    );
input clk;
input [3:0]d;
output reg [3:0]q;
always@(posedge clk)
begin

    q<=d;
	 
end

endmodule
