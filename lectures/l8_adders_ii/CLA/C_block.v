`timescale 1ns/1ps

module C_block 
(
  input [1:0] g,
  input [1:0] p,
  input c_i,
  output G,
  output P,
  output c_o
);

  GP gp_0 (.g(g),
	  .p(p),
          .c_i(c_i),
          .G(G),
          .P(P),
          .c_o(c_o)
         );
  
endmodule
