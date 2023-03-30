`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:51 03/30/2023
// Design Name:   universalshiftB
// Module Name:   /home/zaheer/RTLchallange/universalshiftregister/universalshifB_tst.v
// Project Name:  universalshiftregister
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universalshiftB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module universalshifB_tst;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] s;
	reg [3:0] din;
	reg sin;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	universalshiftB uut (
		.clk(clk), 
		.rst(rst), 
		.s(s), 
		.din(din), 
		.sin(sin), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		s = 0;
		din = 4'b1001;
		sin = 0;

		// Wait 100 ns for global reset to finish
		
		#100;
		// Add stimulus here
		
		rst=1;
		#100;
		rst=0;
		#50;
		s=00; sin=1;
		#50;
		s=01; sin=1; 
		#50;
		s=10; 
		#50;
		s=11; din=4'b1111;
		

	end
      always #10 clk=~clk;
endmodule

