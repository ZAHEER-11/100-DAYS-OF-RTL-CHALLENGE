`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:55 02/26/2023
// Design Name:   FullsubtractorD
// Module Name:   /home/zaheer/RTLchallange/Fullsubtractor_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullsubtractorD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fullsubtractor_tst;

	// Inputs
	reg P;
	reg Q;
	reg Bin;

	// Outputs
	wire D;
	wire Bout;

	// Instantiate the Unit Under Test (UUT)
	FullsubtractorD uut (
		.D(D), 
		.Bout(Bout), 
		.P(P), 
		.Q(Q), 
		.Bin(Bin)
	);

	initial begin
		// Initialize Inputs
		P = 0;
		Q = 0;
		Bin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		P = 0;Q = 0;Bin = 1;
		#100;
		P = 0;Q = 1;Bin = 0;
		#100;
		P = 0;Q = 1;Bin = 1;
		#100;
		P = 1;Q = 0;Bin = 0;
		#100;
		P = 1;Q = 0;Bin = 1;
		#100;
		P = 1;Q = 1;Bin = 0;
		#100;
		P = 1;Q = 1;Bin = 1;
        
		// Add stimulus here

	end
      
endmodule

