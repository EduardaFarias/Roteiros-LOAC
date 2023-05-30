// Maria Eduarda Batista de Farias- 121110641
// Problema 2 - Memória RAM R/W
module RAM_RW_4x4 (
    input clk,
    input reset,
    input SEL,
    input [3:0] Din,
    input [1:0] Addr,
    output reg [3:0] Dout
);

parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;

logic [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];
reg reset_done;

always @(posedge clk) begin
    if (reset) begin
        reset_done <= 0;
        for (int i = 0; i < (1<<ADDR_WIDTH); i++) begin
            mem[i] <= {DATA_WIDTH{1'b0}};

        end
    end else if (!reset_done) begin
        if ($time > 10) begin
            reset_done <= 1;
        end
    end else begin
        if (SEL) begin
            mem[Addr] <= Din;
        end else begin
            Dout <= mem[Addr];
        end
    end
end

endmodule
