`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:36 03/30/2023 
// Design Name: 
// Module Name:    Ripple_up_counter 
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
module Ripple_up_counter(
	 input clk,rst,
	 output [3:0] q
    );
tff t1(1'b1,clk,rst,q[0]),
	t2(1'b1,q[0],rst,q[1]),
	t3(1'b1,q[1],rst,q[2]),
	t4(1'b1,q[2],rst,q[3]);

endmodule
