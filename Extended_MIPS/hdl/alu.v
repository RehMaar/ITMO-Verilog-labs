`timescale 1ns / 1ps

/**
 ALU Unit
 */
module alu ( input      [4:0]  alu_ctl,
             input      [31:0] a_in, b_in,
             output reg [31:0] result,
             output            zero_flag );

     assign zero_flag = (result == 0);
     integer i = 0;
     reg stop = 1;

     function integer clx;
        input [31:0]b;
        input var;
        integer i;
        begin
            begin : CLXLOOP
                for (i = 0; i < 32; i = i + 1)
                    if (var == b[31-i]) begin
                        disable CLXLOOP;
                    end
            end
            clx = i[7:0];
        end
     endfunction

     always @(alu_ctl, a_in, b_in) begin         // reevaluate if these change
          stop = 1;
          case (alu_ctl)
               0:  result = a_in & b_in;         // bitwise and
               1:  result = a_in | b_in;         // bitwise or
               2:  result = a_in + b_in;         // addition
               6:  result = a_in - b_in;         // substraction
               7:  result = a_in < b_in ? 1 : 0; // set on less than
               8:  result = ~(a_in | b_in);      // bitwise nor
               9:  result = a_in ^ b_in;         // bitwise xor
               // CHANGED
               10:                         // count leading zeros
                   result = clx(b_in, 1);
               11:                          // count leading ones
                   result = clx(b_in, 0);
               default: result = 0;
          endcase
     end

endmodule
