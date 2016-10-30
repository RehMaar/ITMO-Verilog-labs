// rxd -- ( d0 d1 d2 d3 d4 d5 d6 d7 ) -- > dout [ d7 d6 d5 d4 d3 d2 d1 d0 ]
module rs_mod(
    input               bclk,
    input               rst,

    input               rxd,
    input               en,

    output   [7:0]      dout,
    // Ready receive data.
    output  reg         rx_rdy
);

    localparam IDLE     = 2'b00;
    localparam START    = 2'b01;
    localparam STOP     = 2'b10;

    reg [7:0] data       = 0;
    reg [2:0] data_ctr   = 0;
    reg [1:0] state      = 0;

    assign dout = data;


    always @( posedge rst ) begin
            data     = 0;
            data_ctr = 0;
            state    = 0;
            rx_rdy   = 1;
    end

    always @( negedge bclk ) begin
        case( state )
            IDLE:
                if( rxd == 0 & en ) begin
                    state  = START;
                    rx_rdy = 0;
                end
            START:
                begin
                    if( data_ctr == 3'd7 ) begin
                        state    = STOP;
                        data_ctr = 0;
                    end
                    else 
                        data_ctr = data_ctr + 1'b1;
                    //data = { rxd, data[6:0] };
                    data    <= data << 1;
                    data[0] <= rxd;
                end
            STOP:
                begin
                    rx_rdy = 1;
                    state  = IDLE;
                end
        endcase
    end
endmodule
