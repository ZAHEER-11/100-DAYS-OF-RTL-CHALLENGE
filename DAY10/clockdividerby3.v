`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:13:12 03/05/2023 
// Design Name: 
// Module Name:    clockdividerby3 
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
//////////////////////////////////// //////////////////////////////////////////////
module clockdividerby3(clk,rst,by3,Q0,Q1,Q2
    );
input clk,rst;
output by3,Q0,Q1;
output reg Q2;
reg [1:0] b;
always @(posedge clk)
begin
if(rst)
begin
b=0;
end
else
begin
b=b+2'b01;
   if(b==2'b11)
   b=2'b00;
end
end
assign Q0=b[0];
assign Q1=b[1];


always @(negedge clk) //for 50% dutycycle of by3
begin
if(rst)
begin
Q2=4'b0000;
end
else
Q2=Q1;
end
assign by3=Q2|Q1;
endmodule
