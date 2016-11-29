// rxd -- ( d0 d1 d2 d3 d4 d5 d6 d7 ) -- > dout [ d7 d6 d5 d4 d3 d2 d1 d0 ]
module rx_mod(
    input          clk,
    input          rst,
    input          bclk,
    input          rxd,

    output   [7:0] dout,
    // Ready to receive data.
    output  reg    rx_rdy,
    output  reg    d_rdy
);

    localparam STARTBIT = 0;
    localparam STOPBIT  = 1;

    localparam IDLE     = 2'b00;
    localparam START    = 2'b01;
    localparam STOP     = 2'b10;

    reg [7:0] rhr        = 0;
    reg [2:0] d_ctr      = 0;
    reg [1:0] state      = 0;
    reg [1:0] next_state = 0;

    assign dout = rhr;

     always @( negedge bclk or posedge rst ) begin
        if( rst )
            state <= 0;
        else
            state <= next_state;
     end

    always @( posedge bclk or posedge rst )
        if( rst )begin
            rhr    <= 0;
            d_ctr  <= 0;
            rx_rdy <= 1;
            d_rdy  <= 0;
        end else
            case( state )
                IDLE:
                begin
                    d_rdy <= 0;
                    if( rxd == STARTBIT ) begin
                        next_state  <= START;
                        rx_rdy      <= 0;
                    end
                end
                START:
                    begin
                        d_ctr <= d_ctr + 1'b1;
                        //rhr = { rxd, rhr[6:0] };
                        rhr     <= rhr << 1;
                        rhr[0]  <= rxd;
                        if( d_ctr == 3'd7 ) begin
                            next_state <= STOP;
                            d_ctr      <= 0;
                        end
                    end
                STOP:
                    begin
                        if( rxd == STOPBIT ) begin
                            rx_rdy <= 1;
                            d_rdy  <= 1;
                        end
                        next_state  <= IDLE;
                    end
            endcase

endmodule
