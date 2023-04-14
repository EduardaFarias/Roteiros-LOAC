// Maria Eduarda Batista de Farias - 121110641
// Problema 01 - Irrigação (Simulador Tipo II)

module circuit(
  input logic [1:0]U,
  output logic [1:0]Saida
);
  always_comb begin
    case(U)
      2'b00: Saida <= 00;
      2'b01: Saida <= 01;
      2'b10: Saida <= 10;
      2'b11: Saida <= 11;
    endcase
    end
endmodule
