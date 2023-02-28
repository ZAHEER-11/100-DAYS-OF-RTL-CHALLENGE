`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:17 02/28/2023 
// Design Name: 
// Module Name:    demux8to1B 
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
module demux8to1B(y,s,i
    );
input i;
input [2:0] s;
output reg [7:0] y;
always@(*)
begin
y=0;
case(s)
3'd0:y[0]=i;
3'd1:y[1]=i;
3'd2:y[2]=i;
3'd3:y[3]=i;
3'd4:y[4]=i;
3'd5:y[5]=i;
3'd6:y[6]=i;
3'd7:y[7]=i;
default:y=8'bx;
endcase
end


endmodule
