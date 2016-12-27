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

localparam DATA_ADDR = BASE_ADDR+1;

wire read  = cyc_i & stb_i & !we_i;
wire write = cyc_i & stb_i & we_i;

reg state_r;
reg [31:0] data_r;

// UART
wire [7:0] dout;
wire dout_rdy;

reg [7:0]din;
reg din_rdy;
reg was_dout_rdy;
reg [7:0]status_reg = 0;

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

always @(negedge clk_i, posedge rst_i)
    if(rst_i) begin
        status_reg <= 0;
    end else begin
        if (dout_rdy & !was_dout_rdy) begin
            status_reg[0] <= dout_rdy;
            was_dout_rdy <= dout_rdy;
        end else begin
            was_dout_rdy <= dout_rdy;
        end
        if (adr_i == DATA_ADDR)
            status_reg <= 0;
    end

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
                        if(adr_i == DATA_ADDR) begin
                            din <= dat_i[7:0];
                            din_rdy <= 1;
                        end
                        else
                            din_rdy <= 0;
                        ack_o   <= 1'b1;
                        state_r <= ACK;
                    end else begin
                        din_rdy <= 0;
                        if(read) begin
                            dat_o <= (adr_i == BASE_ADDR)? status_reg :
                                     (adr_i == DATA_ADDR)? dout: 0;
                            state_r <= ACK;
                        end
                    end
                end
            ACK:
                begin
                    ack_o   <= 1'b1;
                    state_r <= IDLE;
                    din_rdy <= 0;
                end
        endcase
    end

endmodule
