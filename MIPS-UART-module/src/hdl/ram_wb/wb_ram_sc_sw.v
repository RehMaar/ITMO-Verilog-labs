module ram #(
     parameter addr_high = 32'h00000fff,
     parameter addr_low  = 32'h00000000,
     parameter [0:0] read_only = 1'b0) (
//Default data_ram has a 1024 words depth.     
     input      [31:0] data_i,
     input      [31:0] addr_i,
     input             wren_i,
     output reg [31:0] data_o,
     input             clk_i);    
     
     wire [31:0] addr_real = addr_i - addr_low;
   
     reg [31:0] memory [0:addr_high - addr_low] /* synthesis ram_style = no_rw_check */;
      
     initial begin
          $readmemh("data.rom", memory, 0, addr_high - addr_low);      
     end
      
     always @ (posedge clk_i) begin 
          data_o <= memory[addr_real];
          
          if (wren_i && !read_only)
               memory[addr_real] <= data_i;
     end 

endmodule // ram
