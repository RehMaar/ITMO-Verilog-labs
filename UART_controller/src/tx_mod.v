// din [ d7 d6 d5 d4 d3 d2 d1 d0 ] > txd -- ( d7 d6 d5 d4 d3 d2 d1 d0 ) -->
module tx_mod(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    input           en,

    output          txd,
    output  reg     tx_rdy  // 0 -- in process of transmission, 1 otherwise.
);

    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam STOP  = 2'b10;

    localparam START_BIT = 0;
    localparam STOP_BIT  = 1;

    reg [1:0]state    = 0;
    reg [2:0]data_ctr = 0;

    reg [7:0]hold = data;
    reg [7:0]tsr = 0;

    always @( posedge rst ) begin
            state    <= 0;
            data_ctr <= 0;
            tx_rdy   <= 1;
    end
    always @( posedge bclk ) begin
        case( state )
            IDLE:
            begin
                tx_rdy <= 1;
                if( en ) begin
                    rx_rdy <= 0;
                    state  <= START;
                end
            end
            START:
            begin
                txd <= START_BIT;
                tsr <= hold;
            end
            TRANSMIT:
            begin
                txd <= tsr[0];
                tsr <= tsr >> 1;
            end
            STOP:
            begin
                txd <= STOP_BIT;
            end
        endcase
    end
endmodule
