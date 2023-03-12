`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:23:14 03/12/2023
// Design Name:   Mag_Comp_4bit
// Module Name:   /home/zaheer/RTLchallange/Comparator/Mag_Comp_4bit_tst.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mag_Comp_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mag_Comp_4bit_tst;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire Y1;
	wire Y2;
	wire Y3;

	// Instantiate the Unit Under Test (UUT)
	Mag_Comp_4bit uut (
		.A(A), 
		.B(B), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A=10;
		B=11;
		
		#100;
		
		A=10;
		B=10;
		
		#100;
		
		A=11;
		B=10;
		
		#100;

	end
      
endmodule

