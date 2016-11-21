module io_ctl(
    input               clk,
    input               rst,
    /* SW = 0: echo-mode. SW = 1: send 'Hello world!\r\n'. */
    input               sw,
    /* Data from uart.*/
    input   [7:0]       din,
    input               d_rdy,

    /* Data to uart. */
    output  reg[7:0]    dout,
    output  reg         rd
);

    localparam TIME      = 100000000;
    localparam ECHO_MODE = 0;
    localparam SEND_MODE = 1;

    reg [7:0] data [14:0];
    reg [3:0]  d_ctr  = 0;
    reg [26:0] tm_ctr = 0;


    always @( posedge rst ) begin
           dout = 0;
           rd   = 0;
           data[0]  = "H"; data[1]  = "e";   data[2]  = "l";
           data[3]  = "l"; data[4]  = "o";   data[5]  = ",";
           data[6]  = " "; data[7]  = "w";   data[8]  = "o";
           data[9]  = "r"; data[10] = "l";   data[11] = "d";
           data[12] = "!"; data[13] = 8'h0D; data[14] = 8'h0A;
    end

    always @( negedge clk )
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


    always @( posedge clk )
        if( rst )
            tm_ctr = 0;
        else
            tm_ctr <= tm_ctr +1;

endmodule
