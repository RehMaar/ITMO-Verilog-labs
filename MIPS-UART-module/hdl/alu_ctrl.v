`timescale 1ns / 1ps

/**
ALU Control unit
 */
module alu_ctrl( input      [1:0] alu_op,
                 input      [5:0] func_code,
		       output reg [4:0] alu_ctl );
   
     always @* begin
          if(alu_op == 0)       
               alu_ctl = 2;             // add      
          else if(alu_op == 1)  
               alu_ctl = 6;      
          else case( func_code )
               32: alu_ctl = 2;	     // add
               34: alu_ctl = 6;	     // subtract
               36: alu_ctl = 0;	     // and
               37: alu_ctl = 1;	     // or
               38: alu_ctl = 9;	     // xor
               39: alu_ctl = 8;	     // nor
               42: alu_ctl = 7;	     // slt
               default: alu_ctl = 15;   // should not happen
          endcase
     end
   
endmodule

