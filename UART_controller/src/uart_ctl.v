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
endmodule;
