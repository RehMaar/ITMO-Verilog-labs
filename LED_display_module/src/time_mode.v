// Module counts time of changing frame
// and sends fc signal to frame_counter module.
// If fc == 1 then frame_counter is incremeted
// and new frame goes on LEDs. Otherwise, nothing
// is happened.
module time_mode(

    input           clk,
    input           rst,
    input  [26:0]   tm_value,
    input           count_en,
    output          fc
);


    reg [26:0] tm_counter;

    assign fc =  count_en & ( tm_counter ==  tm_value ? 1 : 0 );

    always @( posedge clk ) begin
        if( rst )
            tm_counter <= 0;
        else if( tm_counter >= tm_value )
            tm_counter <= 0;
        else
            tm_counter <= tm_counter + 27'd1;
    end

endmodule


