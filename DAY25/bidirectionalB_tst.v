`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:05:01 03/28/2023
// Design Name:   bidirectionalB
// Module Name:   /home/zaheer/RTLchallange/bidirectional/bidirectionalB_tst.v
// Project Name:  bidirectional
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bidirectionalB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bidirectionalB_tst;

	// Inputs
	reg clk;
	reg rst;
	reg dir;
	reg d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	bidirectionalB uut (
		.clk(clk), 
		.rst(rst), 
		.dir(dir), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		dir = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst=0; dir=1; d=0;

	end
      always #10 clk=~clk;
		
endmodule

