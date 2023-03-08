`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:14 03/08/2023 
// Design Name: 
// Module Name:    BCDtoSevensegment 
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
module BCDtoSevensegment(bcd,sseg

    );
input [3:0] bcd;
output reg [6:0] sseg;
always @(bcd)
begin
case(bcd)
4'b0000:sseg=7'b1111110;
4'b0001:sseg=7'b0110000;
4'b0010:sseg=7'b1101101;
4'b0011:sseg=7'b1111001;
4'b0100:sseg=7'b0110011;
4'b0101:sseg=7'b1011011;
4'b0110:sseg=7'b1011111;
4'b0111:sseg=7'b1110000;
4'b1000:sseg=7'b1111111;
4'b1001:sseg=7'b1111011;
default:sseg=7'b0000000;
endcase
end

endmodule
