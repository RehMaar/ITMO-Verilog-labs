`timescale 1ns / 1ps

/**
 ALU Unit
 */
module alu ( input      [4:0]  alu_ctl, 
             input      [31:0] a_in, b_in, 
             output reg [31:0] result, 
             output            zero_flag );
   
     assign zero_flag = (result == 0);
   
     always @(alu_ctl, a_in, b_in) begin         // reevaluate if these change
          case (alu_ctl)
               0:  result = a_in & b_in;         // bitwise and
               1:  result = a_in | b_in;         // bitwise or
               2:  result = a_in + b_in;         // addition
               6:  result = a_in - b_in;         // substraction
               7:  result = a_in < b_in ? 1 : 0; // set on less than
               8:  result = ~(a_in | b_in);      // bitwise nor
               9:  result = a_in ^ b_in;         // bitwise xor
               default: result = 0;
          endcase
     end
   
endmodule
