module data_ram_wb #(   
     parameter addr_high = 32'h0000ffff,
     parameter addr_low  = 32'h00001000) (
// wishbone signals
     input  [31:0] dat_i,   
     output [31:0] dat_o,
     input  [31:0] adr_i,
     input         we_i,
     input  [3:0]  sel_i,
     input         cyc_i,
     input         stb_i,
     output reg    ack_o,
     input  [2:0]  cti_i,
// clock
     input         clk_i,
// async reset
     input         rst_i);
    
     wire [31:0] wr_data;
   
// mux for data to ram
     assign wr_data[31:24] = sel_i[3] ? dat_i[31:24] : dat_o[31:24];
     assign wr_data[23:16] = sel_i[2] ? dat_i[23:16] : dat_o[23:16];
     assign wr_data[15: 8] = sel_i[1] ? dat_i[15: 8] : dat_o[15: 8];
     assign wr_data[ 7: 0] = sel_i[0] ? dat_i[ 7: 0] : dat_o[ 7: 0];
   
     ram #(.addr_high(addr_high),
           .addr_low(addr_low),
           .read_only(1'b0)) data_memory(
          
          .data_i(wr_data),
          .data_o(dat_o),
          .addr_i(adr_i), 
          .wren_i(we_i & ack_o),
          .clk_i(clk_i));
          
// ack_o
     always @ (posedge clk_i or posedge rst_i) begin
          if (rst_i)
               ack_o <= 1'b0;
          else if (!ack_o) begin
               if (cyc_i & stb_i)
                    ack_o <= 1'b1; 
          end  
          else if ((sel_i != 4'b1111) | (cti_i == 3'b000) | (cti_i == 3'b111))
               ack_o <= 1'b0;
     end
         
endmodule
 
	      