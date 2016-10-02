`timescale 1ns / 1ps

module switches( 
    input sw0,
    input sw1,

    output [1:0]sw_state
);
    assign sw_state = { sw0, sw1 };
endmodule

// Module chooses time for animation speed.
module sw_mode( 
    input  [1:0]sw_state,
	 input   clk,
	 
    output [26:0]time_value,
    output allow_count
);

    reg [26:0] time_reg;
    assign time_value = time_reg;

    or test_sw_state( allow_count, sw_state[0], sw_state[1]);

    always @( posedge clk ) begin
        case( sw_state )
            0: time_reg <= 0;
            1: time_reg <= 10000; // 100000000; // 1000 ms
            2: time_reg <= 5000; // 50000000;  // 500  ms
            3: time_reg <= 2000; //20000000;  // 200  ms
        endcase
	 end
endmodule

// Module counts time of changing frame
// and sends fc_clk signal to frame_counter module.
// If fc_clk == 1 then frame_counter is incremeted
// and new frame goes on LEDs. Otherwise, nothing
// is happened.
module time_mode(

    input  [26:0]tm_value,
    input  allow_count,
    input  clk,
    // clock for frame counter
    output fc_clk
);


	reg [26:0] tm_counter = 0;
	wire tm_cmp =  tm_counter == 0 ? 1 : 0;
	
	and (fc_clk, allow_count, tm_cmp); 

	always @( clk ) begin
			if( tm_counter == 0 )
				tm_counter <= tm_value;
			else
			   tm_counter <= tm_counter - 1'b1;
	end

endmodule

// On fc_clk refresh frame.
module frame_counter(
    input fc_clk,
	 input clk,

    output [4:0]fm_no
);

    reg [4:0]counter = 0;
    assign fm_no = counter;

    always @( posedge clk ) begin
        if( fc_clk == 1 )
				counter <= counter + 5'b00001;
    end

endmodule

// Input: frame counter
// Return: next frame
module next_frame (
    input  [4:0]fm_no,
	 input  clk,
	 
    output [15:0]led
);

	reg [15:0] frame = 0;
	
	assign led = frame;

	always@( posedge clk )
		case( fm_no )
				0: frame <= 16'b0000000000000000;
				1: frame <= 16'b1000000000000000;
				2: frame <= 16'b1100000000000000;
				3: frame <= 16'b1110000000000000;
				4: frame <= 16'b1111000000000000;
				5: frame <= 16'b1111100000000000;
				6: frame <= 16'b1111110000000000;
				7: frame <= 16'b1111111000000000;
				8: frame <= 16'b1111111100000000;
				9: frame <= 16'b1111111110000000;
				10: frame <= 16'b1111111111000000;
				11: frame <= 16'b1111111111100000;
				12: frame <= 16'b1111111111110000;
				13: frame <= 16'b1111111111111000;
				14: frame <= 16'b1111111111111100;
				15: frame <= 16'b1111111111111110;
				16: frame <= 16'b1111111111111111;
				17: frame <= 16'b1111111111111110;
				18: frame <= 16'b1111111111111100;
				19: frame <= 16'b1111111111111000;
				20: frame <= 16'b1111111111110000;
				21: frame <= 16'b1111111111100000;
				22: frame <= 16'b1111111111000000;
				23: frame <= 16'b1111111110000000;
				24: frame <= 16'b1111111100000000;
				25: frame <= 16'b1111111000000000;
				26: frame <= 16'b1111110000000000;
				27: frame <= 16'b1111100000000000;
				28: frame <= 16'b1111000000000000;
				29: frame <= 16'b1110000000000000;
				30: frame <= 16'b1100000000000000;
				31: frame <= 16'b1000000000000000;
    endcase

endmodule

// Common block
module animation( 
    input  sw0,
    input  sw1,
    input  clk,

    output [15:0]led
);

    wire [26:0] time_val;
    wire fc_clk;
    wire [4:0]fm_no;
    wire [1:0]sw_state;
	 wire allow_count;
	 
    switches switches(
        .sw0(sw0),
        .sw1(sw1),

        .sw_state(sw_state)
    );

    sw_mode sw_mode( 
        .sw_state(sw_state),
		  .clk(clk),
		  
        .time_value(time_val),
        .allow_count(allow_count)
    );

    time_mode time_mode(
        .tm_value(time_val),
        .allow_count(allow_count),
        .clk(clk),

        .fc_clk(fc_clk)
    );

    frame_counter frame_counter(
        .fc_clk(fc_clk),
		  .clk(clk),
		  
        .fm_no(fm_no)
    );

    next_frame next_frame(
        .fm_no(fm_no),
		  .clk(clk),

        .led(led)
    );

endmodule
