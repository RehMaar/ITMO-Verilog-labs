module uart_ctl(
    input           clk,
    input           rst,

    /* I/O buses. */
    input           rx,

    /* Data to send. */
    input    [7:0]  din,
    /* Data to send is ready. */
    input           din_rdy,

    output          tx,
    /* Received data. */
    output   [7:0]  dout,
    /* Receive ends; data ready. */
    output          dout_rdy,
	 output [7:0] led
    /* Controller ready for transmission. */
//    output          tx_rdy,
    /* Controller ready for reception. */
//    output          rx_rdy
);

    wire    bclk;

    baud_gen baud_gen(
        .clk(clk),
        .rst(rst),

        .bclk(bclk)
    );

    rx_ctl rx_ctl(
        .clk (clk),
        .rst (rst),

        .bclk(bclk),
        .rx  (rx),

        .dout    (dout),
        .dout_rdy(dout_rdy),
        .rx_rdy  (rx_rdy)
    );

    tx_ctl tx_ctl(
        .clk (clk),
        .rst (rst),
        .bclk(bclk),

        .din    (din),
        .din_rdy(din_rdy),

        .tx    (tx),
        .tx_rdy(tx_rdy)
    );

endmodule
