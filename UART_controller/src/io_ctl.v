module io_ctl(
    input               clk,
    input               rst,
    /* SW = 0: echo-mode. SW = 1: send 'Hello world!\r\n'. */
    input               sw,
    /* Data from uart.*/
    input   [7:0]       din,
    input               d_rdy,
    input               tx_rdy,
    /* Data to uart. */
    output  reg[7:0]    dout,
    output  reg        tx_en
);
    localparam TIME      = 100000;
    localparam ECHO_MODE = 0;
    localparam SEND_MODE = 1;

    reg [7:0]  data [14:0];
    reg [3:0]  d_ctr    = 0;
    reg [26:0] tm_ctr   = 0;
    reg was_d_rdy       = 0;

    wire tx_flag;

    assign tx_flag = (tm_ctr == TIME) ? 1 : ((( d_ctr == 15 ) || ( d_ctr == 0 )) ? 0 : 1 );

    always @( posedge rst ) begin
            data[0]  = "H"; data[1]  = "e";   data[2]  = "l";
            data[3]  = "l"; data[4]  = "o";   data[5]  = ",";
            data[6]  = " "; data[7]  = "w";   data[8]  = "o";
            data[9]  = "r"; data[10] = "l";   data[11] = "d";
            data[12] = "!"; data[13] = 8'h0D; data[14] = 8'h0A;
    end

    always @( negedge clk or posedge rst )
        if( rst ) begin
             tx_en   <= 0;
             dout    <= 0;
             d_ctr   <= 0;
             was_d_rdy <= 0;
        end else
             case( sw )
                 ECHO_MODE:
                     if( d_rdy && !was_d_rdy ) begin
                        dout      <= din;
                        tx_en     <= 1;
                        was_d_rdy <= d_rdy;
                     end 
                     else begin
                        tx_en     <= 0;
                        was_d_rdy <= d_rdy;
                    end
                 SEND_MODE:
                    begin
                        if( tx_flag ) begin
                            tx_en <= 1;
                            dout  <= data[d_ctr];
                            d_ctr <= d_ctr + 1;
                        end
                        else if( d_ctr == 15 ) begin
                            tx_en    <= 0;
                            d_ctr <= 0;
                        end
                    end
             endcase

    always @( posedge clk or posedge rst ) begin
            if( rst )
                tm_ctr <= 0;
            else if( sw == SEND_MODE ) begin
                if( tm_ctr == TIME ) 
                    tm_ctr  <= 0;
                else
                    tm_ctr  <= tm_ctr + 1;
            end
    end

endmodule
