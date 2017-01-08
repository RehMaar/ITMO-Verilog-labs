`timescale 1ns / 1ps

/**
 Pipelined CPU
 */

module pipeline ( input wire         clk,
                  input wire         rst,

                  output             i_read_en,
                  output [31:0]      i_addr,

                  input [31:0]       i_instr_in,

                  input wb_done_i,

                  output wire        d_read_en,
                  output wire        d_write_en,
                  output wire [31:0] d_addr,
                  output wire [31:0] d_write_data,
                  input  wire [31:0] d_data_in
);

/* Interconnect wires*/
     wire [1:0]  pc_source;
     wire        pc_write;
     wire [31:0] jump_addr;
     wire [31:0] branch_addr;
     wire [31:0] next_i_addr;
     wire [31:0] i_fetched;             // fetched instrcution from if
     wire        if_id_write_en;        // write enable for IF/ID pipe reg

     wire [31:0] wreg_data;             // data to write into regfile

     wire [4:0]  ex_dst_reg;
     wire [5:0]  ex_opcode;

     wire [4:0]  id_rs;
     wire [4:0]  id_rt;
     wire [5:0]  id_opcode;

     wire        ID_EX_wb_reg_write;
     wire        ID_EX_wb_mem_to_reg;
     wire        ID_EX_mem_read;
     wire        ID_EX_mem_write;
     wire        ID_EX_ex_imm_command;
     wire        ID_EX_ex_alu_src_b;
     wire        ID_EX_ex_dst_reg_sel;
     wire [1:0]  ID_EX_ex_alu_op;
     wire [31:0] ID_EX_A;
     wire [31:0] ID_EX_B;
     wire [31:0] ID_EX_sign_extend_offset;
     wire [4:0]  ID_EX_rt;              // target register
     wire [4:0]  ID_EX_rd;              // destination register
     wire [4:0]  ID_EX_rs;              // source register
     wire [5:0]  ID_EX_opcode;

     wire [31:0] EX_MEM_alu_result;
     wire [31:0] EX_MEM_B_value;
     wire [4:0]  EX_MEM_dst_reg;
     wire [5:0]  EX_MEM_opcode;
     wire        EX_MEM_mem_read;
     wire        EX_MEM_mem_write;
     wire        EX_MEM_wb_reg_write;
     wire        EX_MEM_wb_mem_to_reg;

     wire [4:0]  MEM_WB_dst_reg;
     wire        MEM_WB_reg_write;
     wire        MEM_WB_mem_to_reg;
     wire [31:0] MEM_WB_mem_out;
     wire [31:0] MEM_WB_alu_out;

     wire        id_rt_is_source;
     wire        hazard_detected;

     // forwarding control signals for muxes
     wire [1:0]  if_rs_forward_control;
     wire [1:0]  id_rt_forward_control;
     wire [1:0]  ex_rs_forward_control;
     wire [1:0]  ex_rt_forward_control;

     if_stage ifetch_inst(
          .clk               ( clk ),
          .rst               ( rst ),

          .pstop_i(pstop),

          .if_id_write_en    ( if_id_write_en ),
          .pc_write          ( pc_write ),
          .pc_source         ( pc_source ),
          .i_read_en         ( i_read_en ),
          .i_addr            ( i_addr ),
          .i_instr_in        ( i_instr_in),
          .jump_addr         ( jump_addr ),
          .branch_addr       ( branch_addr ),
          .IF_ID_instruction ( i_fetched ),
          .IF_ID_next_i_addr ( next_i_addr ));

     hazard_unit hazard_inst(
          .clk ( clk ),               //                 isn't needed for now
          .rst ( rst ),               //                 isn't needed for now
          .ex_dst_reg ( ex_dst_reg ),

          .pstop_o(pstop),

          .mem_dst_reg ( EX_MEM_dst_reg ),
          .id_rs ( id_rs ),
          .id_rt ( id_rt ),
          .mem_opcode ( EX_MEM_opcode ),
          .ex_opcode ( ex_opcode ),
          .id_opcode ( id_opcode ),
          .id_rt_is_source ( id_rt_is_source ),
          .ex_reg_write ( ID_EX_wb_reg_write ),
          .mem_reg_write ( EX_MEM_wb_reg_write ),
          .pc_write ( pc_write ),
          .if_id_write_en ( if_id_write_en ),
          .wb_done_i(wb_done_i),
          .hazard_detected_o ( hazard_detected ));

     forwarding_unit forwarding_inst(
          .ex_mem_reg_write (EX_MEM_wb_reg_write),
          .mem_wb_reg_write (MEM_WB_reg_write),
          .ex_mem_dst_reg (EX_MEM_dst_reg),
          .mem_wb_dst_reg (MEM_WB_dst_reg),
          .id_ex_rs (ID_EX_rs),
          .id_ex_rt (ID_EX_rt),
          .if_id_rs (id_rs),
          .if_id_rt (id_rt),
          .if_rs_forward_control ( if_rs_forward_control ),
          .id_rt_forward_control ( id_rt_forward_control ),
          .ex_rs_forward_control ( ex_rs_forward_control ),
          .ex_rt_forward_control ( ex_rt_forward_control ));

     id_stage idecode_inst(
          .clk ( clk ),
          .rst ( rst ),
          .reg_write ( MEM_WB_reg_write ),
          .wreg_addr ( MEM_WB_dst_reg ),               // write register number
          .wreg_data ( wreg_data ),                    // data to write into regfile
          .instruction ( i_fetched ),
          .next_i_addr ( next_i_addr ),                // instruction fetched, next instruction address

          .pstop_i(pstop),

          .rs_fwd_sel ( if_rs_forward_control ),       // forwarding control signals
          .rt_fwd_sel ( id_rt_forward_control ),       // forwarding control signals
          .mem_fwd_val ( EX_MEM_alu_result ),          // forwarded data values from MEM
          .wb_fwd_val ( wreg_data ),                   // forwarded data values from WB

          .hazard ( hazard_detected ),
          .id_rs( id_rs ),
          .id_rt( id_rt ),
          .id_opcode( id_opcode ),

          .ID_EX_A ( ID_EX_A ),
          .ID_EX_B ( ID_EX_B ),
          .ID_EX_rt ( ID_EX_rt ),
          .ID_EX_rs ( ID_EX_rs ),
          .ID_EX_rd ( ID_EX_rd ),
          .ID_EX_opcode ( ID_EX_opcode ),
          .ID_EX_sign_extend_offset ( ID_EX_sign_extend_offset ),
          .ID_EX_wb_reg_write ( ID_EX_wb_reg_write ),
          .ID_EX_wb_mem_to_reg ( ID_EX_wb_mem_to_reg ),
          .ID_EX_mem_read ( ID_EX_mem_read ),
          .ID_EX_mem_write ( ID_EX_mem_write ),
          .ID_EX_ex_imm_command ( ID_EX_ex_imm_command ),
          .ID_EX_ex_alu_src_b ( ID_EX_ex_alu_src_b ),
          .ID_EX_ex_dst_reg_sel ( ID_EX_ex_dst_reg_sel ),
          .ID_EX_ex_alu_op ( ID_EX_ex_alu_op ),

          .branch_addr ( branch_addr ),
          .jump_addr ( jump_addr ),
          .id_rt_is_source ( id_rt_is_source ),
          .if_pc_source ( pc_source ));

     ex_stage execute_inst(
          .clk ( clk ),
          .rst ( rst ),
          .wb_reg_write ( ID_EX_wb_reg_write ),
          .wb_mem_to_reg ( ID_EX_wb_mem_to_reg ),
          .mem_read ( ID_EX_mem_read ),

          .pstop_i(pstop),

          .mem_write ( ID_EX_mem_write ),
          .ex_imm_command ( ID_EX_ex_imm_command ),
          .ex_alu_src_b ( ID_EX_ex_alu_src_b ),
          .ex_dst_reg_sel ( ID_EX_ex_dst_reg_sel ),
          .ex_alu_op ( ID_EX_ex_alu_op ),
          .A ( ID_EX_A ),
          .B ( ID_EX_B ),
          .sign_extend_offset ( ID_EX_sign_extend_offset ),
          .rt ( ID_EX_rt ),                                 // target register
          .rd ( ID_EX_rd ),                                 // destination register
          .opcode ( ID_EX_opcode ),
          .rs_fwd_sel ( ex_rs_forward_control ),            // forwarding muxes control
          .rt_fwd_sel ( ex_rt_forward_control ),            // forwarding muxes control
          .mem_fwd_val ( EX_MEM_alu_result ),               // forwarding from MEM
          .wb_fwd_val ( wreg_data ),                        // forwarding from WB
          .ex_dst_reg ( ex_dst_reg ),
          .ex_opcode ( ex_opcode ),
          .EX_MEM_alu_result ( EX_MEM_alu_result ),
          .EX_MEM_B_value ( EX_MEM_B_value ),
          .EX_MEM_dst_reg ( EX_MEM_dst_reg ),
          .EX_MEM_opcode ( EX_MEM_opcode ),
          .EX_MEM_mem_read ( EX_MEM_mem_read ),
          .EX_MEM_mem_write ( EX_MEM_mem_write ),
          .EX_MEM_wb_reg_write ( EX_MEM_wb_reg_write ),
          .EX_MEM_wb_mem_to_reg ( EX_MEM_wb_mem_to_reg ));

     mem_stage memstage_inst(
          .clk ( clk ),
          .rst ( rst ),
          .mem_read ( EX_MEM_mem_read ),
          .mem_write ( EX_MEM_mem_write ),
          .alu_result ( EX_MEM_alu_result ),
          .B ( EX_MEM_B_value ),
          .pstop_i(pstop),

          .dst_reg ( EX_MEM_dst_reg ),
          .wb_reg_write ( EX_MEM_wb_reg_write ),
          .wb_mem_to_reg ( EX_MEM_wb_mem_to_reg ),
          .MEM_WB_dst_reg ( MEM_WB_dst_reg ),
          .MEM_WB_reg_write ( MEM_WB_reg_write ),
          .MEM_WB_mem_to_reg ( MEM_WB_mem_to_reg ),
          .MEM_WB_mem_out ( MEM_WB_mem_out ),
          .MEM_WB_alu_out ( MEM_WB_alu_out ),
          .d_read_en ( d_read_en ),
          .d_write_en ( d_write_en ),
          .d_addr ( d_addr ),
          .d_write_data ( d_write_data ),
          .d_data_in ( d_data_in ));

     wb_stage wb_inst(
          .mem_to_reg ( MEM_WB_mem_to_reg ),
          .mem_out ( MEM_WB_mem_out ),
          .alu_out ( MEM_WB_alu_out ),
          .write_data ( wreg_data ));

endmodule
