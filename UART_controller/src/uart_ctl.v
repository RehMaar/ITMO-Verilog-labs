module uart_ctl(
    input           clk,
    input           rst,

    input           rx,
//  input           rts,

    // Data to send.
    input    [7:0]  din,
    // Enable transmission ( data ready ).
    input           tx_en,

    // Transmission wire.
    output          tx,
//  output          cts,

    // Received data.
    output   [7:0]  dout,
    // Receive ends; data ready.
    output          d_rdy,
    // Controller ready for transmission.
    output          tx_rdy
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
        .rxd (rx),

        .dout  (dout),
        .d_rdy (d_rdy)
    );

    tx_ctl tx_ctl(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .din(din),
        .tx_en (tx_en),

        .txd(tx),
        .tx_rdy(tx_rdy)
    );

endmodule
