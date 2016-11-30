module tx_ctl(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    input           din_rdy,

    output          txd,
    output          tx_rdy
);

    reg wr = 0;
    reg rd = 0;
    reg en = 0;

    wire [7:0] fifo_dout;


    fifo tx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (rd),
        .wr (wr),
        /* On next clk data is in memory. */
        .din(din),

        .full (fifo_full),
        .empty(fifo_empty),
        /* On next clk after the rd signal data is in dout. */
        .dout (fifo_dout)
    );

    tx tx(
        .clk(clk),
        .rst(rst),

        .bclk(bclk),
        /* Data to transmit. */
        .din(fifo_dout),
        /* Data ready to transmit. */
        .din_rdy(en),
        /* TX-pin */
        .txd(txd),
        /* Transmitter is ready ( 1 ), is busy ( 0 ). */
        .tx_rdy(tx_rdy)
    );

    /* Read data from  buffer to thr for transmission.
     */
    always @( posedge clk )
        if( rst ) begin
            rd <= 0;
        end
        else if( rd ) begin
            rd <= 0;
        end
        /* If fifo isn't empty, tx ready for transmission and no writing
         * we can read from fifo.
         * Need tx_rdy to be in untill next transmision.
         */
        else if( !fifo_empty && tx_rdy && !wr ) begin
            rd <= 1;
        end
        else
            rd <= 0;


    /* Write data from input to fifo-buffer.*/
    always @( negedge clk )
        if( rst ) begin
            wr <= 0;
            en <= 0;
        end
        else begin
        /*
         * If fifo isn't full, input data is enabled  and no reading
         * we can write to fifo.
         */
            if( din_rdy && !fifo_full && !rd )
                wr <= 1;
            else
                wr <= 0;

            if( rd )
                en <= 1;
            else
                en <= 0;
        end
endmodule
