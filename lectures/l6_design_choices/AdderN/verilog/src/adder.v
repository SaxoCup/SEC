`timescale 1ns/1ps

module adder 
 #(parameter N = 2)

(
  input [N-1:0] data_in1,
  input [N-1:0] data_in2,
  output [N-1:0] data_out
);

      assign data_out = data_in1 + data_in2;

endmodule
