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
    reg was_din_rdy = 0;
    reg was_tx_rdy = 0;
    reg was_rd = 0;
    wire [7:0] fifo_dout;
    wire en;


    assign en = rd; // && !was_rd;

    always @(negedge clk or posedge rst) begin
        if (rst) begin
            wr <= 0;
            rd <= 0;
        end
        else begin
            wr <= din_rdy && !was_din_rdy && !fifo_full && !rd;
            rd <= tx_rdy && !was_rd && was_tx_rdy && !fifo_empty && !wr;
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            was_din_rdy = 0;
            was_tx_rdy = 0;
            was_rd = 0;
        end
        else begin
            was_din_rdy = din_rdy;
            was_tx_rdy  = tx_rdy;
            was_rd      = rd;
        end
    end


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

    tx tx_mod(
        .clk(clk),
        .rst(rst),

        .bclk(bclk),
        /* Data to transmit. */
        .din(fifo_dout),
        /* Data ready to transmit. */
        .din_rdy(en),
        /* TX-pin */
        .tx(tx),
        /* Transmitter is ready ( 1 ), is busy ( 0 ). */
        .tx_rdy(tx_rdy)
    );


endmodule
