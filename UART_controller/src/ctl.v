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

    io_ctl io_ctl(
        .clk(clk),
        .rst(rst),

        .sw(sw),

        .din(dout_uart),
        .d_rdy(d_rdy),

        .dout(dout_io),
        .rd(tx_en)
    );

    uart_ctl uart_ctl(

        .clk(clk),
        .rst(rst),

        .tx (tx),
      //  .cts(cts),
        .din(dout_io),
        .tx_en(tx_en),

        .rx  (rx),
     //   .rts (rts),
        .dout(dout_uart),
        .d_rdy(d_rdy)
    );

     always @( negedge clk )
        if( d_rdy )
            led <= dout_uart;

     always @( posedge rst )
        led <=  0;

endmodule
