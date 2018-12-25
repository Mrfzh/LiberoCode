`timescale 1ns/1ns
module testbench_counter;
	reg clr, updown, clk;
	wire [7:0] Q;
	wire C;
	
	Counter test_counter(clr, updown, clk, Q, C);
	
	always #10 clk = ~clk;
	
	initial
		begin
			clk = 0; clr = 1;
			#20 clr = 0; updown = 1;
			#300 updown = 0;
		end
endmodule
