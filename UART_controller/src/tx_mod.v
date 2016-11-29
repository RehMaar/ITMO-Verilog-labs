// din [ d7 d6 d5 d4 d3 d2 d1 d0 ] > txd -- ( d7 d6 d5 d4 d3 d2 d1 d0 ) -->
module tx_mod(
    input           clk,
    input           rst,

    input           bclk,
    input   [7:0]   din,
    /* Data ready for transmission.*/
    input           tx_en,

    output   reg    txd,
    output   reg    tx_rdy  // 0 -- in process of transmission, 1 otherwise.
);

    localparam IDLE     = 2'b00;
    localparam START    = 2'b01;
    localparam TRANSMIT = 2'b10;
    localparam STOP     = 2'b11;

    localparam READY    = 1'd1;

    localparam START_BIT = 0;
    localparam STOP_BIT  = 1;

    reg [1:0]next_state = IDLE;
    reg [1:0]state      = IDLE;
    reg [1:0]was_state  = IDLE;
    reg [2:0]d_ctr      = 0;
    reg [7:0]tsr        = 0;
    reg [7:0]thr        = 0;

    reg rstate = 0;


    always @( posedge clk or posedge rst )
        if( rst ) begin
            rstate    = IDLE;
            tx_rdy    = 1;
            was_state = IDLE;
        end
        else
            case( rstate )
                IDLE:
                    if( tx_en ) begin
                        tx_rdy  = 0;
                        rstate  = READY;
                    end
                    else
                        tx_rdy = 1;
                READY:
                    if( state == IDLE && was_state == STOP ) begin
                        tx_rdy    = 1;
                        rstate    = IDLE;
                        was_state = state;
                    end
                    else
                        was_state = state;
            endcase

    always @( posedge bclk )
        if( rst )
            state <= 0;
        else
            state <= next_state;

    always @( negedge bclk or posedge rst ) begin
         if( rst )begin
            d_ctr  <= 0;
            txd    <= 1;
            tsr    <= 0;
        end
        else
            case( state )
                IDLE:
                    if( !tx_rdy ) begin
                        next_state  <= START;
                        tsr         <= din;
                    end
                START:
                    begin
                        next_state <= TRANSMIT;
                        txd        <= START_BIT;
                    end
                TRANSMIT:
                    begin
                        d_ctr <= d_ctr + 1;
                        txd   <= tsr[0];
                        tsr   <= { 1'b0, tsr[7:1] };
                        if( d_ctr == 3'd7 ) begin
                            next_state <= STOP;
                            d_ctr      <= 0;
                        end
                    end
                STOP:
                    begin
                        next_state <= IDLE;
                        txd        <= STOP_BIT;
                    end
            endcase
     end
endmodule
