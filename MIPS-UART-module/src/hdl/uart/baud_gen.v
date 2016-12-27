/* Generates bauds. */
/* For 9600 bps 8N1 -- (10417) 9600 bauds. */
module baud_gen #(
    parameter BAUDRATE = 1042 // 10417
)
(
    input           clk,
    input           rst,

    output           bclk
);
    reg [16:0] ctr = BAUDRATE;

    assign bclk = (ctr == BAUDRATE ) ? 1 : 0;

    always @( posedge clk ) begin
        if( rst ) begin
            ctr  <= BAUDRATE;
         end
        else begin
            if( ctr == 0 )
                ctr <= BAUDRATE;
            else
                ctr <= ctr - 16'd1;
        end
    end

endmodule
