// Maria Eduarda Batista de Farias - 121110641
// Problema 02, letra a- Roteamento (Simulador do Tipo II)
parameter N_BITS = 4;
module roteamento(
  input logic [N_BITS-1:0] A, B,
  input logic SEL,
  output logic [N_BITS-1:0] Saida
);
  always_comb begin
    if(SEL == 0)
      Saida <= A;
    else
      Saida <= B;
  end
endmodule
