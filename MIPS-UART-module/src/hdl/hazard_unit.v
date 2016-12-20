`timescale 1ns / 1ps

module hazard_unit( input       clk,       //     isn't needed for now
                    input       rst,       //     isn't needed for now
                    input [4:0] ex_dst_reg,
                    input [4:0] mem_dst_reg,
                    input [4:0] id_rs,
                    input [4:0] id_rt,	

                    input wb_done_i,
                    
                    output pstop_o,

                    input [5:0] mem_opcode, 
                    input [5:0] ex_opcode, 
                    input [5:0] id_opcode,
                    
                    input       id_rt_is_source,
                    input       ex_reg_write,
                    input       mem_reg_write,
                    
                    output      pc_write,
                    output      if_id_write_en,
                    output      hazard_detected_o );

     localparam     LW  = 6'b100011, 
                    SW  = 6'b101011,
                    BEQ = 6'b000100;

     assign pc_write       = ~hazard_detected_o;
     assign if_id_write_en = ~hazard_detected_o;
     
     reg mem_wait_r;
     reg hazard_detected;
     
     assign hazard_detected_o = hazard_detected;
     
     assign pstop_o = mem_wait_r;
     
     always@(posedge clk, posedge rst) begin
        if(rst)  
            mem_wait_r = 0;
        else if (wb_done_i)
            mem_wait_r = 0;
        else if (id_opcode == LW || id_opcode == SW)
            mem_wait_r = (id_opcode == LW || id_opcode == SW);
     end
     
     reg [1:0] coincidence;
   
     always @* begin
          coincidence = 0;

          if (ex_reg_write && ( (id_rs == ex_dst_reg) | ( (id_rt == ex_dst_reg) && id_rt_is_source)))
               coincidence[0] = 1'b1;
          else if (mem_reg_write && ( (id_rs == mem_dst_reg) | ( (id_rt == mem_dst_reg) && id_rt_is_source)))
               coincidence[1] = 1'b1;        
     end

     always @* begin
          hazard_detected = 0;
        
          if (coincidence [0]) begin
               if ( id_opcode == BEQ && ex_opcode == LW )
                    hazard_detected = 1;
               else if ( id_opcode == BEQ && ex_opcode != LW)
                    hazard_detected = 1;
               else if ( id_opcode != BEQ && ex_opcode == LW)
                    hazard_detected = 1;             
          end
          else if (coincidence [1]) begin
               if (id_opcode == BEQ && mem_opcode == LW)
                    hazard_detected = 1;             
          end
     end
     
endmodule
