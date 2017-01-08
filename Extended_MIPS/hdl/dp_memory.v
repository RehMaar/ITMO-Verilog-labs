`timescale 1ns / 1ps

/**
 Dual-port Instrcution/Data memory
 */

module bus_control #(
     parameter addr_high = 32'h00000fff,
     parameter addr_low  = 32'h00000000)(

     input wire         clk,
     input wire         rst,
     input  wire        i_read_en,
     input  wire [31:0] i_addr,
     output wire [31:0] i_instr_out,

     output wb_done_o,

     input  wire         d_read_en,
     input  wire         d_write_en,
     input  wire [31:0]  d_addr,
     input  wire [31:0]  d_write_data,
     output wire [31:0]  d_data_out,

// wb signals
     input  [31:0] wbm_dat_i,
     input         wbm_ack_i,
     output [31:0] wbm_dat_o,
     output        wbm_we_o,
     output [3:0]  wbm_sel_o,
     output [31:0] wbm_adr_o,
     output        wbm_cyc_o,
     output        wbm_stb_o
);

     wire        i_bram_select;
     wire        d_bram_select;
     wire [31:0] external_data;

     wire        external_data_wren;
     wire        external_data_rden;

     wire        done_please;

     reg [31:0] memory[addr_low:addr_high];

     initial begin
          $readmemh("text.rom", memory, addr_low, addr_high);
     end

     assign i_bram_select = (i_addr <= addr_high && i_addr >= addr_low) ? 1'b1 : 1'b0;
     assign d_bram_select = (d_addr <= addr_high && d_addr >= addr_low) ? 1'b1 : 1'b0;

     assign i_instr_out = (i_read_en && i_bram_select) ? memory[i_addr] : 0;
     assign d_data_out  = (d_read_en && d_bram_select) ? memory[d_addr] : external_data;

     assign external_data_wren = !d_bram_select && d_write_en;
     assign external_data_rden = !d_bram_select && d_read_en;

     assign done_please = d_bram_select && (d_read_en || d_write_en);

     master_wb mwb_inst(

        .clk(clk),
        .rst(rst),

        .done_o(wb_done_o),

        .d_read_en(external_data_rden),
        .d_write_en(external_data_wren),
        .d_addr(d_addr),
        .d_write_data(d_write_data),
        .d_data_out(external_data),

        .wbm_done_pls_i(done_please),

        .wbm_dat_i(wbm_dat_i),
        .wbm_ack_i(wbm_ack_i),
        .wbm_dat_o(wbm_dat_o),
        .wbm_we_o(wbm_we_o),
        .wbm_sel_o(wbm_sel_o),
        .wbm_adr_o(wbm_adr_o),
        .wbm_cyc_o(wbm_cyc_o),
        .wbm_stb_o(wbm_stb_o)
     );

endmodule

