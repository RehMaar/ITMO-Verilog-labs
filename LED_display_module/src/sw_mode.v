// Module chooses time for animation speed.
module sw_mode(
    input              clk,
    input              rst,
    input     [1:0]    sw_state,

    output reg[26:0]   tm_value,
    output             count_en
);


    parameter TM_STATE_1 = 100000000;
    parameter TM_STATE_2 = 50000000;
    parameter TM_STATE_3 = 20000000;

    assign count_en = sw_state[0] | sw_state[1];

    always @( posedge clk ) begin
        if( rst )
            tm_value <= 0;
        else
            case( sw_state )
                0: tm_value <= 0;
                1: tm_value <= TM_STATE_1;
                2: tm_value <= TM_STATE_2;
                3: tm_value <= TM_STATE_3;
            endcase
     end

endmodule


