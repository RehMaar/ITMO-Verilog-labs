module next_frame(
    input           clk,
    input           rst,
    input           fc,
    output [15:0]   led
);
   reg [16:0] frame;
   reg state;

   assign led = frame;

   always@( posedge clk ) begin
      if( rst )
        begin
         frame <= 0;
         state <= 0;
        end
      else if( fc ) begin
         if( frame[0] == 1 )
            state <= 1;
         else if( frame[15] == 0 )
            state <= 0;

         case( state  )
            0 : begin   //Straight
               frame <= { 1, frame[15:0] } >> 1;
            end
            1 :         // Reverse
               frame <= frame << 1;
         endcase
        end
   end
endmodule
