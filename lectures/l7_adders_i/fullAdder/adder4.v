`timescale 1ns/1ps

module adder4
 

(
  input [3:0] a,
  input [3:0] b,
  input c_in,
  output  c_out,
  output [3:0] sum
);

	wire [4:0] c_inputs;
	assign c_inputs[0] = c_in;
	assign c_out = c_inputs[4];
	genvar gi;
  	for (gi=0; gi<4; gi=gi+1) begin : adder
    		adder fulladder(
			.a(a[gi]),
			.b(b[gi]),
    			.c_in(c_inputs[gi]),
			.c_out(c_inputs[gi+1]),
			.sum(sum[gi])
    		);
  	end

endmodule
