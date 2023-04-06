`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:19:18 04/06/2023
// Design Name:   ripple_updown
// Module Name:   /home/zaheer/RTLchallange/Asychronousupcounter/ripple_updown_tst.v
// Project Name:  Asychronousupcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_updown
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_updown_tst;

	// Inputs
	reg clk;
	reg rst;
	reg up_down;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	ripple_updown uut (
		.clk(clk), 
		.rst(rst), 
		.up_down(up_down), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		up_down = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		rst=0; up_down=0;
		#160;
		rst=0; up_down=1;

	end
      always #5 clk=~clk;
endmodule

