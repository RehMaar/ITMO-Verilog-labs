`timescale 1ns / 1ps


module test_time_mode;

	// Inputs
//	reg [26:0] tm_value;
//	reg allow_count;
	reg clk;
	reg [1:0]sw_state;
	// Outputs
	wire fc_clk;
	//wire [4:0]fm_no;
	wire [26:0]tm_value;
	wire allow;
	
	// Instantiate the Unit Under Test (UUT)
	
	sw_mode swm_uut( 
       .sw_state(sw_state),
	    .clk(clk),
	 
       .time_value(tm_value),
       .allow_count(allow_count)
	);
	time_mode tm_uut (
		.tm_value(tm_value), 
		.allow_count(allow_count), 
		.clk(clk), 
		.fc_clk(fc_clk)
	);
	/*
	frame_counter fc_uut(
		.fc_clk(fc_clk),
		.clk(clk),
		
		.fm_no(fm_no)
	);
*/
	initial begin
		// Initialize Inputs
//		tm_value = 0;
//		allow_count = 0;
		clk = 0;
		sw_state[0] = 0;
		sw_state[1] = 0;
		// Wait 100 ns for global reset to finish
		#10
		sw_state[1] = 1;
		
/*
			tm_value = 2000;
			allow_count = 1;
*/
/*
		#1000
		tm_value = 50000000;
		allow_count = 1;
		#1000
		tm_value = 20000000;
		allow_count = 1;
		// Add stimulus here
*/
	end
   always
		#1 clk = !clk;
endmodule

