// Input: frame counter
// Return: next frame
/*
module next_frame (
    input           clk,
    input           rst,
    input  [4:0]    fm_no,
    output [15:0]   led
);

    reg [15:0] frame;

    assign led = frame;

    always@( posedge clk )
        if( rst )
            frame <= 0;
        else
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

*/

module next_frame(
    input           clk,
    input           rst,
    input           fc, // Fix?
    output [15:0]   led    
);

   localparam STRAIGHT = 0;
   localparam REVERSE  = 1;

   reg [15:0] frame;
   reg state;

   assign led = frame;

   always@( posedge clk ) begin
      if( rst ) begin
         frame <= 0;
         state <= 0;
      end
		else if( fc ) begin
			if( frame[0] == 1 )
            state <= 0;
         else if( frame[15] == 0 )
            state <= 1;
      end

      case( state  )
         STRAIGHT : begin
            frame     <= frame >> 1;
            frame[15] <= 1;
         end
         REVERSE  :
            frame <= frame << 1;
      endcase
    end
endmodule
