`timescale 1ns / 1ps

module CLA_tb;

   reg 	[3:0] A;
   reg 	[3:0] B;
   reg c_i;
   wire [3:0] Sum;
   wire c_o;
 		
   CLA uut (
	    .A(A),
            .B(B),
            .c_i(c_i),
            .Sum(Sum),
            .c_o(c_o)
	   );
 
   
   initial begin     
      $dumpfile("CLA.vcd");
      $dumpvars();

      c_i = 1;	
      A = 4'b1110;
      B = 4'b1001;

      $finish;

   end

endmodule

