/* Top module. */
module io_ctrl(
    /* UART interface. */
    inout           rx,
    input           cts,

    output          tx,
    output          rts,

    /* Nexys interface.*/
    input           sw,
    output  [7:0]   led
);

endmodule
