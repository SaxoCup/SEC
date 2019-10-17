`timescale 1ns/1ps


module GP
(
  input [1:0] g,
  input [1:0] p,
  input c_i,
  output G,
  output P,
  output c_o
);

  assign G = g[1] | (p[1] & g[0]);
  assign P = p[0] & p[1];
  

  assign c_o = g[0] | (p[0] & c_i);

    
endmodule
