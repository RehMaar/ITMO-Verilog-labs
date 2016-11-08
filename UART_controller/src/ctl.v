/* Top module. */
module ctl(
    input           clk,
    input           rst,

    /* UART interface. */
    input           rx,
    input           cts,

    output          tx,
    output          rts,

    /* Nexys interface.*/
    input           sw,
    output  [7:0]   led
);

    reg [7:0]   dout = 0;
    reg [7:0]   din  = 0;

    uart_ctl uart_ctl(

        .clk(clk),
        .rst(rst),

        .tx (tx),
        .cts(cts),
        .din(din),
        .rd(rd),

        .rx  (rx),
        .rts (rts),
        .dout(dout),
        .d_rdy(d_rdy)
    );

    io_ctl io_ctl(
        .clk(clk),
        .rst(rst),

        .sw(sw),

        .din(din),
        .d_rdy(d_rdy),

        .dout(dout),
        .rd(rd)
    );

endmodule
