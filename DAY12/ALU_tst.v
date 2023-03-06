`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:56:34 03/07/2023
// Design Name:   ALU
// Module Name:   /home/zaheer/RTLchallange/Arithmeticandlogicalunit/ALU_tst.v
// Project Name:  Arithmeticandlogicalunit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tst;

	// Inputs
	reg [7:0] operand1;
	reg [7:0] operand2;
	reg [3:0] opcode;

	// Outputs
	wire [15:0] result;
	reg [3:0] count=4'd0; //temporary variable

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.operand1(operand1), 
		.operand2(operand2), 
		.opcode(opcode), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		operand1 = 0;
		operand2 = 0;
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
		operand1=8'h55;
		operand2=8'hAA;
		
		for(count=0; count<16; count=count+1)
		begin
		opcode=count;
		#50;
		end
        
		// Add stimulus here

	end
      
endmodule

