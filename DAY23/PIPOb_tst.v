`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:59:01 03/23/2023
// Design Name:   PIPOb
// Module Name:   /home/zaheer/RTLchallange/PIPO/PIPOb_tst.v
// Project Name:  PIPO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PIPOb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PIPOb_tst;

	// Inputs
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	PIPOb uut (
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
       d=4'b1001;
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

