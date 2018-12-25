`timescale 1ns/1ns
module testbench_HC194;
	reg MR, S1, S0, Clk, DSR, DSL, D0, D1, D2, D3;
	wire Q0, Q1, Q2, Q3;
	
	HC_194 test_HC_194(MR, S1, S0, Clk, DSR, DSL, D0, D1, D2, D3, Q0, Q1, Q2, Q3);
	
	always #10 Clk = ~Clk;

	initial
		begin
			MR = 0;
			#20 MR = 1; S1 = 0; S0 = 0;
			#20 S0 = 1; DSR = 0;
			#20 DSR = 1;
			#20 S1 = 1; S0 = 0; DSL = 0;
			#20 DSL = 1;
			#20 S0 = 1; D0 = 1; D1 = 1; D2 = 1; D3 = 1;
		
endmodule