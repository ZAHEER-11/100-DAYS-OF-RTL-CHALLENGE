`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:12 03/30/2023
// Design Name:   Ripple_up_counter
// Module Name:   /home/zaheer/RTLchallange/Asychronousupcounter/Ripple_up_counter_tst.v
// Project Name:  Asychronousupcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_up_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_up_counter_tst;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Ripple_up_counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10;
		// Add stimulus here
		 clk=1; rst=0;


	end
      always #5 clk=~clk;
endmodule

