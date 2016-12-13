module ioctl (
    input           clk,
    input           rst,

    input           sw,
    input   [7:0]   din,
    input           din_rdy,

    input           tx_rdy,

    output reg[7:0] dout,
    output reg      dout_rdy
);

    localparam ECHO_MODE = 1'b0;
    localparam SEND_MODE = 1'b1;

    localparam IDLE = 1'b0;
    localparam SEND = 1'b1;

    localparam WORDS_COUNT = 3;
    localparam TIME = 100000; //00;

    reg [31:0]tm = 0;
    reg [7:0]data[14:0];
    reg [3:0]d_ctr = 0;
    reg was_din_rdy = 0;
    reg send_state = 0;
    reg was_rdy = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data[0]  = "H"; data[1]  = "e";   data[2]  = "l";
            data[3]  = "l"; data[4]  = "o";   data[5]  = ",";
            data[6]  = " "; data[7]  = "w";   data[8]  = "o";
            data[9]  = "r"; data[10] = "l";   data[11] = "d";
            data[12] = "!"; 
            data[13] = 8'h0D; /* \r */
            data[14] = 8'h0A; /* \n */
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            send_state  <= IDLE;
            d_ctr       <= 0;
            dout        <= 0;
            was_din_rdy <= din_rdy;
        end
        else
            case (sw)
                ECHO_MODE:
                    if (din_rdy && !was_din_rdy) begin
                                dout <= din;
                                dout_rdy <= 1;
                                was_din_rdy <= din_rdy;
                          end
                          else begin
                                dout_rdy    <= 0;
                                dout        <= 0;
                                was_din_rdy <= din_rdy;
                          end

               SEND_MODE:
                begin
                    case (send_state)
                        IDLE:
                        begin
                            dout_rdy <= 0;
                            if (!tm)
                                send_state <= SEND;
                        end
                        SEND:
                        begin
                            if (tx_rdy && !was_rdy) begin
                                was_rdy  <= 1;
                                dout     <= data[d_ctr];
                                d_ctr    <= d_ctr + 1'b1;
                                dout_rdy <= 1;
                                if (WORDS_COUNT == d_ctr) begin
                                    d_ctr <= 0;
                                    send_state <= IDLE;
                                    dout <= 0;
                                end
                            end
                            else begin
                                was_rdy <= tx_rdy;
                                dout_rdy <= 0;
                            end
                        end
                    endcase
                end
            endcase
    end

    always @(negedge clk or posedge rst) begin
        if (rst) begin
            tm <= 0;
        end
        else if (SEND_MODE == sw) begin
            if (TIME == tm)
                tm <= 0;
            else
                tm <= tm + 1'b1;
        end
    end

endmodule
