`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:16 02/27/2023
// Design Name:   Mux8by1B
// Module Name:   /home/zaheer/RTLchallange/Mux8by1_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux8by1B
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux8by1_tst;

	// Inputs
	reg [2:0] s;
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;

	// Outputs
	wire out;
	
	//temporary variable
	reg [2:0] c=3'd0;

	// Instantiate the Unit Under Test (UUT)
	Mux8by1B uut (
		.out(out), 
		.s(s), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		s=3'd0;
		i0=8'd0;
		i1=8'd1;
		i2=8'd2;
		i3=8'd3;
		i4=8'd4;
		i5=8'd5;
		i6=8'd6;
		i7=8'd7;
        
		//Input generation by selecting the selection lines
for(c=0;c<8;c=c+1'b1)
begin
s=c;
#20;
end

	end
      
endmodule

