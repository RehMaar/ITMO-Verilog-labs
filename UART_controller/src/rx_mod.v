// rxd -- ( d0 d1 d2 d3 d4 d5 d6 d7 ) -- > dout [ d7 d6 d5 d4 d3 d2 d1 d0 ]
module rx_mod(
    input               bclk,
    input               rst,

    input               rx,

    output   [7:0]      dout,
    // Ready to receive data.
    output  reg         rx_rdy,
    output  reg         d_rdy
);

    localparam IDLE     = 2'b00;
    localparam START    = 2'b01;
    localparam STOP     = 2'b10;

    reg [7:0] rhr  = 0;
    reg [2:0] d_ctr = 0;
    reg [1:0] state = 0;

    assign dout = rhr;

    always @( posedge clk )
        if( rst )begin
            rhr    = 0;
            d_ctr  = 0;
            state  = 0;
            rx_rdy = 1;
            d_rdy  = 0;
        end

    always @( negedge bclk )
        case( state )
            IDLE:
                d_rdy = 0;
                if( rxd == 0 & en ) begin
                    state  = START;
                    rx_rdy = 0;
                end
            START:
                if( d_ctr == 2'd7 ) begin
                    stat  = STOP;
                    d_ctr = 0;
                end else begin
                    d_ctr <= d_ctr + 1'b1;
                    //rhr = { rxd, rhr[6:0] };
                    rhr     <= rhr << 1;
                    rhr[0]  <= rxd;
                end
            STOP:
                begin
                    rx_rdy = 1;
                    state  = IDLE;
                    d_rdy = 1;
                end
        endcase
    end
endmodule
