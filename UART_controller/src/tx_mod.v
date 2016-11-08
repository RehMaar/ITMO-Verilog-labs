// din [ d7 d6 d5 d4 d3 d2 d1 d0 ] > txd -- ( d7 d6 d5 d4 d3 d2 d1 d0 ) -->
module tx_mod(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    input           en,

    output          txd,
    output   reg    tx_rdy  // 0 -- in process of transmission, 1 otherwise.
);

    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam STOP  = 2'b10;

    localparam START_BIT = 0;
    localparam STOP_BIT  = 1;

    reg [1:0]state = 0;
    reg [2:0]d_ctr = 0;

    reg [7:0]thr = 0;
    reg [7:0]tsr = 0;

    always @( posedge clk )
        if( rst )begin
            state  = 0;
            d_ctr  = 0;
            tx_rdy = 1;
        end

    always @( negedge bclk )
        case( state )
            IDLE:
                if( en ) begin
                    tx_rdy = 0;
                    state  = START;
                end
            START:
                begin
                    txd   = START_BIT;
                    tsr   = thr;
                    state = TRANSMIT;
                end
            TRANSMIT:
                if( d_ctr == 3'd7 ) begin
                    state = STOP;
                    d_ctr = 0;
                end else begin
                    d_ctr <= d_ctr + 1;
                    txd   <= tsr[0];
                    tsr   <= tsr >> 1;
                end
            STOP:
                begin
                    txd    = STOP_BIT;
                    tx_rdy = 1;
                end
        endcase
endmodule
