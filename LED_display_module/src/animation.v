`timescale 1ns / 1ps
// Common block
module animation( 
    input           clk,
    input           rst,
    input           sw0,
    input           sw1,

    output [15:0]   led
);

    wire [26:0] time_val;
    wire fc;
    //    wire [4:0]fm_no;
    wire [1:0]sw_state;
    wire count_en;

    switches switches(
        .sw0(sw0),
        .sw1(sw1),

        .sw_state(sw_state)
    );

    sw_mode sw_mode( 
        .clk(clk),
        .rst(rst),
        .sw_state(sw_state),

        .tm_value(time_val),
        .count_en(count_en)
    );

    time_mode time_mode(
        .clk(clk),
        .rst(rst),
        .tm_value(time_val),
        .count_en(count_en),

        .fc(fc)
    );

/*
    frame_counter frame_counter(
        .clk(clk),
        .rst(rst),
        .fc(fc),

        .fm_no(fm_no)
    );
*/
    next_frame next_frame(
        .clk(clk),
        .rst(rst),
//       .fm_no(fm_no),
        .fc(fc),         

        .led(led)
    );

endmodule
