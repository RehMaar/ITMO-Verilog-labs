/* Generates bauds. */
/* For 9600 bps 8N1 -- (10417) 9600 bauds. */
module baud_gen #(
    parameter BAUDRATE = 9600
)
(
    input           clk,
    input           rst,

    output   reg     bclk
);
    reg [16:0] ctr  = BAUDRATE;

    always @( posedge clk ) begin
		  if( rst )
				ctr <= BAUDRATE;
				
        if( ctr == BAUDRATE )
            bclk <= 1;
        else if( ctr == BAUDRATE/2 )
            bclk <= 0;

        if( ctr == 0 )
            ctr <= BAUDRATE;
        else
            ctr <= ctr - 16'd1;
    end

endmodule
