module tx_ctl(
    input           clk,
    input           rst,
    input   [7:0]   data,
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

    reg [7:0]thr = data;
    reg [7:0]tsr = 0;

    always @( posedge bclk, posedge rst ) begin
        if( rst ) begin
            state    <= 0;
            data_ctr <= 0;
            tx_rdy   <= 1;
        end
        else begin
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
                    tsr <= thr;
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
    end
endmodule
