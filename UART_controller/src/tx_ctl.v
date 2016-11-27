module tx_ctl(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    input           tx_en,  // din ready
//    input           cts,

    output          txd,
    output          tx_rdy  // 0 -- in process of transmission, 1 otherwise.
);

    reg wr = 0;
    reg rd = 0;
    reg en = 0;

    wire [7:0] dout;
    wire       rd_en;


    fifo tx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (rd),
        .wr (wr),
        .din(din),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );

    tx_mod tx_mod(
        .clk(clk),
        .rst(rst),

        .bclk(bclk),
        /* Data to transmit. */
        .din(dout),
        /* Data ready to transmit. */
        .tx_en(en),
        /* TX-pin */
        .txd(txd),
        /* Transmitter is ready ( 1 ), is busy ( 0 ). */
        .tx_rdy(tx_rdy)
    );

    /* Read data from  buffer to thr for transmission.
     */
    always @( posedge clk )
        if( !fifo_empty && tx_rdy && !wr )
            rd <= 1;
        else
            rd <= 0;

    /* Write data from input to fifo-buffer.
     * If need to read, set en on negedge ( data should be ready ).
     * tx_mod have to say, that it've understood out transmitting wish and
     * set tx_rdy to 0. If tx_rdy is zero we set en to zero to prevent trash.
     */
    always @( negedge clk ) begin
        if( rd )
            en <= 1;
        else if( !tx_rdy )
            en <= 0;
        else if( tx_en && !fifo_full && !rd )
            wr <= 1;
        else
            wr <= 0;
    end
endmodule
