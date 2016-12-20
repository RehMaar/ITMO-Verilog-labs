module tx(
    input         clk,
    input         rst,

    input         bclk,
    input   [7:0] din,
    input         din_rdy,

    output  reg   tx,
    output  reg   tx_rdy
);

    localparam IDLE     = 3'd0;
    localparam START    = 3'd1;
    localparam TRANSMIT = 3'd2;
    localparam STOP     = 3'd3;
    localparam WAIT     = 3'd4;

    localparam START_BIT = 1'b0;
    localparam STOP_BIT  = 1'b1;

    localparam WAIT_TIME_IN_BAUDS = 30;

    reg [7:0] thr        = 0;
    reg [7:0] tsr        = 0;
    reg [4:0] wait_time  = 0;
    reg [2:0] dctr       = 0;
    reg [2:0] state      = 0;
    reg       was_bclk   = 0;
    reg       tx_en      = 0;
    reg      was_din_rdy = 0;

    always @(posedge clk or posedge rst)
        if (rst) begin
            state <= IDLE;
            wait_time  <= 0;
            dctr       <= 0;
            tsr        <= 0;
            tx         <= 1;
            tx_rdy     <= 1;
        end
        else begin
            if (IDLE == state && din_rdy) begin
                state <= START;
                tsr        <= din;
                tx_rdy     <= 0;
                was_bclk   <= bclk;
            end
            else
                if (bclk & !was_bclk) begin
                    was_bclk = bclk;
                    case (state)
                        START:
                        begin
                            state <= TRANSMIT;
                            tx         <= START_BIT;
                        end
                        TRANSMIT:
                        begin
                            tx   <= tsr[0];
                            tsr  <= tsr >> 1;
                            dctr <= dctr + 1'b1;
                            if (7 == dctr) begin
                                state <= STOP;
                                dctr       <= 0;
                            end
                        end
                        STOP:
                        begin
                            state <= WAIT;
                            tx         <= STOP_BIT;
                        end
                        WAIT:
                        begin
                            wait_time <= wait_time + 1'b1;
                            if (wait_time == WAIT_TIME_IN_BAUDS) begin
                                state <= IDLE;
                                wait_time  <= 0;
                                tx_rdy     <= 1;
                            end
                        end
                    endcase
                end
                else
                    was_bclk <= bclk;
        end

endmodule
