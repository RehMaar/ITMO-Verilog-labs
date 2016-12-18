`timescale 1ns / 1ps

module forwarding_unit (
     input        ex_mem_reg_write, 
     input        mem_wb_reg_write,
     input [4:0]  ex_mem_dst_reg, 
     input [4:0]  mem_wb_dst_reg,
     input [4:0]  id_ex_rs, 
     input [4:0]  id_ex_rt,
     input [4:0]  if_id_rs, 
     input [4:0]  if_id_rt,

     output [1:0] if_rs_forward_control, 
     output [1:0] id_rt_forward_control,
     output [1:0] ex_rs_forward_control, 
     output [1:0] ex_rt_forward_control );
   
     //tmp signals
     wire [3:0]   id_fwd_ctrl, ex_fwd_ctrl;

     // encoding for muxes control signals
     // general for both forwarding muxes
     // 2'b01 - from EX_MEM pipe reg
     // 2'b10 - from MEM_WB pipe reg
     // 2'b00 - no forwarding

     assign if_rs_forward_control = id_fwd_ctrl[0] ? 2'b01 : id_fwd_ctrl[2] ? 2'b10 : 2'b00;
     assign id_rt_forward_control = id_fwd_ctrl[1] ? 2'b01 : id_fwd_ctrl[3] ? 2'b10 : 2'b00;
     assign ex_rs_forward_control = ex_fwd_ctrl[0] ? 2'b01 : ex_fwd_ctrl[2] ? 2'b10 : 2'b00;
     assign ex_rt_forward_control = ex_fwd_ctrl[1] ? 2'b01 : ex_fwd_ctrl[3] ? 2'b10 : 2'b00;

     base_forwarding_unit ex_forwarding_inst(
          .ex_mem_reg_write(ex_mem_reg_write),
          .mem_wb_reg_write(mem_wb_reg_write),
          .ex_mem_dst_reg(ex_mem_dst_reg), 
          .mem_wb_dst_reg(mem_wb_dst_reg), 
          .rs(id_ex_rs), 
          .rt(id_ex_rt),			     
          .forward_control(ex_fwd_ctrl));

     base_forwarding_unit id_forwarding_inst(
          .ex_mem_reg_write(ex_mem_reg_write),
          .mem_wb_reg_write(mem_wb_reg_write),
          .ex_mem_dst_reg(ex_mem_dst_reg), 
          .mem_wb_dst_reg(mem_wb_dst_reg), 
          .rs(if_id_rs),
          .rt(if_id_rt),			     
          .forward_control(id_fwd_ctrl));
   
endmodule

/* Generic base logic module to implement forwarding
 *
 * Description of forward_control signal:
 * 0000 - no forwarding
 * 0001 - forwarding value from EX_MEM for replace rs value on destination stage.
 *        EX_MEM[Value] -> PIPE_STAGE[rs]
 * 0010 - forwarding value from EX_MEM for replace rt value on destination stage.
 *        EX_MEM[Value] -> PIPE_STAGE[rt]
 * 0100 - forwarding value from WB for replace rs value on destination stage.
 *        WB[Value] -> PIPE_STAGE[rs]
 * 1000 - forwarding value from WB for replace rt value on destination stage.
 *        WB[Value] -> PIPE_STAGE[rt] 
 * 0011 - forwarding value from EX_MEM for replace rs and rt value on destination stage
 *        EX_MEM[Value] -> PIPE_STAGE[rs]; EX_MEM[Value] -> PIPE_STAGE[rt]
 * 1100 - forwarding value from WB for replace Rs and Rt value on destination stage
 *        WB[Value] -> PIPE_STAGE[rs]; WB[Value] -> PIPE_STAGE[rt]
 * 0110 - forwarding value from EX_MEM for replace rt value on destination stage.
 *        EX_MEM[Value] -> PIPE_STAGE[rt]
 *        forwarding value from WB for replace rs value on destination stage.
 *        WB[Value] -> PIPE_STAGE[rs]
 * 1001 - forwarding value from EX_MEM for replace rs value on destination stage.
 *        EX_MEM[Value] -> PIPE_STAGE[rs]
 *        forwarding value from WB for replace rt value on destination stage.
 *        WB[Value] -> PIPE_STAGE[rt]
 */

module base_forwarding_unit ( input            ex_mem_reg_write, 
                              input            mem_wb_reg_write,
                              input      [4:0] ex_mem_dst_reg, 
                              input      [4:0] mem_wb_dst_reg, 
                              input      [4:0] rs, 
                              input      [4:0] rt,
	                     
                              output reg [3:0] forward_control);

     //service signals
     reg ex_mem_dst_reg_is_not_zero;
     reg mem_wb_dst_reg_is_not_zero;
   
     always @* begin
          ex_mem_dst_reg_is_not_zero = |ex_mem_dst_reg;
          mem_wb_dst_reg_is_not_zero = |mem_wb_dst_reg;
          
          forward_control = 4'h0;        
        
          if (ex_mem_reg_write & ex_mem_dst_reg_is_not_zero) begin
               if (ex_mem_dst_reg == rs) 
                    forward_control[0] = 1'b1;
               else 
                    forward_control[0] = 1'b0;
	     
               if (ex_mem_dst_reg == rt) 
                    forward_control[1] = 1'b1;
               else 
                    forward_control[1] = 1'b0;
          end
          else 
               forward_control[1:0] = 2'b00;
	
          if (mem_wb_reg_write & mem_wb_dst_reg_is_not_zero) begin
               if ((mem_wb_dst_reg == rs) & (ex_mem_dst_reg != rs)) 
                    forward_control[2] = 1'b1;
               else 
                    forward_control[2] = 1'b0;
	     
               if ((mem_wb_dst_reg == rt) & (ex_mem_dst_reg != rt))
                    forward_control[3] = 1'b1;
               else 
                    forward_control[3] = 1'b0;
          end
          else
               forward_control[3:2] = 2'b00;
     end
     
endmodule
