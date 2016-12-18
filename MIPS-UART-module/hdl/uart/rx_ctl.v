module rx_ctl(
    input               clk,
    input               rst,

    input               bclk,
    input               rx,

    /* Received data. */
    output  [7:0]   dout,
    output          dout_rdy
);
    rx rx_uut( 
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .rx(rx),

        .dout    (dout),
        .dout_rdy(dout_rdy)
    );

    /* Receiver fifo. */
    /*
  fifo rx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (fifo_rd),
        .wr (fifo_wr),
        .din(rx_dout),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );
    */
endmodule
