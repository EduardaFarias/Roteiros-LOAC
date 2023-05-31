// Write your modules here!
parameter nbits = 4;
module contador(
	input logic clk, reset,load,
  output logic [nbits-1:0] Count
);
  always_ff @(posedge clk) begin
    if(reset)
      Count <= 0;
    else if(load)
      Count <= 1;
    else begin
      unique case(Count)
        1: Count <= 2;
       	2: Count <= 4; 
        4: Count <= 8;
        8: Count <= 1;
      endcase
    end
  end
 endmodule