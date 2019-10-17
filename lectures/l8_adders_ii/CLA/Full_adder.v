`timescale 1ns/1ps

module Full_adder 
(
  input  A,
  input  B,
  input  c_i,
  output g,
  output p,
  output Sum
);

   assign p = A ^ B;
   assign g = A & B;

   assign Sum = A ^ B ^ c_i;

endmodule
