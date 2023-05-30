// Maria Eduarda Batista de Farias - 121110641
// Problema 01 - Contador Síncrono Hexadecimal de 4 bits, o contador pode 
// realizar a contagem crescente ou decrescente

parameter nbits = 4;
module contador(
	input logic clk, reset, counter_up, counter_down,
  	output logic [nbits-1:0] Saida
);
  
  always_ff @(posedge reset or posedge clk) begin
    if(reset) // Se o reset for ativada a saída volta para 0
      Saida <= 0;
    else
      if(counter_up) // Se counter_up for ativado, o contador faz contagem crescente
        Saida <= Saida + 1;
    else if(counter_down) // Se counter_up for ativado, o contador faz contagem decrescente
    	Saida <= Saida -1;
  end
endmodule