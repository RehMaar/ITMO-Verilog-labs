`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:54 11/21/2016
// Design Name:   tx_mod
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/test_tx_mod.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tx_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tx;

	// Inputs
	reg clk;
	reg rst;
	//reg bclk;
	reg [7:0] din;
	reg en;

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


	// Instantiate the Unit Under Test (UUT)
	tx uut (
		.clk(clk), 
		.rst(rst), 
		.bclk(bclk), 
		.din(din), 
		.din_rdy(en), 
		.txd(txd), 
		.tx_rdy(tx_rdy)
	);

	initial
		forever #10 clk = ~clk;
		
	always @( posedge tx_rdy )
		en = 0;
		
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
	
		din = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		@( posedge bclk ) 
				din = 8'b01110101;
				en = 1;
		@( posedge bclk ) 
				din = 8'b00000001;
				en = 1;

		// Add stimulus here

	end
      
endmodule

