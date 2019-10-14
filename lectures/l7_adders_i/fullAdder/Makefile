fulladder: adder.v adder4.v adder4_tb.v
	iverilog -o fulladder  adder.v  adder4.v adder4_tb.v
	./fulladder

clean: 
	rm -f adder *~ *.vcd

.PHONY: clean all
