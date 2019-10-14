`timescale 1ns/1ps

module adder 
 

(
  input a,
  input b,
  input c_in,
  output  c_out,
  output sum
);

      assign sum = a ^ b ^ c_in;
      assign c_out = (a & b) | (a ^ b ) & c_in;

endmodule
