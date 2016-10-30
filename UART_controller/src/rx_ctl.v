module rx_ctl(
    input               clk,
    input               rst,

    input               rd,

    input               bclk,
    input               rxd,

    output  reg [7:0]   dout,
    output              flow_ctl
);

    reg [7:0] rhr  = 0; // Receiver Hold Register.
    reg [7:0] dctr = 0; // Data counter ( for flow control ).

    reg       wr   = 0;
    reg       rd   = 0;


    wire      rx_rdy;
    wire      fifo_full;
    wire      fifo_empty;


    // Receiver Shift Register.
    rs_mod rsr( 
        .rst(rst),
        .bclk(bclk),
        .rxd(rxd),

        .dout(rhr),
        .rx_rdy(rx_rdy)
    );
    // Receiver fifo.
    fifo rx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (rd),
        .wr (wr),
        .din(rhr),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );

endmodule
