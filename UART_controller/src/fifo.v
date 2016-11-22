module fifo (
    input                      clk,
    input                      rst,

    input                      rd,
    input                      wr,
    input    [7:0]    din,

    output                     full,
    output                     empty,
    output   [7:0]    dout
);

    integer i;

    reg [7:0]      mem [15:0];
    reg [4:0] raddr    = 0;
    reg [4:0] waddr    = 0;
    reg [7:0] data_out = 0;
	 reg [5:0] d_ctr    = 0;
    reg fifo_full = 0;

    assign dout = data_out; // ( empty ) ? 0 : mem[raddr];
    
	 assign full = ( d_ctr == 15 );
    assign empty = ( waddr == raddr ) & !full;
    

    always @( negedge clk or posedge rst ) begin
        if( rst ) begin
            for( i = 0; i <= 15; i = i + 1 ) 
                mem[i] <= 0;
				waddr     <= 0;
				raddr     <= 0;
				fifo_full <= 0;
				data_out  <= 0;
				d_ctr     <= 0;
        end
        else begin
            if( wr & !full ) begin
                mem[waddr] <= din;
                waddr <= waddr + 1'b1;
					 d_ctr <= d_ctr + 1'b1;
            end
            else if( rd & !empty ) begin
                data_out  <= mem[raddr];
                raddr     <= raddr + 1'b1;
					 fifo_full <= 1'b0;
					 d_ctr     <= d_ctr - 1'b1;
            end
        end
    end

endmodule
