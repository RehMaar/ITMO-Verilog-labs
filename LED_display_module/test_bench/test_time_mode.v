module test_time_mode;

    // Inputs
    reg clk;
    reg rst;
    reg [26:0] tm_value;
    reg count_en;

    // Outputs
    wire fc;

    time_mode uut (
        .clk(clk), 
        .rst(rst), 
        .tm_value(tm_value), 
        .count_en(count_en), 
        .fc(fc)
    );

    initial begin
        forever 
            #10 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst = 0;
        tm_value = 0;
        count_en = 0;

        #10;
        rst = 1;
        #100;
        rst = 0;
        count_en = 1;
      tm_value = 20;

    end
      
endmodule

