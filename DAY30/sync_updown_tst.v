`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:54 04/07/2023
// Design Name:   sync_updown
// Module Name:   /home/zaheer/RTLchallange/synchronouscounters/sync_updown_tst.v
// Project Name:  synchronouscounters
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sync_updown
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sync_updown_tst;

	// Inputs
	reg clk;
	reg rst;
	reg updown;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	sync_updown uut (
		.clk(clk), 
		.rst(rst), 
		.updown(updown), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst =1;
		updown = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		rst=0; updown=0;
		#100;
		updown=1;

	end
     always #5 clk=~clk; 
endmodule

