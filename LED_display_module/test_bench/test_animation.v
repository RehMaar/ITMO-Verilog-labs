`timescale 1ns / 1ps

module test_animation;

    // Inputs
    reg clk;
    reg rst;
    reg sw0;
    reg sw1;

    // Outputs
    wire [15:0] led;

    animation uut (
        .clk(clk), 
        .rst(rst), 
        .sw0(sw0), 
        .sw1(sw1), 
        .led(led)
    );

    initial begin
        forever 
            #10 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst = 0;
        sw0 = 0;
        sw1 = 0;

        #10;
        rst = 1;
        #10
        rst = 0;
        #100;
        sw0 = 1;
        #1000;
        sw1 = 1;
        #1000
        sw0 = 0;
        sw1 = 1;

    end
endmodule

