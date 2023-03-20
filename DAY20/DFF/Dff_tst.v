`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:50:13 03/20/2023
// Design Name:   Dff
// Module Name:   /home/zaheer/RTLchallange/Dflipflop/Dff_tst.v
// Project Name:  Dflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dff_tst;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	Dff uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
	always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
	end
	
	initial begin
	
	forever #100 d=~d;
	
	end

		
      
endmodule

