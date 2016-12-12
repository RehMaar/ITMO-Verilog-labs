module rx(
    input            clk,
    input            rst,
    input            bclk,
    input            rx,

    output  reg[7:0] dout,
    output  reg      dout_rdy,
    output  reg      rx_rdy
);

    localparam START_BIT = 0;
    localparam STOP_BIT  = 1;

    localparam IDLE     = 2'd0;
    localparam START    = 2'd1;
    localparam STOP     = 2'd2;


    reg [7:0] rsr   = 0;

    reg [2:0] d_ctr      = 0;
    reg [1:0] next_state = 0;
    reg [1:0] state      = 0;

    reg was_bclk  = 0;


    always @(negedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            if (!bclk && was_bclk)
                state <= next_state;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            next_state <= 0;
            was_bclk   <= 0;
            dout_rdy   <= 0;
            rx_rdy     <= 1;
            d_ctr      <= 0;
            rsr        <= 0;
            dout       <= 0;
        end
        else begin
            if (bclk && !was_bclk) begin
                was_bclk <= bclk;
                case (state)
                    IDLE:
                    begin
                        dout_rdy <= 0;
                        if (START_BIT == rx) begin
                            next_state <= START;
                            rx_rdy     <= 0;
                        end
                    end
                    START:
                    begin
                        d_ctr  <= d_ctr + 1'b1;
                        rsr    <= rsr << 1;
                        rsr[0] <= rx;
                        if (3'd7 == d_ctr) begin
                            next_state <= STOP;
                            d_ctr      <= 0;
                        end
                    end
                    STOP:
                    begin
                        if (STOP_BIT == rx) begin
                            dout_rdy <= 1;
                            dout     <= rsr;
                        end
                        next_state <= IDLE;
                        rx_rdy     <= 1;
                    end
                endcase
            end
            else
                was_bclk <= bclk;
        end
    end
endmodule
