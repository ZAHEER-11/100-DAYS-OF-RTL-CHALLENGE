`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:15 03/23/2023
// Design Name:   PISOb
// Module Name:   /home/zaheer/RTLchallange/PISO/PISOb_tst.v
// Project Name:  PISO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PISOb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PISOb_tst;

	// Inputs
	reg clk;
	reg [3:0] d;
	reg mode;

	// Outputs
	wire so;

	// Instantiate the Unit Under Test (UUT)
	PISOb uut (
		.clk(clk), 
		.d(d), 
		.mode(mode), 
		.so(so)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 4'b1001;
		mode = 1;

		#10;
		mode=0;
  

	end
      always #5 clk=~clk;
		
endmodule

