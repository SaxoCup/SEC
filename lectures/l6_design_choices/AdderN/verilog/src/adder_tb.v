
`timescale 1ns / 1ps

module adder_tb;

   reg [7:0] data_in1;
   reg [7:0] data_in2;
   wire [7:0] data_out;
   
   // Instantiate the Unit Under Test (UUT)
   adder #(.N(8)) uut (
		.data_in1	(data_in1),
		.data_in2	(data_in2),
		.data_out	(data_out)
		);
 
   
   initial begin
      $dumpfile("adder.vcd");
      $dumpvars();
	data_in1 = 3;
	data_in2 = 5;
      $finish;

   end

endmodule

