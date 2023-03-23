`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:27:47 03/23/2023
// Design Name:   SISOb
// Module Name:   /home/zaheer/RTLchallange/SISO/SISOb_tst.v
// Project Name:  SISO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SISOb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SISOb_tst;

	// Inputs
	reg clk;
	reg si;

	// Outputs
	wire so;

	// Instantiate the Unit Under Test (UUT)
	SISOb uut (
		.clk(clk), 
		.si(si), 
		.so(so)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		si = 1;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		si=0;
		#10;
		si=0;
		#10;
		si=1;

	end
	always #5 clk=~clk;
      
endmodule

