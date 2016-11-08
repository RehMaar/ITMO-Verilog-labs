/*
 * RX controller manages the proccess of receiving:
 *  rxd -> RX_MOD -> data -> FIFO.
 *
 * If FIFO is full:
 *      RTS to 1 & Rewrite?
 * If FIFO is empty:
 *      Doesn't read.
 * Else
 *      RTS to 0. ( or inverse )
 * Reading from FIFO by clk.
 * Writing to FIFO by bclk.
 *
 */
module rx_ctl(
    input               clk,
    input               rst,

    input               bclk,
    // Read a word from fifo.
    input               rd,
    input               rxd,

    // Received data.
    output  reg [7:0]   dout,
    output              rts
);

    reg [7:0] rhr  = 0; // Receiver Hold Register.
//  reg [7:0] dctr = 0; // Data counter ( for flow control ).

//  reg       fifo_wr   = 0;
//  reg       fifo_rd   = 0;


    wire      rx_rdy;
//  wire      fifo_full;
//  wire      fifo_empty;

    // Receiver Shift Register.
    rs_mod rsr( 
        .rst(rst),
        .bclk(bclk),

        .rxd(rxd),

        .dout(rhr),
        .rx_rdy(rx_rdy)
    );
    // Receiver fifo.
/*  fifo rx_fifo(
        .clk(clk),
        .rst(rst),

        .rd (fifo_rd),
        .wr (fifo_wr),
        .din(rhr),

        .full (fifo_full),
        .empty(fifo_empty),
        .dout (dout)
    );
 */
    always @( posedge rst ) begin
        rhr     = 0;
 //     dctr    = 0;
 //     fifo_wr = 0;
 //     fifo_rd = 0;
    end
/*
    always @( posedge clk ) begin
        if( rx_rdy )
            fifo_wr = 1;
        else
            fifo_wr = 0;
    end

    always @( posedge clk ) begin
        
    end
*/
endmodule
