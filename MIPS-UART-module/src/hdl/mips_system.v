/*
 MIPS System: CPU Core + Memory
 */

module mips_system (
    input wire    clk,
    input wire    rst,

    input  [15:0] sw,
    output [15:0] led,

    input   rx,
    output  tx
);
     localparam [31:0] instr_addr_high  = 32'h000001ff,
                       instr_addr_low   = 32'h00000000,
                       data_addr_high   = 32'h000003ff,
                       data_addr_low    = 32'h00000200,

                       gpio_base_addr   = 32'h00000400,
                       ioctrl_base_addr = 32'h00000800;

     wire        i_read_en;
     wire [31:0] i_addr;
     wire [31:0] i_instr;
     wire        d_read_en;
     wire        d_write_en;
     wire [31:0] d_addr;
     wire [31:0] d_write_data;
     wire [31:0] d_read_data;

     // GPIO wb signals
     wire [31:0] gpio_dat_i;
     wire [31:0] gpio_dat_o;
     wire [31:0] gpio_adr_i;
     wire gpio_we_i;
     wire [3:0] gpio_sel_i;
     wire gpio_cyc_i;
     wire gpio_stb_i;
     wire gpio_ack_o;

     // IOCTRL wb signals
     wire [31:0] ioctrl_dat_i;
     wire [31:0] ioctrl_dat_o;
     wire [31:0] ioctrl_adr_i;
     wire ioctrl_we_i;
     wire [3:0] ioctrl_sel_i;
     wire ioctrl_cyc_i;
     wire ioctrl_stb_i;
     wire ioctrl_ack_o;

     // MIPS wb signals
     wire [31:0] mips_wbm_dat_i;
     wire mips_wbm_ack_i;
     wire [31:0] mips_wbm_dat_o;
     wire mips_wbm_we_o;
     wire [3:0] mips_wbm_sel_o;
     wire [31:0] mips_wbm_adr_o;
     wire mips_wbm_cyc_o;
     wire mips_wbm_stb_o;

     // RAM wishbone signals
     wire [31:0] ram_dat_i;
     wire [31:0] ram_dat_o;
     wire [31:0] ram_addr_i;
     wire ram_we_i;
     wire [3:0] ram_sel_i;
     wire ram_cyc_i;
     wire ram_stb_i;
     wire ram_ack_o;
     wire [2:0] ram_cti_i = 0; // classic cycle

     gpio_wb #(gpio_base_addr) gpio_inst(

        // system signals
        .clk_i(clk),
        .rst_i(rst),

        // wb signals
        .dat_i(gpio_dat_i),
        .dat_o(gpio_dat_o),
        .adr_i(gpio_adr_i),
        .we_i(gpio_we_i),
        .sel_i(gpio_sel_i),
        .cyc_i(gpio_cyc_i),
        .stb_i(gpio_stb_i),
        .ack_o(gpio_ack_o),

        // func signals
        .sw_bi(sw),
        .gpio_bo(led)
     );


     ioctrl_wb #(ioctrl_base_addr) ioctrl_inst(

        // system signals
        .clk_i(clk),
        .rst_i(rst),

        // wb signals
        .dat_i(ioctrl_dat_i),
        .dat_o(ioctrl_dat_o),
        .adr_i(ioctrl_adr_i),
        .we_i(ioctrl_we_i),
        .sel_i(ioctrl_sel_i),
        .cyc_i(ioctrl_cyc_i),
        .stb_i(ioctrl_stb_i),
        .ack_o(ioctrl_ack_o),

        //UART
        .tx(tx),
        .rx(rx)
     );

     data_ram_wb #(
        .addr_high(data_addr_high),
        .addr_low(data_addr_low)) ram_inst(
             .dat_i(ram_dat_i),
             .dat_o(ram_dat_o),
             .adr_i(ram_addr_i),
             .we_i(ram_we_i),
             .sel_i(ram_sel_i),
             .cyc_i(ram_cyc_i),
             .stb_i(ram_stb_i),
             .ack_o(ram_ack_o),
             .cti_i(ram_cti_i),
             .clk_i(clk),
             .rst_i(rst));

     intercon wb_inst (
        // wishbone master port(s)
        // mips_wbm
        .mips_wbm_dat_i(mips_wbm_dat_i),
        .mips_wbm_ack_i(mips_wbm_ack_i),
        .mips_wbm_dat_o(mips_wbm_dat_o),
        .mips_wbm_we_o(mips_wbm_we_o),
        .mips_wbm_sel_o(mips_wbm_sel_o),
        .mips_wbm_adr_o(mips_wbm_adr_o),
        .mips_wbm_cyc_o(mips_wbm_cyc_o),
        .mips_wbm_stb_o(mips_wbm_stb_o),
        // wishbone slave port(s)
        // ram_wbs
        .ram_wbs_dat_o(ram_dat_o),
        .ram_wbs_ack_o(ram_ack_o),
        .ram_wbs_dat_i(ram_dat_i),
        .ram_wbs_we_i(ram_we_i),
        .ram_wbs_sel_i(ram_sel_i),
        .ram_wbs_adr_i(ram_addr_i),
        .ram_wbs_cyc_i(ram_cyc_i),
        .ram_wbs_stb_i(ram_stb_i),
        // wbs1
        .wbs1_dat_o(gpio_dat_o),
        .wbs1_ack_o(gpio_ack_o),
        .wbs1_dat_i(gpio_dat_i),
        .wbs1_we_i(gpio_we_i),
        .wbs1_sel_i(gpio_sel_i),
        .wbs1_adr_i(gpio_adr_i),
        .wbs1_cyc_i(gpio_cyc_i),
        .wbs1_stb_i(gpio_stb_i),
        // wbs2
        .wbs2_dat_o(ioctrl_dat_o),
        .wbs2_ack_o(ioctrl_ack_o),
        .wbs2_dat_i(ioctrl_dat_i),
        .wbs2_we_i(ioctrl_we_i),
        .wbs2_sel_i(ioctrl_sel_i),
        .wbs2_adr_i(ioctrl_adr_i),
        .wbs2_cyc_i(ioctrl_cyc_i),
        .wbs2_stb_i(ioctrl_stb_i),
        // clock and reset
        .clk(clk),
        .reset(rst)
     );

     pipeline pipeline_inst (
          .clk(clk),
          .rst(rst),
          .wb_done_i(wb_done),
          .i_read_en(i_read_en),
          .i_addr(i_addr),
          .i_instr_in(i_instr),
          .d_read_en(d_read_en),
          .d_write_en(d_write_en),
          .d_addr(d_addr),
          .d_write_data(d_write_data),
          .d_data_in(d_read_data));

     bus_control #(
          .addr_high(instr_addr_high),
          .addr_low(instr_addr_low)) memory_inst (
               .clk(clk),
               .rst(rst),
               .i_read_en(i_read_en),
               .i_addr(i_addr),
               .i_instr_out(i_instr),
               .d_read_en(d_read_en),
               .d_write_en(d_write_en),
               .d_addr(d_addr),
               .d_write_data(d_write_data),
               .d_data_out(d_read_data),

               .wb_done_o(wb_done),

               .wbm_dat_i(mips_wbm_dat_i),
               .wbm_ack_i(mips_wbm_ack_i),
               .wbm_dat_o(mips_wbm_dat_o),
               .wbm_we_o(mips_wbm_we_o),
               .wbm_sel_o(mips_wbm_sel_o),
               .wbm_adr_o(mips_wbm_adr_o),
               .wbm_cyc_o(mips_wbm_cyc_o),
               .wbm_stb_o(mips_wbm_stb_o));

endmodule // mips_system
