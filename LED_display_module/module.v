`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:21 09/26/2016 
// Design Name: 
// Module Name:    module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


// Module chooses time for animation speed.
module sw_mode( 
	 
    input  sw0,
    input  sw1,

	output [26:0]time_value
);

	reg [26:0] time_reg;
	assign time_value = time_reg;
	wire [1:0]sw_state = { sw0, sw1 };
	
always @( posedge sw_state[0], posedge sw_state[1] )
    case( sw_state )
        0: time_reg <= 0;
        1: time_reg <= 100000000; // 1000 ms
        2: time_reg <= 50000000;  // 500  ms
        3: time_reg <= 20000000;  // 200  ms
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

    reg [26:0] time_counter = 0;
    reg fc_reg;
  //  assign time_counter = 0;
	
	 assign fc_clk = fc_reg;
    always @( posedge clk ) begin
       if( time_value == 0 ) // stop mode
           fc_reg <= 0;
       else begin
            time_counter <= time_counter - 27'b1;
            if( time_counter == 0 )
                fc_reg <= 1;
            else
                fc_reg <= 0;
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
	
	sw_mode sw_mode( 
		.sw0(sw0),
		.sw1(sw1),
	 
		.time_value(time_val)
	);

	time_mode time_mode(
		.time_value(time_val),
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
