module io_ctl(
    input               clk,
    input               rst,
    /* SW = 0: echo-mode. SW = 1: send 'Hello world!\r\n'. */
    input               sw,
    /* Data from uart.*/
    input   reg[7:0]    din,
    input               d_rdy,

    /* Data to uart. */
    output  reg[7:0]    dout,
    output  reg         rd,
);

    localparam TIME      = 100000000;
    localparam ECHO_MODE = 0;
    localparam SEND_MODE = 1;

    reg [7:0] data [14:0]  = { "Hello, world!", 16'h0D, 16'h0 };
    reg [3:0] d_ctr        = 0;

    reg [26:0] tm_ctr = 0;

    always @( negedge clk ) begin
        if( rst ) begin
            dout = 0;
            rd   = 0;
            send_data = 0;
        end else begin
            case( sw )
                ECHO_MODE:
                    if( d_rdy ) begin
                        dout <= din;
                        rd   <= 1;
                    end
                SEND_MODE: begin
                    if( tm_ctr == TIME ) begin
                        tm_ctr <= 0;
                        dout   <= data[d_ctr];
                        d_ctr  <= d_ctr+1;
                        if( 15 == d_ctr ) d_ctr <= 0;
                    end
                end
            endcase
        end
    end

    always @( posedge clk ) begin
        if( rst )
            tm_ctr = 0;
        else
            tm_ctr <= tm_ctr +1;
    end

endmodule
