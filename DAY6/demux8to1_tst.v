`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:32 02/28/2023
// Design Name:   demux8to1B
// Module Name:   /home/zaheer/RTLchallange/demux8to1_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux8to1B
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux8to1_tst;

	// Inputs
	reg [2:0] s;
	reg i;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	demux8to1B uut (
		.y(y), 
		.s(s), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
		i=1; s=3'd0;
		#100;
		i=0; s=3'd1;
		#100;
		i=1; s=3'd2;
		#100;
		i=0; s=3'd3;
		#100;
		i=1; s=3'd4;
		#100;
		i=0; s=3'd5;
		#100;
		i=1; s=3'd6;
		#100;
		i=0; s=3'd7;
        
		// Add stimulus here

	end
      
endmodule

