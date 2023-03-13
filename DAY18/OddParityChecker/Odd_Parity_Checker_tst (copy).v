`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:17 03/13/2023
// Design Name:   Odd_Parity_Checker
// Module Name:   /home/zaheer/RTLchallange/Paritychecker/Odd_Parity_Checker_tst.v
// Project Name:  Paritychecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Odd_Parity_Checker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Odd_Parity_Checker_tst;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg Odd;

	// Outputs
	wire P;
	reg [15:0] i;

	// Instantiate the Unit Under Test (UUT)
	Odd_Parity_Checker uut (
		.P(P), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Odd(Odd)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		Odd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		for(i=0;i<16;i=i+1)
		begin
		{A,B,C,Odd}=i;
		#100;
		end
        
		// Add stimulus here

	end
      
endmodule

