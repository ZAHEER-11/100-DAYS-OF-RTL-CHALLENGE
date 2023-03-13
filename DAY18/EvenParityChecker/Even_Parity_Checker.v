`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:01 03/13/2023 
// Design Name: 
// Module Name:    Even_Parity_Checker 
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
module Even_Parity_Checker(output P,input A,B,C,Even
    );
assign P=A^B^C^Even;

endmodule
