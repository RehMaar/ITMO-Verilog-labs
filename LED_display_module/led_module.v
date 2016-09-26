// Describe module
module switches (
    input  sw0,
    input  sw1.

    output [1:0]sw_state
);

assign sw = { sw0, sw1 };

endmodule

// Input: frame counter
// Return: next frame
module next_frame (
    input  [4:0]fm_counter,

    output [15:0]frame
);

always@( posedge fm_counter )
    case( fm_counter )
         0: frame <= 32'b0000000000000000;
         1: frame <= 32'b1000000000000000;
         2: frame <= 32'b1100000000000000;
         3: frame <= 32'b1110000000000000;
         4: frame <= 32'b1111000000000000;
         5: frame <= 32'b1111100000000000;
         6: frame <= 32'b1111110000000000;
         7: frame <= 32'b1111111000000000;
         8: frame <= 32'b1111111100000000;
         9: frame <= 32'b1111111110000000;
        10: frame <= 32'b1111111111000000;
        11: frame <= 32'b1111111111100000;
        12: frame <= 32'b1111111111110000;
        13: frame <= 32'b1111111111111000;
        14: frame <= 32'b1111111111111100;
        15: frame <= 32'b1111111111111110;
        16: frame <= 32'b1111111111111111;
        17: frame <= 32'b1111111111111110;
        18: frame <= 32'b1111111111111100;
        19: frame <= 32'b1111111111111000;
        20: frame <= 32'b1111111111110000;
        21: frame <= 32'b1111111111100000;
        22: frame <= 32'b1111111111000000;
        23: frame <= 32'b1111111110000000;
        24: frame <= 32'b1111111100000000;
        25: frame <= 32'b1111111000000000;
        26: frame <= 32'b1111110000000000;
        27: frame <= 32'b1111100000000000;
        28: frame <= 32'b1111000000000000;
        29: frame <= 32'b1110000000000000;
        30: frame <= 32'b1100000000000000;
        31: frame <= 32'b1000000000000000;
    endcase

endmodule


// Module chooses time for animation speed.
module sw_mode( 
    input  [1:0]sw_state,

    output [26:0]time_value
);

always @( posedge sw_state )
    case( sw_state )
        0: time_value <= 0;
        1: time_value <= 100000000; // 1000 ms
        2: time_value <= 50000000;  // 500  ms
        3: time_value <= 20000000;  // 200  ms
    endcase

endmodule

// Module counts time of changing frame
// and sends fc_clk signal to frame_counter module.
// If fc_clk == 1 then frame_counter is incremeted
// and new frame goes on LEDs. Otherwise, nothing
// is happened.
module time_mode(

    input  [26:0]time_value,
    input  clk,
    // clock for frame counter
    output fc_clk
);

    reg [26:0] time_counter;

    assign time_counter = 0;

    always @( posedge clk ) begin
       if( time_value == 0 ) // stop mode
           fc_clk = 0;
       else begin
            time_counter <= time_counter - 1;
            if( time_counter == 0 )
                fc_clk = 1;
            else
                fc_clk = 0;
       end
    end
    // If time_value is changed refresh time_counter.
    // correct on reg?
    always @( posedge time_value )
        time_counter <= time_value;

endmodule

// On fc_clk refresh frame.
module frame_counter(
    input fc_clk,

    output [4:0]frame
);

    reg [4:0]counter;

    assign counter = 0;
    assign frame = 0;

    always @( posedge fc_clk ) begin
        counter <= counter + 1;
        frame <= counter;
    end

endmodule

// Common block
module animation( 
    input  sw0,
    input  sw1,
    input  clk,

    output [15:0]frame
);

reg [1:0]sw_state;

switches switches( 
    .sw0(sw0)
    .sw1(sw1)
    .sw_state(sw_state)
);

endmodule
