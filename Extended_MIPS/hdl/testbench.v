`timescale 1ns / 1ps


module testbench;
     
     //Inputs
     reg mips_clk;
     reg mips_rst;
     reg [15:0] sw;
                  
     //Outputs
     wire [15:0] led;

     //Instantiate the Unit Under Test (UUT)
     mips_system uut (
          .clk(mips_clk), 
          .rst(mips_rst), 
		    
          .sw(sw),
          .led(led)
     );

     initial begin
          mips_rst = 1;

          // Wait 100 ns for global reset to finish
          #100;
          mips_rst = 0;
      
     end // initial begin

     initial begin
          mips_clk = 0;
          sw = 7;
          forever
               #10 mips_clk = !mips_clk;      
     end
     
	integer i;
     
     initial begin
          for (i = 0; i < 500; i=i+1)
               @(posedge mips_clk);

          $stop();      
     end

     initial begin
          $display("Trace register $t0");
          
          @(negedge mips_rst);

          forever begin
               @(posedge mips_clk);

               $display("%d ns: $t0 (REG8) = %x", $time, uut.pipeline_inst.idecode_inst.regfile_inst.rf[8]);
               $display("%d ns: $t1 (REG9) = %x", $time, uut.pipeline_inst.idecode_inst.regfile_inst.rf[9]);           
          end
     end
   
endmodule

