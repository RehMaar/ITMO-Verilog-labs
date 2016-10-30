module rsr(
    input               bclk,
    input               rst,
    input               rxd,

    output  reg [7:0]   dout,
    output  reg         rx_rdy
);

    localparam IDLE     = 2'b00;
    localparam START    = 2'b01;
    localparam STOP     = 2'b10;

    reg [2:0] data_ctr   = 0;
    reg [1:0] state      = 0;

    always @( posedge bclk, posedge rst ) begin
        if( rst ) begin
            data     <= 0;
            data_ctr <= 0;
            state    <= 0;
            rx_rdy   <= 0;
        end
        else begin
            case( state )
                IDLE:
                    rx_rdy <= 0;
                    if( rxd == 0 )
                        state <= START;
                START:
                    if( data_ctr == 3'd7 ) begin
                        state    <= STOP;
                        data_ctr <= 0;
                    end
                    else begin
                     // data <= { rxd, data[7:1] };
                        data     <= data >> 1'b1;
                        data[7]  <= rxd;
                        data_ctr <= data_ctr + 1'b1;
                    end
                STOP:
                    begin
                        rx_rdy <= 1;
                        state  <= IDLE;
                    end
                default:
                    rx_rdy <= 0;
            endcase
        end
    end
endmodule
