`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:35 04/06/2023 
// Design Name: 
// Module Name:    sync_up 
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
module sync_up(
    input clk,rst,
	 output [2:0]q
    );
tff t1(1'b1,clk,rst,q[0]),
	t2(q[0],clk,rst,q[1]),
	t3(o,clk,rst,q[2]);
	
andgate c1(q[0],q[1],o);

endmodule
