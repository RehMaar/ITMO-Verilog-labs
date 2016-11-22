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

    reg        wr   = 0;
    reg        rd   = 0;
    wire	 [7:0] dout;
	 wire			rd_en;
	 reg			en   = 0;
    //wire       tx_rdy;
	 
	 assign rd_en = en & clk;
	 
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
        .din(dout),
        .tx_en(en),    // enable transmission.

        .txd(txd),
        .tx_rdy(tx_rdy)
    );



	always @( posedge bclk ) begin
			if( !fifo_empty ) begin
				rd <= 1;
				en <= 1;
			end else begin
				en <= 0;
				rd <= 0;
			end	
	end
	
	always @( negedge clk ) begin
		if( tx_rdy && tx_en && !fifo_full )
			wr <= 1;
		else
			wr <= 0;
	end
	
endmodule
