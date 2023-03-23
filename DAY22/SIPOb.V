`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:10 03/23/2023 
// Design Name: 
// Module Name:    SIPOb 
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
module SIPOb(clk,si,q
    );
input clk;
input si;
output reg [3:0] q;
always@(posedge clk)
begin
    q[3]<=si;
	 q[2]<=q[3];
	 q[1]<=q[2];
	 q[0]<=q[1];

end

endmodule
