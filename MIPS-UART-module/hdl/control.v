`timescale 1ns / 1ps

module control( input [5:0]      opcode,
                input            branch_eq,       // result of comparison for conditional branch

                output reg [1:0] if_pc_source,
                output           id_rt_is_source, // rt is source

                output           ex_imm_command,
                output reg       ex_alu_src_b,
                output reg       ex_dst_reg_sel,
                output reg [1:0] ex_alu_op,
                output reg       mem_read,
                output reg       mem_write,
                output reg       wb_mem_to_reg,
                output reg       wb_reg_write );

     //opcodes
     localparam     LW    = 6'b100011, 
                    SW    = 6'b101011, 
                    BEQ   = 6'b000100, 
                    RTYPE = 6'b0, 
                    J     = 6'd2,
                    JAL   = 6'd3,			
                    ADDI  = 6'b001000, 
                    ANDI  = 6'b001100, 
                    ORI   = 6'b001101, 
                    XORI  = 6'b001110, 
                    SLTI  = 6'b001010;  
     //--------------------------------
   
     reg memory_op;
     reg r_type_op;
     reg immediate_op;
     reg branch_op;
     reg jump_op;
   
     assign ex_imm_command = immediate_op;
     assign id_rt_is_source = (r_type_op | branch_op | opcode == SW);
                         
     always @* begin
     //default values
          if_pc_source   = 0;
          ex_alu_src_b   = 0;
          ex_dst_reg_sel = 0;
          ex_alu_op      = 0;
          mem_read       = 0;
          mem_write      = 0;
          wb_mem_to_reg  = 0;
          wb_reg_write   = 0;

          memory_op    = ( (opcode == LW) | (opcode == SW) );
          r_type_op    = ( opcode == RTYPE );
          branch_op    = ( opcode == BEQ );
          immediate_op = ( (opcode == ADDI) | (opcode == ANDI) | (opcode == ORI) | (opcode == XORI) | (opcode == SLTI) );
          jump_op      = ( opcode == J);
        
          if (memory_op) begin
               ex_alu_src_b   = 1'b1;  // select sign_extend_offset input
               ex_dst_reg_sel = 1'b0;  // rt
               ex_alu_op      = 2'b00; // add op
               wb_mem_to_reg  = 1'b1;  // select mem_out
           
               if ( opcode == LW ) begin
                    mem_read = 1'b1;
                    wb_reg_write = 1'b1;              
               end
               else 
                    mem_write = 1'b1;       // opcode == SW 
          end
          else if (r_type_op) begin
               ex_alu_src_b = 1'b0;    // select B input
               ex_dst_reg_sel = 1'b1;  // rd
               ex_alu_op = 2'b10;      // operaction defined by func code
           
               wb_mem_to_reg = 1'b0;   // alu_out
               wb_reg_write  = 1'b1;   // write result to regfile           
          end
          else if (immediate_op) begin
               ex_alu_src_b = 1'b1;    // select sign_extend_offset input
               ex_dst_reg_sel = 1'b0;  // rt
               ex_alu_op = 2'b10;      // operation defined by function code

               wb_mem_to_reg = 1'b0;   // alu_out
               wb_reg_write = 1'b1;           
          end
          else if (branch_op) begin
               if (branch_eq) 
                    if_pc_source = 2'b01; // PC <= branch_addr
               else 
                    if_pc_source = 2'b00;
           
          end
          else if (jump_op)
               if_pc_source = 2'b10;  // PC <= jump_addr
          else begin
               //NOP
          end
     end
   
endmodule
