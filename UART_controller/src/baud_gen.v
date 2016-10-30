/* Generates bauds. */
/* For 9600 bps 8N1 -- (10417) 9600 bauds. */
module baud_gen #(
    parameter BAUDRATE = 9600
)
(
    input           clk,
    input           rst,
//    input   [7:0]   dll, /* DLL & DLH is 32x. */
//    input   [7:0]   dlh,

    output          bclk
);
    //wire [16:0]  divisor = { dll, dlh };
    reg  [16:0]  ctr     = 0;

    assign bclk = ctr == BAUDRATE;

    always @( posedge clk, posedge rst ) begin
        if( rst )
            ctr <= 0;
        else if( ctr == BAUDRATE)
            ctr <= 0;
        else
            ctr <= ctr + 16'd1;
    end

endmodule
