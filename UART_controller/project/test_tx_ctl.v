`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:52:28 11/25/2016
// Design Name:   tx_ctl
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/test_tx_ctl.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tx_ctl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tx_ctl;

	// Inputs
	reg clk;
	reg rst;

	reg [7:0] din;
	reg tx_en;

	// Outputs
	wire txd;
	wire tx_rdy;
	wire bclk;
	
	// Instantiate the Unit Under Test (UUT)
	
	baud_gen uut_baud(
		.clk(clk),
		.rst(rst),
		.bclk(bclk)
	);
	
	tx_ctl uut (
		.clk(clk), 
		.rst(rst), 
		.bclk(bclk), 
		.din(din), 
		.tx_en(tx_en), 
		.txd(txd), 
		.tx_rdy(tx_rdy)
	);

	initial begin
		// Initialize Inputs
		clk   = 0;
		rst   = 1;
		din   = 0;
		tx_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#10;
		
		
        
		// Add stimulus here

	end
      
endmodule

