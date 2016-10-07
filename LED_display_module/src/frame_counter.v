// On fc refresh frame.
module frame_counter(
    input           clk,
    input           rst,
    input           fc,
    output [4:0]    fm_no
);

    reg [4:0]counter = 0;
    assign fm_no = counter;

    always @( posedge clk ) begin
        if( rst )
            counter <= 0;
        else if( fc == 1 )
            counter <= counter + 5'b00001;
    end

endmodule


