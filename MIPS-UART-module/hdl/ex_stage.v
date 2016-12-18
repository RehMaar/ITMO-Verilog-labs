module ex_stage( input             clk,
                 input             rst,
                 input             wb_reg_write,
                 input             wb_mem_to_reg,               
                 input             mem_read, 
                 input             mem_write,
                 input             ex_imm_command,
                 input             ex_alu_src_b,
                 input             ex_dst_reg_sel,
                 input [1:0]       ex_alu_op,
                 
                 input pstop_i,
                
                 input [31:0]      A,
                 input [31:0]      B,
                 input [31:0]      sign_extend_offset,
                 input [4:0]       rt,                 // target register
                 input [4:0]       rd,                 // destination register
                 input [5:0]       opcode, 
                 input [1:0]       rs_fwd_sel,         // forwarding muxes control
                 input [1:0]       rt_fwd_sel,         // forwarding muxes control
                 input [31:0]      mem_fwd_val,        // forwarding from EX_MEM
                 input [31:0]      wb_fwd_val,         // forwarding from WB
                
                 output [4:0]      ex_dst_reg,
                 output [5:0]      ex_opcode,
                
                 output reg [31:0] EX_MEM_alu_result,
                 output reg [31:0] EX_MEM_B_value,
                 output reg [4:0]  EX_MEM_dst_reg,
                 output reg [5:0]  EX_MEM_opcode,                 
                 output reg        EX_MEM_mem_read,
                 output reg        EX_MEM_mem_write,
                 output reg        EX_MEM_wb_reg_write,
                 output reg        EX_MEM_wb_mem_to_reg );

     wire [5:0]  func_field;     // func code field in instruction
     wire [5:0]  func_code;      // func code for ALU control   
     wire [4:0]  alu_ctl;        // ALU control lines

     reg  [31:0] alu_a_in;
     wire [31:0] alu_b_in;
     reg  [31:0] b_value;
   
     wire [31:0] alu_result;                    
     wire        zero;

     always @* begin
          case(rs_fwd_sel)
               0: alu_a_in = A;
               1: alu_a_in = mem_fwd_val;
               2: alu_a_in = wb_fwd_val;
               default: alu_a_in = 0;   // 
          endcase
     end

     always @* begin
          case(rt_fwd_sel)
               0: b_value = B;
               1: b_value = mem_fwd_val;
               2: b_value = wb_fwd_val;
               default: b_value = 0;    //
          endcase
     end

     assign alu_b_in   = ex_alu_src_b ? sign_extend_offset : b_value;
     assign func_field = sign_extend_offset [5:0]; // looks wierd, but func code is encoded there
     assign func_code  = ex_imm_command ? {{2'b10},{~opcode[2] & opcode[1] & ~opcode[0]},opcode[2:0]} : func_field;
     assign ex_opcode  = opcode;
     assign ex_dst_reg = ex_dst_reg_sel ? rd : rt;
 
     alu_ctrl aluctl_inst(
          .alu_op    (ex_alu_op),
          .func_code (func_code),
          .alu_ctl   (alu_ctl));

     alu alu_inst(
          .alu_ctl   (alu_ctl), 
          .a_in      (alu_a_in), 
          .b_in      (alu_b_in), 
          .result    (alu_result), 
          .zero_flag (zero));

     // EX/MEM Pipeline register
     always @(posedge clk) begin
          if (rst) begin
                EX_MEM_alu_result <= 0;
                EX_MEM_B_value <= 0;
                EX_MEM_dst_reg <= 0;
                EX_MEM_mem_read <= 0;
                EX_MEM_mem_write <= 0;
                EX_MEM_wb_reg_write <= 0;
                EX_MEM_wb_mem_to_reg <= 0;
          end
          else begin
                EX_MEM_alu_result <= alu_result;
                EX_MEM_B_value <= b_value;
                EX_MEM_dst_reg <= ex_dst_reg;
                EX_MEM_opcode <= opcode;           
                EX_MEM_mem_read <= mem_read;
                EX_MEM_mem_write <= mem_write;
                EX_MEM_wb_reg_write <= wb_reg_write;
                EX_MEM_wb_mem_to_reg <= wb_mem_to_reg;
          end
     end
 
endmodule
