`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:51 03/20/2023
// Design Name:   Tff
// Module Name:   /home/zaheer/RTLchallange/Dflipflop/Tff_tst.v
// Project Name:  Dflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Tff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Tff_tst;

	// Inputs
	reg t;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	Tff uut (
		.t(t), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
	always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		t = 0;
		clk = 0;
	end

		initial begin
		
		forever #100 t=~t;
		
		end
      
endmodule

