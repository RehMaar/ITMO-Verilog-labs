module switches( 
    input           sw0,
    input           sw1,
    output [1:0]    sw_state
);
    assign sw_state = { sw0, sw1 };
endmodule
