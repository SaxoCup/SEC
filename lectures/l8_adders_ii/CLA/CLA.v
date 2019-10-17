`timescale 1ns/1ps

module CLA 
(
  input [3:0] A,
  input [3:0] B,
  input c_i,
  output [3:0] Sum,
  output c_o
);
	
  wire [2:0] c;

  wire [1:0] g1_0;
  wire [1:0] p1_0;
  wire [1:0] g3_2;
  wire [1:0] p3_2;

  wire [1:0] G;
  wire [1:0] P;

  wire G3_0;
  wire P3_0;

  Full_adder a_0 (.A(A[0]),
                .B(B[0]),
	        .c_i(c_i),
                .g(g1_0[0]),
                .p(p1_0[0]),
                .Sum(Sum[0])
               );

  Full_adder a_1 (.A(A[1]),
                .B(B[1]),
	        .c_i(c[0]),
                .g(g1_0[1]),
                .p(p1_0[1]),               
                .Sum(Sum[1])
               );

  Full_adder a_2 (.A(A[2]),
                .B(B[2]),
	        .c_i(c[1]),
                .g(g3_2[0]),
                .p(p3_2[0]),
                .Sum(Sum[2])
               );

  Full_adder a_3 (.A(A[3]),
                .B(B[3]),
	        .c_i(c[2]),
                .g(g3_2[1]),
                .p(p3_2[1]),
                .Sum(Sum[3])
               );

  GP gp_0 (.g(g1_0),
	  .p(p1_0),
 	  .c_i(c_i),
          .G(G[0]),
          .P(P[0]),
	  .c_o(c[0])
         );

  GP gp_1 (.g(g3_2),
	  .p(p3_2),
 	  .c_i(c[1]), 
          .G(G[1]),
          .P(P[1]),
	  .c_o(c[2])
         );


  C_block c0 (.g(G),
	    .p(P),
 	    .c_i(c_i),
            .G(G3_0),
            .P(P3_0),
            .c_o(c[1])
           );
    
  assign c_o = G3_0 | (P3_0*c_i);
 
endmodule
