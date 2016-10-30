module rx_ctl(
    input               clk,
    input               rst,

    input               bclk,
    // Read a word from fifo.
    input               rd,
    // Enable receive.
    input               en,
    input               rxd,

    // Received data.
    output  reg [7:0]   dout,
    output              rts
);

    reg [7:0] rhr  = 0; // Receiver Hold Register.
    reg [7:0] dctr = 0; // Data counter ( for flow control ).

    reg       wr   = 0;
    reg       rd   = 0;


    wire      rx_rdy;
    wire      fifo_full;
    wire      fifo_empty;


    // Receiver Shift Register.
    rs_mod rsr( 
        .rst(rst),
        .bclk(bclk),
        .rxd(rxd),
        .en(en),

        .dout(rhr),
        .rx_rdy(rx_rdy)
    );
    // Receiver fifo.
    fifo rx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (rd),
        .wr (wr),
        .din(rhr),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );

    always @( posedge rst ) begin
        rhr  = 0;
        dctr = 0;
        wr   = 0;
        rd   = 0;
    end

    always @( posedge clk ) begin
    end
endmodule
