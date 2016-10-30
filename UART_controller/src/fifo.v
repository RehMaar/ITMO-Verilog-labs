module fifo #( 
    parameter DEPTH = 16,
    parameter CAPACITY = 8
) (
    input                      clk,
    input                      rst,

    input                      rd,
    input                      wr,
    input    [CAPACITY-1:0]    din,

    output                     full,
    output                     empty,
    output   [CAPACITY-1:0]    dout
);

    integer i;

    reg [CAPACITY-1:0]      mem [DEPTH-1:0];
    reg [$clog2(DEPTH)-1:0] raddr    = 0;
    reg [$clog2(DEPTH)-1:0] waddr    = 0;
    reg [CAPACITY-1:0]      data_out = 0;

    reg fifo_full = 0;

    assign dout = data_out; // ( empty ) ? 0 : mem[raddr];

    assign empty = ( waddr == raddr ) & !fifo_full;
    assign full = fifo_full;

    always @( posedge clk or posedge rst ) begin
        if( rst ) begin
            for( i = 0; i <= DEPTH-1; i = i + 1 ) 
                mem[i] = 0;
            waddr     = 0;
            raddr     = 0;
            fifo_full = 0;
        end
        else begin
            if( wr & !fifo_full ) begin
                mem[waddr] <= din;
                waddr <= waddr+1;
            end
            else if( rd & !empty ) begin
                    data_out <= mem[raddr];
                raddr    <= raddr + 1;
            end
        end
    end


    always @( waddr )
        if( !rst & waddr == raddr )
            fifo_full = 1;

    always @( raddr )
            fifo_full = 0;

endmodule
