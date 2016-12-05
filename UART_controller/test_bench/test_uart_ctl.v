`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:33 11/21/2016
// Design Name:   uart_ctl
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/test_uart_ctl.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_ctl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_uart_ctl;

	// Inputs
	reg clk;
	reg rst;
	reg rx;
	reg [7:0] din;
	reg tx_en;

	// Outputs
	wire tx;
	wire [7:0] dout;
	wire d_rdy;
	wire bclk;
	// Instantiate the Unit Under Test (UUT)
	baud_gen uut_baud(
		.clk(clk),
		.rst(rst),
		.bclk(bclk)
	);
	// Instantiate the Unit Under Test (UUT)
	uart_ctl uut (
		.clk(clk), 
		.rst(rst), 
		.rx(rx), 
		.din(din), 
		.tx_en(tx_en), 
		.tx(tx), 
		.dout(dout), 
		.d_rdy(d_rdy)
	);
	initial
		forever #10 clk = ~clk;
		
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		rx = 1;
		din = 0;
		tx_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        		#100;
		rst = 0;
		
		// 0 0111 0101 1
		// start
		@( posedge bclk ) rx = 0;
		// data
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 1;
		
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		// stop
		@( posedge bclk ) rx = 1;
		#100
		
		@( posedge clk )
		din = 8'b01110101;
		tx_en = 1;
		@( posedge clk )
		din = 8'd10;
		tx_en = 1;
		@( posedge clk )
		din = 8'd11;
		tx_en = 1;
		@( posedge clk )
		din = 8'd12;
		tx_en = 1;
		@( posedge clk )
		din = 8'd13;
		tx_en = 1;
		@( posedge clk )
		tx_en = 0;
		// Add stimulus here

	end
      
endmodule

