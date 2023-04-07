`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:38 04/07/2023 
// Design Name: 
// Module Name:    sync_updown 
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
module sync_updown(
    input clk,rst,updown,
	 output [2:0] q
    );

tff t1(1'b1,clk,rst,q[0]),
	t2(o1,clk,rst,q[1]),
	t3(o2,clk,rst,q[2]);



andgate c1(q[0],(~updown),Q0),
        c2((~q[0]),updown,Q0bar),
		  c3(Q0,q[1],Q1),
        c4(Q0bar,(~q[1]),Q1bar);
		  
orgate  d1(Q0,Q0bar,o1),
        d2(Q1,Q1bar,o2);

endmodule
