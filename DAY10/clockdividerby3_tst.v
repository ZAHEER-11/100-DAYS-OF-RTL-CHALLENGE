`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:00:00 03/05/2023
// Design Name:   clockdividerby3
// Module Name:   /home/zaheer/RTLchallange/clockdividerby3_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockdividerby3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clockdividerby3_tst;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire by3;
	wire Q0;
	wire Q1;
	wire Q2;

	// Instantiate the Unit Under Test (UUT)
	clockdividerby3 uut (
		.clk(clk), 
		.rst(rst), 
		.by3(by3), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100; rst=0;
		end
		always 
		#50 clk=~clk;
		
        
		// Add stimulus here

      
endmodule

