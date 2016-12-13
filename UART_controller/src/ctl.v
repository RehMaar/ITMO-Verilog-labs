/* Top module. */
module ctl(
    input           clk,
    input           rst,

    /* UART interface. */
    input           rx,
    output          tx,

    /* Nexys interface.*/
    input           sw,
    output  reg[7:0]   led
);

    wire [7:0] dout_uart;
    wire [7:0] dout_io;

    wire dout_io_rdy;
    wire dour_uart_rdy;
    wire tx_rdy;

    ioctl ioctl(
        .clk(clk),
        .rst(rst),

        .sw(sw),

        .din    (dout_uart),
        .din_rdy(dout_uart_rdy),

        .tx_rdy(tx_rdy),

        .dout    (dout_io),
        .dout_rdy(dout_io_rdy)
     );

    uart_ctl uart_ctl(
        .clk(clk),
        .rst(rst),

        .rx     (rx),
        .din    (dout_io),
        .din_rdy(dout_io_rdy),

        .tx      (tx),
        .dout    (dout_uart),
        .dout_rdy(dout_uart_rdy),
        .tx_rdy  (tx_rdy)
    );

    always @(negedge clk)
        if (rst)
            led <= 0;
          /* SW == 0: echo mode; SW = 1: send mode. */
        else if (!sw && dout_uart_rdy)
            led <= dout_uart;


endmodule
