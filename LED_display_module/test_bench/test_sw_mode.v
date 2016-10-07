module test_sw_mode;

    // Inputs
    reg [1:0] sw_state;
    reg clk;
    reg rst;
    // Outputs
    wire [26:0] time_value;
    wire count_en;


    sw_mode uut (
        .sw_state(sw_state), 
        .clk(clk), 
        .rst(rst),
        .tm_value(time_value), 
        .count_en(count_en)
    );

    initial begin

        sw_state = 0;
        clk = 0;
        rst = 0;

        #10
        rst = 1;
        #10
         rst = 0;
       sw_state = 1;
        #200
         sw_state = 2;
        #200
         sw_state = 3;

    end

    initial begin
        forever
            #10 clk = !clk;
    end
endmodule
