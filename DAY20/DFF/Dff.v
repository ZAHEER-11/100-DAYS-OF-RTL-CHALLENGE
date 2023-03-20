`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:26 03/20/2023 
// Design Name: 
// Module Name:    Dff 
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
module Dff(
	input d,clk,
	output reg q,qbar
    );
always@(posedge clk)
begin
q=1'b0; qbar=1'b1;



if(clk==1)
begin
if(d==0)
begin
q=1'b0; qbar=1'b1;
end
if(d==1)
begin
q=1'b1; qbar=1'b0;
end
end

if(clk==0)
begin
q=q; qbar=qbar;
end
end


endmodule
