module tx_ctl(
    input           clk,
    input           rst,

    inout           bclk,
    input   [7:0]   din,
    input           en,
    input           cts,

    output          txd,
    output  reg     tx_rdy  // 0 -- in process of transmission, 1 otherwise.
);

    reg         wr = 0;
    reg         rd = 0;

    wire        tx_rdy;

    tx_mod tx_mod(
        .clk(clk),
        .rst(rst),

        .bclk(bclk),
        .din(din),
        .en(en),    // enable transmission.

        .txd(txd),
        .tx_rdy(tx_rdy)
    );

    fifo tx_fifo(
        .clk(clk),
        .rst(rst),
        .rd (rd),
        .wr (wr),
        .din(din),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );

endmodule
