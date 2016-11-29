`timescale 1ns / 1ps
module test_fifo;

    // Inputs
    reg rst;
    reg clk;
    reg rd;
    reg wr;
    reg [7:0] din;

    // Outputs
    wire full;
    wire empty;
    wire [7:0] dout;

    // Instantiate the Unit Under Test (UUT)
    fifo #(4,8) uut(
        .rst(rst), 
        .clk(clk), 
        .rd(rd), 
        .wr(wr), 
        .din(din), 
        .full(full), 
        .empty(empty), 
        .dout(dout)
    );
    initial
        forever
            #10 clk = ~clk;
            
    initial begin
        // Initialize Inputs
        rst = 0;
        clk = 0;
        rd = 0;
        wr = 0;
        din = 0;

        #20;
        rst = 1;
        #20;
         
			rst = 0;
        #20;
        din = 8'd3;
        wr  = 1;
        #20;
        wr = 0;
        #20;
        din = 8'd7;
        wr  = 1;
        #20;
        wr = 0;
        #20;
        din = 8'd1;
        wr  = 1;
        #20;
        wr = 0;
        #20;
        din = 8'd2;
        wr  = 1;
        #20;
        wr = 0;
        #20;
        din = 8'd5;
        wr  = 1;
        #20;
        wr = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
        #20; rd = 1; #20; rd = 0;
		   #20;
			wr  = 1;
        #20;
        wr = 0;
    end
endmodule
