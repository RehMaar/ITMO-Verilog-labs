/* Generates bauds. */
/* For 9600 bps 8N1 -- (10417) 9600 bauds. */
module baud_gen #(
    parameter BAUDRATE = 100 // 10417
)
(
    input           clk,
    input           rst,

    output   reg     bclk
);
    reg [16:0] ctr  = BAUDRATE;

    always @( posedge clk ) begin
        if( rst ) begin
            ctr = BAUDRATE;
               bclk = 0;
          end
        else begin
            if( ctr == BAUDRATE ) begin
                bclk = 1;
                ctr  = ctr - 16'd1;
            end
            else if( ctr == BAUDRATE/2 ) begin
                bclk = 0;
                ctr  = ctr - 16'd1;
            end
            else if( ctr == 0 )
                ctr = BAUDRATE;
            else
                ctr = ctr - 16'd1;
        end
    end

endmodule
