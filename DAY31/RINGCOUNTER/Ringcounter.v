`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:33 04/07/2023 
// Design Name: 
// Module Name:    Ringcounter 
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
module Ringcounter(
    input clk,rst,
	 output reg [3:0]q
    );
always@(posedge clk)
begin


if(rst)
begin
q<=4'b0001;
end

else
begin
q<={q[0],q[3:1]};
end

end

endmodule
