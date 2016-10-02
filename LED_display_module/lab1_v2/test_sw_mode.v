`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:27 09/27/2016
// Design Name:   sw_mode
// Module Name:   D:/lab1_v2/lab1_v2/test_sw_mode.v
// Project Name:  lab1_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sw_mode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sw_mode;

	// Inputs
	reg [1:0] sw_state;
	reg clk;

	// Outputs
	wire [26:0] time_value;
	wire allow_count;

	// Instantiate the Unit Under Test (UUT)
	sw_mode uut (
		.sw_state(sw_state), 
		.clk(clk), 
		.time_value(time_value), 
		.allow_count(allow_count)
	);

	initial begin
		// Initialize Inputs
		sw_state = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100
       sw_state = 1;
		#100
		 sw_state = 2;
		#100
		 sw_state = 3;
		// Add stimulus here

	end
   
	always
		#10 clk = !clk;
		
endmodule

