module tx_ctl(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    input           din_rdy,

    output          tx,
    output          tx_rdy
);

    reg wr = 0;
    reg rd = 0;
    reg en = 0;
    wire [7:0] fifo_dout;

    reg [2:0]state = 0;

   localparam IDLE  = 0;
   localparam CHSE  = 1;
   localparam READ  = 2;
   localparam WRITE = 3;
   localparam SEN   = 4;

    always @(posedge clk)
        if (rst) begin
            rd <= 0;
            wr <= 0;
            en <= 0;
            state <= IDLE;
        end else
        case (state)
            IDLE:
            begin
                rd <= 0;
                wr <= 0;
                en <= 0;
                state <= CHSE;
            end
            CHSE:
            begin
                if (tx_rdy && !fifo_empty)
                    state <= READ;
                else if (din_rdy && !fifo_full)
                    state <= WRITE;
            end
            READ:
            begin
                rd <= 1;
                state <= SEN;
            end
            WRITE:
            begin
                wr <= 1;
                state <= IDLE;
            end
            SEN:
            begin
                rd <= 0;
                en <= 1;
                state <= IDLE;
            end
        endcase

    /* Write and read on negedge. */
    fifo tx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (rd),
        .wr (wr),

        .din(din),

        .full (fifo_full),
        .empty(fifo_empty),

        .dout (fifo_dout)
    );

    tx tx_mod(
        .clk(clk),
        .rst(rst),

        .bclk(bclk),
        /* Data to transmit. */
        .din(fifo_dout),
        /* Data ready to transmit. */
        .din_rdy(en),
        /* TX-pin */
        //.din(din),
        //.din_rdy(din_rdy),
        .tx(tx),
        /* Transmitter is ready ( 1 ), is busy ( 0 ). */
        .tx_rdy(tx_rdy)
    );

endmodule
