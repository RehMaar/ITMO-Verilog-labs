`timescale 1ns / 1ps

/**
 ALU Unit
 */
module alu ( input      [4:0]  alu_ctl,
             input      [31:0] a_in, b_in,
             output reg [31:0] result,
             output            zero_flag );

     assign zero_flag = (result == 0);

     function integer clb;
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
            clb = i;
        end
     endfunction

/*
     function integer clb;
        input [31:0]b;
        input var;
        integer i;
        reg a;
        begin
            a = 1;
            clb = 0;
            for (i = 0; i < 32; i = i + 1) begin
                if (a && var == b[31-i]) begin
                    clb = clb + 1;
                end else begin
                    a = 0;
                end
            end
        end
     endfunction
*/
/*
     function integer clb;
        input [31:0]b;
        integer i;
        reg a;
        begin
            a = 1;
            clb = 0;
            casez (b[31:24])
                8'b00000000:   begin 
                    clb = clb + 8;
                    casez (b[23:16])
                        8'b00000000:   begin 
                            clb = clb + 8;
                            casez (b[15:8])
                                8'b00000000:   begin 
                                    clb = clb + 8;
                                    casez (b[7:0])
                                        8'b00000000: clb = clb + 8;
                                        8'b00000001:   clb = clb + 7;
                                        8'b0000001?:   clb = clb + 6;
                                        8'b000001??:   clb = clb + 5;
                                        8'b00001???:   clb = clb + 4;
                                        8'b0001????:   clb = clb + 3;
                                        8'b001?????:   clb = clb + 2;
                                        8'b01??????:   clb = clb + 1;
                                        8'b1???????:   clb = clb + 0;
                                    endcase
                                end
                                8'b00000001:   clb = clb + 7;
                                8'b0000001?:   clb = clb + 6;
                                8'b000001??:   clb = clb + 5;
                                8'b00001???:   clb = clb + 4;
                                8'b0001????:   clb = clb + 3;
                                8'b001?????:   clb = clb + 2;
                                8'b01??????:   clb = clb + 1;
                                8'b1???????:   clb = clb + 0;
                            endcase
                        end
                        8'b00000001:   clb = clb + 7;
                        8'b0000001?:   clb = clb + 6;
                        8'b000001??:   clb = clb + 5;
                        8'b00001???:   clb = clb + 4;
                        8'b0001????:   clb = clb + 3;
                        8'b001?????:   clb = clb + 2;
                        8'b01??????:   clb = clb + 1;
                        8'b1???????:   clb = clb + 0;
                    endcase
                end
                8'b00000001:   clb = clb + 7;
                8'b0000001?:   clb = clb + 6;
                8'b000001??:   clb = clb + 5;
                8'b00001???:   clb = clb + 4;
                8'b0001????:   clb = clb + 3;
                8'b001?????:   clb = clb + 2;
                8'b01??????:   clb = clb + 1;
                8'b1???????:   clb = clb + 0;
            endcase
        end
     endfunction
*/
     always @(alu_ctl, a_in, b_in) begin         // reevaluate if these change
          case (alu_ctl)
               0:  result = a_in & b_in;         // bitwise and
               1:  result = a_in | b_in;         // bitwise or
               2:  result = a_in + b_in;         // addition
               6:  result = a_in - b_in;         // substraction
               7:  result = a_in < b_in ? 1 : 0; // set on less than
               8:  result = ~(a_in | b_in);      // bitwise nor
               9:  result = a_in ^ b_in;         // bitwise xor
               10:                         // count leading zeros
                   result = clb(b_in,1);
               11:                          // count leading ones
                   result = clb(b_in,0);
               default: result = 0;
          endcase
     end

endmodule
