`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:23 03/20/2023 
// Design Name: 
// Module Name:    Tff 
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
module Tff(
   input t,clk,
	output reg q,qbar
    );
always@(posedge clk)
begin
q=1'b0; qbar=1'b1;



if(clk==1)
begin
if(t==0)
begin
q=1'b1; qbar=1'b0;
end
if(t==1)
begin
q=1'b0; qbar=1'b1;
end
end

if(clk==0)
begin
q=q; qbar=qbar;
end
end


endmodule
