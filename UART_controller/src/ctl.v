/* Top module. */
module ctl(
    input           clk,
    input           rst,

    /* UART interface. */
    input           rx,
//  input           cts,

    output          tx,
//  output          rts,

    /* Nexys interface.*/
    input              sw,
    output  reg[7:0]   led
);

    wire [7:0] dout_uart;
    wire [7:0] dout_io;
    wire tx_en;
    wire tx_rdy;

    io_ctl io_ctl(
        .clk(clk),
        .rst(rst),

        .sw(sw),

        .din(dout_uart),
        .d_rdy(d_rdy),
        .tx_rdy(tx_rdy),

        .dout(dout_io),
        .rd(tx_en) // dout_io is ready.
    );

    uart_ctl uart_ctl(

        .clk(clk),
        .rst(rst),

        .rx  (rx),
        .din(dout_io),
        .tx_en(tx_en),

        .tx (tx),
        .dout(dout_uart),
        .d_rdy(d_rdy),
        .tx_rdy(tx_rdy)
    );

     always @( negedge clk )
		  if( rst )
				led <= 0;
		  else if( d_rdy )
            led <= dout_uart;


endmodule
