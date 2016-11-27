module fifo #( 
    parameter DEPTH = 16,
    parameter CAPACITY = 8
) (
    input                          clk,
    input                          rst,

    input                          rd,
    input                          wr,
    input        [CAPACITY-1:0]    din,

    output                         full,
    output                         empty,
    output   reg [CAPACITY-1:0]    dout
);

    integer i;
    localparam WRITE = 0;
    localparam READ  = 1;

    reg [CAPACITY-1:0]      mem [DEPTH-1:0];
    reg [$clog2(DEPTH)-1:0] raddr    = 0;
    reg [$clog2(DEPTH)-1:0] waddr    = 0;

    reg state;
    reg fifo_full;
    reg fifo_empty;

    assign empty = fifo_empty;
    assign full  = fifo_full;

    always @( posedge clk or posedge rst ) begin
        if( rst ) begin
            for( i = 0; i <= DEPTH-1; i = i + 1 ) 
                mem[i] <= 0;
            waddr     <= 0;
            raddr     <= 0;
            dout      <= 0;
            fifo_full <= 0;
        end
        else begin
            if( wr & !fifo_full ) begin
                mem[waddr] <= din;
                waddr      <= waddr+1'b1;
                state      <= WRITE;
            end
            else if( rd & !empty ) begin
                dout  <= mem[raddr];
                raddr <= raddr + 1'b1;
                state <= READ;
            end
        end
    end

    always @( negedge clk or posedge rst )
        if( rst ) begin
            fifo_full  <= 0;
            fifo_empty <= 1;
        end else
            case( state )
                READ: 
                begin
                    fifo_full <= 0;
                    if( waddr == raddr )
                        fifo_empty <= 1;
                    else
                        fifo_empty <= 0;
                end
                WRITE:
                begin
                    fifo_empty <= 0;
                    if( waddr == raddr )
                        fifo_full <= 1;
                    else
                        fifo_full <= 0;
                end
            endcase

endmodule
