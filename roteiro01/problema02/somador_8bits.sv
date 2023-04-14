// Maria Eduarda Batista de Farias - 121110641
// Somador de 8 bits
parameter n_bits = 8;
module circuit(
  input logic signed [n_bits-1:0] num1, num2, // variáveis de entrada em complemento de 2
  output logic signed [n_bits-1:0] total,
  output logic negativo, zero, par
);
  always_comb begin
    total <= num1 + num2;
    if(total == 0) zero <= 1;
    	else zero <= 0;
    if(total[n_bits-1] == 0) negativo <= 0;
    	else negativo <= 1;
    // total[n_bits-1] pegando o mais significativo, se for 0 é um número
    //positivo, se não, é um número negativo
    if(total[0] == 0) par <= 1; // Pega o bit menos significativo
    	else par <= 0;
  end
endmodule
