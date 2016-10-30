module uart_controller(
    input           clk,
    input           rst,

    input           txd,
    input           cts, /* ? */

    input    [7:0]  din,

    output          rxd,
    output          rts, /* ? */

    output   [7:0]  dout
);

    wire    bclk;
    wire    flow_ctl;

    baud_gen baud_gen(
        .clk(clk),
        .rst(rst),

        .bclk(bclk)
    );

    rx_ctl rx_ctl(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .rd  (rd), // allow reading.
        .rxd (rxd),
        .en(en_rx),

        .dout(dout),
        .rts (rts)
    );

    tx_ctl tx_ctl(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .din (din),
        .en(en_tx),
        .cts(cts),

        .txd(txd),
        .tx_rdy(tx_rdy)
    );

endmodule
