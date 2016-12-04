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
    localparam STOP     = 3'd4;
    localparam WAIT     = 3'd5;

    localparam START_BIT = 1'b0;
    localparam STOP_BIT  = 1'b1;

    localparam WAIT_TIME_IN_BAUDS = 30;

    reg [7:0] thr        = 0;
    reg [7:0] tsr        = 0;
    reg [4:0] wait_time  = 0;
    reg [3:0] dctr       = 0;
    reg [2:0] next_state = 0;
    reg [2:0] was_state  = 0;
    reg [2:0] state      = 0;
    reg       was_bclk   = 0;
    reg       tx_en      = 0;
    reg       rdy        = 0;

    always @(negedge clk or posedge rst)
        if (rst)
            state = IDLE;
        else
            if (!bclk && was_bclk)
                state = next_state;

   always @(negedge clk or posedge rst)
       if (rst) begin
            tx_en = 0;
            thr   = 0;
       end
       else begin
           if (din_rdy & !rdy) begin
                tx_rdy = 0;
                thr    = din;
                tx_en  = 1;
                rdy    = 1;
           end
           else
               if (was_state == IDLE && state == START) begin
                    tx_en = 0;
               end
               if (was_state == WAIT && state == IDLE) begin
                    tx_rdy = 1;
                    rdy    = 0;
               end
       end


    always @(posedge clk or posedge rst)
        if (rst) begin
            next_state <= IDLE;
            wait_time  <= 0;
            was_bclk   <= 0;
            dctr       <= 0;
            thr        <= 0;
            tx_rdy     <= 1;
            tx        <= 1;
        end
        else begin
            was_state <= state;
            if (bclk & !was_bclk) begin
                was_bclk  <= bclk;
                case( state )
                    IDLE:
                        if (tx_en) begin
                            next_state <= START;
                            tsr        <= thr;
                        end
                    START:
                    begin
                        next_state <= TRANSMIT;
                        tx        <= START_BIT;
                    end
                    TRANSMIT:
                    begin
                        tx  <= tsr[0];
                        tsr  <= tsr >> 1;
                        dctr <= dctr + 1'b1;
                        if ( 8 == dctr) begin
                            next_state <= STOP;
                            dctr       <= 0;
                        end
                    end
                    STOP:
                    begin
                        next_state <= WAIT;
                        tx        <= STOP_BIT;
                    end
                    /* Need to wait between words sending.
                     * */
                    WAIT:
                    begin
                        wait_time <= wait_time + 1'b1;
                        if (wait_time == WAIT_TIME_IN_BAUDS) begin
                            next_state <= IDLE;
                            wait_time  <= 0;
                        end
                    end
                endcase
            end
            else
                was_bclk <= bclk;
        end

endmodule
