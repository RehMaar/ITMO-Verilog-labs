`timescale 1ns / 1ps

module switches( 
    input sw0,
    input sw1,

    output [1:0]sw_state
);
    assign [1:0]sw_state = { sw0, sw1 };
endmodule

// Module chooses time for animation speed.
module sw_mode( 
    input  [1:0]sw_state,

    output [26:0]time_value,
    output allow_count
);

    reg [26:0] time_reg;
    assign time_value = time_reg;

    or test_sw_state( allow_count, sw_state[0], sw_state[1]);

    always @* begin
        case( sw_state )
            0: time_reg <= 0;
            1: time_reg <= 100000000; // 1000 ms
            2: time_reg <= 50000000;  // 500  ms
            3: time_reg <= 20000000;  // 200  ms
        endcase
    end
endmodule

// Module counts time of changing frame
// and sends fc_clk signal to frame_counter module.
// If fc_clk == 1 then frame_counter is incremeted
// and new frame goes on LEDs. Otherwise, nothing
// is happened.
module time_mode(

    input  [26:0]time_value,
    input  allow_count,
    input  clk,
    // clock for frame counter
    output fc_clk
);

    reg [26:0] t_buffer = 0;
    reg [26:0] t_counter = 0;
    reg fc_reg;

    assign time_value =t_buffer;
    assign fc_clk = fc_reg;
    // TODO: Need send signal, not set to high or low lvl.
    always @( posedge clk ) begin
       if( allow_count ) begin              // If count is allowed
            if(t_counter == 0 ) begin       // and counter is zero
                t_counter <= t_buffer;      // refresh counter,
                fc_reg <= 1;                // and send fc_clk signal.
            end
            else                            // otherwise,
                t_counter <= t_counter - 1; // decrement counter.
       end
       else begin                           // If count isn't allowed
            fc_reg <= 0;                    // switch to STOP-mode.
       end
/*
       if( time_value == 0 ) // stop mode
           fc_reg <= 0;
       else begin
            time_counter <= time_counter - 27'b1;
            if( time_counter == 0 )
                fc_reg <= 1;
            else
                fc_reg <= 0;
       end
*/
    end


endmodule

// On fc_clk refresh frame.
module frame_counter(
    input fc_clk,

    output [4:0]fm_no
);

    reg [4:0]counter;
    assign fm_no = counter;
   // assign counter = 0;
   // assign frame = 0;

    always @( posedge fc_clk ) begin
        counter <= counter + 1;
    end

endmodule

// Input: frame counter
// Return: next frame
module next_frame (
    input  [4:0]fm_no,

    output reg [15:0]frame
);

always@( posedge fm_no[0], posedge fm_no[1], posedge fm_no[2], posedge fm_no[3] )
    case( fm_no )
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




// Common block
module animation( 
    input  sw0,
    input  sw1,
    input  clk,

    output [15:0]frame
);

    wire [26:0] time_val;
    wire fc_clk;
    wire fm_no;
    wire [1:0]sw_state;
    wire rst_time;

    switches switches(
        .sw0(sw0),
        .sw1(sw1),

        .sw_state(sw_state)
    );

    sw_mode sw_mode( 
        .sw_state(sw_state),

        .time_value(time_val),
        .rst_time(rst_time)
    );

    time_mode time_mode(
        .time_value(time_val),
        .rst_time(rst_time),
        .clk(clk),

        .fc_clk(fc_clk)
    );

    frame_counter frame_counter(
        .fc_clk(fc_clk),

        .fm_no(fm_no)
    );

    next_frame next_frame(
        .fm_no(fm_no),

        .frame(frame)
    );

endmodule
