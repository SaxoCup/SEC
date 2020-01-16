module ram(
	input [9:0] address,
    	output [7:0] data_out
    	input [7:0] data_in,
    	input we,
    	input clk,
);
 
	reg [7:0] memoryreg[0:1023]; 
 
     	initial begin
        	$readmemh ("memoryfile.hex",memoryreg,0,1023);
        end
 
    	always @(negedge clk) begin
        	if(!clk) begin
            		if(we) begin
                		memory[address] =  data_in;
            		end
            		else begin
                		data_out = memory[address];
			end
		end
	end
endmodule
