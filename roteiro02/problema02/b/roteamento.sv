// Maria Eduarda Batista de Farias - 121110641
// Problema 02, letra b - (Simulador tipo II)
parameter N_BITS = 4;
module roteamento(
  input logic [N_BITS-1:0] A, B, C, D,
  input logic [N_BITS-3:0]SEL,
  output logic [N_BITS-1:0] Saida
);
  always_comb begin
    case(SEL)
      2'b00: Saida <= A;
      2'b01: Saida <= B;
      2'b10: Saida <= C;
      2'b11: Saida <= D;
    endcase
  end
endmodule
