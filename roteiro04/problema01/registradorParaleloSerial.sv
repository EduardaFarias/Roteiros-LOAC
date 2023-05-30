// Maria Eduarda Batista de Farias - 121110641
// Problema 1 - Registrador Paralelo/Serial
module registrador (
    input clk,
    input reset,
    input SEL,
  input [3:0] Din, // dado passado na entrada do registrador paralelo
    input Din_serie, //bit de entrada que será armazenado no modo serial
  output reg [3:0] Dout // dado armazenado no registrador
);

reg [3:0] armazenamento_paralelo;

always @ (posedge clk) begin
    if (reset) begin
        armazenamento_paralelo <= 4'b0;
    end else if (!SEL) begin // modo paralelo
        armazenamento_paralelo <= Din;
    end else begin // modo serial
        armazenamento_paralelo <= {armazenamento_paralelo[2:0], Din_serie};
    end
end

assign Dout = armazenamento_paralelo;

endmodule