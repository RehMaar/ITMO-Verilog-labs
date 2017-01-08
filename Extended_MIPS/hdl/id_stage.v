`timescale 1ns / 1ps
/*
 Instruction decode pipeline stage
 */

module id_stage( input             clk, rst,
                 input             reg_write,
                 input [4:0]       wreg_addr,                // write register number
                 input [31:0]      wreg_data,                // data to write into regfile
                 input [31:0]      instruction, next_i_addr, // instruction fetched, next instruction address

                 //inputs to support forwarding
                 input [1:0]       rs_fwd_sel, rt_fwd_sel,   // forwarding control signals
                 input [31:0]      mem_fwd_val, wb_fwd_val,  // forwarded data values

                 input             hazard,
                 input             pstop_i,

                 //outputs
                 output [4:0] id_rs,
                 output [4:0] id_rt,
                 output [5:0] id_opcode,

                 output reg [31:0] ID_EX_A,
                 output reg [31:0] ID_EX_B,
                 output reg [4:0]  ID_EX_rt,
                 output reg [4:0]  ID_EX_rs,
                 output reg [4:0]  ID_EX_rd,
                 output reg [5:0]  ID_EX_opcode,
                 output reg [31:0] ID_EX_sign_extend_offset,
                 output reg        ID_EX_wb_reg_write,
                 output reg        ID_EX_wb_mem_to_reg,
                 output reg        ID_EX_mem_read,
                 output reg        ID_EX_mem_write,
                 output reg        ID_EX_ex_imm_command,
                 output reg        ID_EX_ex_alu_src_b,
                 output reg        ID_EX_ex_dst_reg_sel,
                 output reg [1:0]  ID_EX_ex_alu_op,

                 output [31:0]     branch_addr, jump_addr,    // branch and jump adresses
                 output            id_rt_is_source,
                 output [1:0]      if_pc_source );

     reg  [31:0] A, B;
     wire [31:0] a_out;
     wire [31:0] b_out;
     wire [31:0] sign_extend_offset;

     wire        ex_imm_command;
     wire        ex_alu_src_b;
     wire        ex_dst_reg_sel;
     wire [1:0]  ex_alu_op;
     wire        mem_read;
     wire        mem_write;
     wire        wb_mem_to_reg;
     wire        wb_reg_write;
     wire        is_nop;
     wire        branch_eq;

     regfile regfile_inst (
          .clk( clk ),
          .rst( rst ),
          .raddr1( instruction[25:21] ),
          .raddr2( instruction[20:16] ),
          .waddr( wreg_addr ),
          .wdata( wreg_data ),
          .w_en( reg_write ),
          .rdata1( a_out ),
          .rdata2( b_out )
      );

     // Forwarding muxes
     always @* begin
          A = 0;
          case (rs_fwd_sel)
               0: A = a_out;
               1: A = mem_fwd_val;
               2: A = wb_fwd_val;
          endcase
     end

     always @* begin
          B = 0;
          case (rt_fwd_sel)
               0: B = b_out;
               1: B = mem_fwd_val;
               2: B = wb_fwd_val;
          endcase
     end

     assign sign_extend_offset = { { 16{instruction[15]} }, instruction [15:0]};
     assign branch_addr = next_i_addr + ( sign_extend_offset << 2 );
     assign jump_addr = {next_i_addr[31:28], instruction[25:0], 2'b00 };
     assign branch_eq = ( A == B);

     assign id_rs = instruction[25:21];
     assign id_rt =  instruction[20:16];
     assign id_opcode = instruction[31:26];

     assign is_nop = ~|instruction;

     //Control Unit -- Opcode Decoder

     control cunit_instance (
          .opcode( instruction [31:26] ),
          .branch_eq( branch_eq ),
          .id_rt_is_source(id_rt_is_source),
          .if_pc_source(if_pc_source),
          .ex_imm_command(ex_imm_command),
          .ex_alu_src_b(ex_alu_src_b),
          .ex_dst_reg_sel(ex_dst_reg_sel),
          .ex_alu_op(ex_alu_op),
          .mem_read(mem_read),
          .mem_write(mem_write),
          .wb_mem_to_reg(wb_mem_to_reg),
          .wb_reg_write(wb_reg_write)
      );

     //ID/EX Pipeline register

     always @(posedge clk) begin
          if (rst) begin
               ID_EX_A <= 0;
               ID_EX_B <= 0;
               ID_EX_rt <= 0;
               ID_EX_rs <= 0;
               ID_EX_rd <= 0;
               ID_EX_opcode <= 0;
               ID_EX_sign_extend_offset <= 0;
               ID_EX_wb_reg_write <= 0;
               ID_EX_wb_mem_to_reg <= 0;
               ID_EX_mem_read <= 0;
               ID_EX_mem_write <= 0;
               ID_EX_ex_imm_command <= 0;
               ID_EX_ex_alu_src_b <= 0;
               ID_EX_ex_dst_reg_sel <= 0;
               ID_EX_ex_alu_op <= 0;
          end
          else begin

               if(!pstop_i) begin
                   ID_EX_A <= A;
                   ID_EX_B <= B;
                   ID_EX_rt <= id_rt;
                   ID_EX_rs <= id_rs;
                   ID_EX_rd <= instruction[15:11];

                   ID_EX_opcode <= id_opcode;

                   ID_EX_sign_extend_offset <= sign_extend_offset;
               end

               if(!pstop_i) begin
                   if (is_nop || hazard) begin
                        ID_EX_wb_reg_write   <= 0;
                        ID_EX_wb_mem_to_reg  <= 0;
                        ID_EX_mem_read       <= 0;
                        ID_EX_mem_write      <= 0;
                        ID_EX_ex_imm_command <= 0;
                        ID_EX_ex_alu_src_b   <= 0;
                        ID_EX_ex_dst_reg_sel <= 0;
                        ID_EX_ex_alu_op      <= 0;
                    end
                    else begin
                        ID_EX_wb_reg_write <= wb_reg_write;
                        ID_EX_wb_mem_to_reg <= wb_mem_to_reg;
                        ID_EX_mem_read <= mem_read;
                        ID_EX_mem_write <= mem_write;
                        ID_EX_ex_imm_command <= ex_imm_command;
                        ID_EX_ex_alu_src_b <= ex_alu_src_b;
                        ID_EX_ex_dst_reg_sel <= ex_dst_reg_sel;
                        ID_EX_ex_alu_op <= ex_alu_op;
                    end
                end
          end
     end

endmodule
