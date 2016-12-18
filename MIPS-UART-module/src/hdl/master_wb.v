`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:43 10/10/2015 
// Design Name: 
// Module Name:    master_wb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module master_wb(
    
    input clk,
    input rst,
    
    output reg done_o,
    
    // mem signals
    input  wire         d_read_en,
    input  wire         d_write_en,
    input  wire [31:0]  d_addr,
    input  wire [31:0]  d_write_data,
    output reg  [31:0]  d_data_out,
    
    // wb signals
    input             wbm_done_pls_i,
    input      [31:0] wbm_dat_i,
    input             wbm_ack_i,
    output reg [31:0] wbm_dat_o,
    output reg        wbm_we_o,
    output     [3:0]  wbm_sel_o,
    output reg [31:0] wbm_adr_o,
    output reg        wbm_cyc_o,
    output reg        wbm_stb_o
);

    reg [1:0] state_r;
    
    assign wbm_sel_o = 4'b1111;
    
    localparam IDLE      = 0;
    localparam WRITE_ACK = 1;
    localparam READ_ACK  = 2;
    localparam DONE_PLS  = 3;
    
    reg rd_r, wr_r;
    

    always@(posedge clk, posedge rst) 
        
        if(rst) begin
             state_r    <= IDLE;
             
             done_o     <= 1'b0;
             wbm_adr_o <= 0;
             wbm_dat_o  <= 0;
             wbm_we_o   <= 1'b0;
             wbm_stb_o  <= 1'b0;
             wbm_cyc_o  <= 1'b0;
             
             d_data_out <= 0;
             
             rd_r <= 0;
             wr_r <= 0;
        end else begin
        
            rd_r <= d_read_en;
            wr_r <= d_write_en;
        
            done_o <= 1'b0;
            
            case(state_r) 
                IDLE: 
                    if(d_write_en && !wr_r) begin
                         wbm_adr_o <= d_addr;
                         wbm_dat_o  <= d_write_data;
                         wbm_we_o   <= 1'b1;
                         wbm_stb_o  <= 1'b1;
                         wbm_cyc_o  <= 1'b1;
                     
                         state_r    <= WRITE_ACK;
                    end else if (d_read_en && !rd_r) begin
                         wbm_adr_o <= d_addr;
                         wbm_stb_o  <= 1'b1;
                         wbm_cyc_o  <= 1'b1;
                        
                         state_r <= READ_ACK;
                    end else if (wbm_done_pls_i) begin
                         done_o  <= 1'b1;
                         state_r <= DONE_PLS;
                    end
                WRITE_ACK: 
                    if(wbm_ack_i) begin
                        wbm_we_o   <= 1'b0;
                        wbm_stb_o  <= 1'b0;
                        wbm_cyc_o  <= 1'b0;
                        
                        done_o     <= 1'b1;
                        state_r    <= IDLE;
                    end
                READ_ACK:
                    if(wbm_ack_i) begin
                         wbm_stb_o  <= 1'b0;
                         wbm_cyc_o  <= 1'b0;
                        
                         d_data_out <= wbm_dat_i;
                        
                         done_o     <= 1'b1;
                         state_r    <= IDLE;
                    end
                DONE_PLS: 
                    if(!wbm_done_pls_i)
                         state_r <= IDLE;
                    
            endcase
        end
  



endmodule
