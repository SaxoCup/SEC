module filter (
                  input [3:0] x,
                  input x_valid,
		  input rst,
		  input clk,
		  output y_valid,
                  output reg [5:0] y 
                  );
 
	always @(posedge clk) begin
		
		if (rst) begin

			y <= 0;
		end
	end

endmodule

