module io_ctl #( 
    parameter TIME = 100000000
) (
    input               clk,
    input               rst,
    /* SW = 0: echo-mode. SW = 1: send 'Hello world!\r\n'. */
    input               sw,
    /* Data from uart.*/
    input   [7:0]       din,
    /* Data to in is ready. */
    input               din_rdy,
    /* Allow read from memory in send mode. */
    //input               tx_en,
    /* Data to uart. */
    output  reg[7:0]    dout,
    /* Data to out is ready. */
    output  reg         dout_rdy
);
    localparam ECHO_MODE = 0;
    localparam SEND_MODE = 1;

    reg [7:0]  data [14:0];
    reg [26:0] tm_ctr = 0;
    reg [3:0]  d_ctr  = 0;
    reg was_din_rdy     = 0;


    /* Have no idea what it is. */
    wire tx_flag;
    assign tx_flag = (tm_ctr == TIME)                    ? 1 :
                     (( d_ctr == 15 ) || ( d_ctr == 0 )) ? 0 : 1;

    always @( posedge rst ) begin
            data[0]  = "H"; data[1]  = "e";   data[2]  = "l";
            data[3]  = "l"; data[4]  = "o";   data[5]  = ",";
            data[6]  = " "; data[7]  = "w";   data[8]  = "o";
            data[9]  = "r"; data[10] = "l";   data[11] = "d";
            data[12] = "!"; 
            data[13] = 8'h0D; /* \r */
            data[14] = 8'h0A; /* \n */
    end

    always @( negedge clk or posedge rst ) begin
        if( rst )
            tm_ctr <= 0;
        else if( sw == SEND_MODE ) begin
            if( tm_ctr == TIME )
                tm_ctr  <= 0;
            else
                tm_ctr  <= tm_ctr + 1;
        end
    end

    always @( posedge clk or posedge rst ) begin
        if( rst ) begin
            was_din_rdy <= 0;
            dout_rdy    <= 0;
            dout        <= 0;
            d_ctr       <= 0;
        end
        else
            case( sw )
                ECHO_MODE:
                begin
                    if( din_rdy && !was_din_rdy ) begin
                        was_din_rdy <= din_rdy;
                        dout        <= din;
                        dout_rdy    <= 1;
                    end
                    else begin
                        was_din_rdy <= din_rdy;
                        dout_rdy    <= 0;
                    end
                end
                SEND_MODE:
                begin
                    if( tx_flag ) begin
                        dout_rdy <= 1;
                        dout     <= data[d_ctr];
                        d_ctr    <= d_ctr + 1;
                    end
                    else if( d_ctr == 15 ) begin
                        dout_rdy <= 0;
                        d_ctr    <= 0;
                    end
                end
            endcase
    end

endmodule
