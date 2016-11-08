module uart_ctl(
    input           clk,
    input           rst,

    input           rx,
//  input           rts,

    input    [7:0]  din,
    input           rd,

    output          tx,
//  output          cts,

    output   [7:0]  dout,
    output          d_rdy
);

    wire    bclk;

    baud_gen baud_gen(
        .clk(clk),
        .rst(rst),

        .bclk(bclk)
    );

    rx_mod rx_mod(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),
        .rx (rx),

        .dout  (dout),
        .rx_rdy(rx_rdy),
        .d_rdy (d_rdy)
    );

    tx_mod tx_mod(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .din(din),
        .en (tx_en),
 //     .cts(cts),

        .tx(tx),
        .tx_rdy(tx_rdy)
    );

endmodule
