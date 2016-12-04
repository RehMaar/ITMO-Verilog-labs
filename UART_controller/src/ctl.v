/* Top module. */
module ctl(
    input           clk,
    input           rst,

    /* UART interface. */
    input           rx,
    output          tx,

    /* Nexys interface.*/
    input              sw,
    output  reg[7:0]   led
);

    wire [7:0] dout_uart;
    wire [7:0] dout_io;

    wire dout_io_rdy;
    wire dour_uart_rdy;

    io_ctl #( 100000000 )io_ctl(
        .clk(clk),
        .rst(rst),

        .sw(sw),

        .din    (dout_uart), /* dout from uart_ctl to io_ctl din */
        .din_rdy(dout_uart_rdy),

        .dout    (dout_io),
        .dout_rdy(dout_io_rdy) /* dout_io is ready. */
    );

    uart_ctl uart_ctl(
        .clk(clk),
        .rst(rst),

        .rx     (rx),
        .din    (dout_io),
        .din_rdy(dout_io_rdy),

        .tx      (tx),
        .dout    (dout_uart),
        .dout_rdy(dout_uart_rdy)
    );

     always @(negedge clk)
          if (rst)
            led <= 0;
          else if (dout_uart_rdy)
            led <= dout_uart;


endmodule
