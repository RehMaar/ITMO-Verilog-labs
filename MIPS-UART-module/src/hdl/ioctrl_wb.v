module ioctrl_wb #(parameter BASE_ADDR = 32'h00000800) (

    // system signals
    input clk_i,
    input rst_i,

    // wb signals
    input      [31:0] dat_i,
    output reg [31:0] dat_o,
    input      [31:0] adr_i,
    input      we_i,
    input      [3:0] sel_i,
    input      cyc_i,
    input      stb_i,
    output reg ack_o,

    //UART
    output  tx,
    input   rx
);

localparam IDLE = 0;
localparam ACK  = 1;

wire read  = cyc_i & stb_i & !we_i;
wire write = cyc_i & stb_i & we_i;

reg state_r;
reg [31:0] data_r;

// UART
wire [7:0] dout;
wire dout_rdy;

reg [7:0]din;
reg din_rdy;

uart_ctl uart_uut(
    .clk(clk_i),
    .rst(rst_i),

    .rx(rx),
    .din(din),
    .din_rdy(din_rdy),

    .tx(tx),
    .dout(dout),
    .dout_rdy(dout_rdy)
);

always@(posedge clk_i, posedge rst_i)
    if(rst_i) begin
        state_r <= 0;
        ack_o   <= 1'b0;
        din     <= 0;
        din_rdy <= 0;
        dat_o   <= 0;
    end else begin
        ack_o <= 1'b0;
        case(state_r)
            IDLE:
                begin
                    if(write) begin
                        if(adr_i == BASE_ADDR) begin
                            din <= dat_i[7:0];
                            din_rdy <= 1;
                        end
                        ack_o   <= 1'b1;
                        state_r <= ACK;
                    end else if(read && dout_rdy) begin
                        dat_o <= (adr_i == BASE_ADDR)? dout: 0;
                        state_r <= ACK;
                    end
                    else
                        din_rdy <= 0;
                end
            ACK:
                begin
                    ack_o   <= 1'b1;
                    state_r <= IDLE;
                end
        endcase
    end

endmodule
