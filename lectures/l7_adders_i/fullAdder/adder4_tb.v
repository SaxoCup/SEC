`timescale 1ns/1ps

module adder4_tb;
 


  reg [3:0] a;
  reg [3:0] b;
  reg c_in;
  wire  c_out;
  wire [3:0] sum;


    	adder4 uut(
		.a(a),
		.b(b),
    		.c_in(c_in),
		.c_out(c_out),
		.sum(sum)
    	);
  	

initial begin
      $dumpfile("adder4.vcd");
      $dumpvars();
	a = 4'b0011;
	b = 4'b0101;
	c_in = 1;
      $finish;
   end


endmodule
