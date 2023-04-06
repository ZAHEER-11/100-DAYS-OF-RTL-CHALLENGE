`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:59 04/06/2023 
// Design Name: 
// Module Name:    ripple_updown 
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
module ripple_updown(
		input clk,rst,up_down,
		output [3:0] q
    );

tff t1(1'b1,clk,rst,q[0]),
	t2(1'b1,o1,rst,q[1]),
	t3(1'b1,o2,rst,q[2]),
	t4(1'b1,o3,rst,q[3]);






andgate c1(q[0],(~up_down),Q0),
        c2((~q[0]),up_down,Q0bar),
		  c3(q[1],(~up_down),Q1),
        c4((~q[1]),up_down,Q1bar),
		  c5(q[2],(~up_down),Q2),
        c6((~q[2]),up_down,Q2bar);
		  
orgate  d1(Q0,Q0bar,o1),
        d2(Q1,Q1bar,o2),
		  d3(Q2,Q2bar,o3);

endmodule
