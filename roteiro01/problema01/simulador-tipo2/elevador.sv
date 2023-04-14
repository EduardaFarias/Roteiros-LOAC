// Maria Eduarda Batista de Farias - 121110641
// Elevador
module circuit(
	input logic A1,A2,A3, M, // Variáveis de entrada
  	output logic P // variáveis de saída
);
  always_comb P <= (!M) & (A1 | A2 | A3);
endmodule
