`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:48 03/30/2023 
// Design Name: 
// Module Name:    universalshiftB 
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
module universalshiftB(
	 input clk,
	 input rst,
	 input [1:0] s,
	 input [3:0] din,
	 input sin,
	 output reg [3:0] q
    );
always@(posedge clk)
begin
if(rst)
q<=4'b0000;

else if(s==2'b00)
q<=q;

else if(s==2'b01)
q<={sin,q[2:0]};

else if(s==2'b10)
q<={q[3:1],sin};

else if(s==2'b11)
q<=din;

end


endmodule
