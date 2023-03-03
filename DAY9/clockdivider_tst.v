`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:37:02 03/03/2023
// Design Name:   clockdivider
// Module Name:   /home/zaheer/RTLchallange/clockdivider_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockdivider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clockdivider_tst;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire by2;
	wire by4;
	wire by8;

	// Instantiate the Unit Under Test (UUT)
	clockdivider uut (
		.by2(by2), 
		.by4(by4), 
		.by8(by8), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#30;
      rst=1;
		end
		always 
		#10 clk=~clk;
		// Add stimulus here
      
endmodule

