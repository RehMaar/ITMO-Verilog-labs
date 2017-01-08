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
    output reg ack_o
);

localparam IDLE = 0;
localparam ACK  = 1;

wire read  = cyc_i & stb_i & !we_i;
wire write = cyc_i & stb_i & we_i;
    
reg state_r;
reg [31:0] data_r;
    
always@(posedge clk_i, posedge rst_i)
    if(rst_i) begin
        state_r <= 0;
        ack_o   <= 1'b0;
        data_r  <= 0;
        dat_o   <= 0;
    end else begin
    
        ack_o <= 1'b0;
        
        case(state_r)
            IDLE: 
                begin
                    if(write) begin
                        if(adr_i == BASE_ADDR)
                            data_r <= dat_i[7:0];
                        ack_o   <= 1'b1;
                        state_r <= ACK; 
                    end else if(read) begin
                        dat_o <= (adr_i == BASE_ADDR)? data_r: 0;
                        state_r <= ACK;
                    end
                end
            ACK:
                begin
                    ack_o   <= 1'b1;
                    state_r <= IDLE;
                end
        endcase
    end


endmodule
