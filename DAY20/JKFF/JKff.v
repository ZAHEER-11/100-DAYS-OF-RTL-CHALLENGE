`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:46 03/20/2023 
// Design Name: 
// Module Name:    JKff 
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
module JKff(
	 input j,k,clk,
	 output reg q,qbar
    );
always@(posedge clk)
begin
q=1'b0; qbar=1'b1;

if(clk==0) 
begin
q=q; qbar=qbar;
end

if(clk==1)
begin
if(j==0 && k==0)
begin
q=q; qbar=qbar;
end
else if(j==0 && k==1)
begin
q=1'b0; qbar=1'b1;
end
else if(j==1 && k==0)
begin
q=1'b1; qbar=1'b0;
end
else if(j==1 && k==1)
begin
q=~q; qbar=~qbar;
end
end
end


endmodule
