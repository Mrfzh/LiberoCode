`timescale 1ns/1ns
module testbench_HC74;
	reg S1, R1, Clk1, D1, S2, R2, Clk2, D2;
	wire Q1, Qn1, Q2, Qn2;
	
	HC_74 test_HC_74(S1, R1, Clk1, D1, S2, R2, Clk2, D2, Q1, Qn1, Q2, Qn2);
	
	always #10 Clk1 = ~Clk1;
	always #10 Clk2 = ~Clk2;

	initial
		begin
			S1 = 0; R1 = 1; S2 = 0; R2 = 1; Clk1 = 0; Clk2 = 0;
			#20 S1 = 1; R1 = 0; S2 = 1; R2 = 0;
			#20 S1 = 0; S2 = 0;
			#20 S1 = 1; R1 = 1; S2 = 1; R2 = 1; D1 = 0; D2 = 0;
			#20 D1 = 1; D2 = 1;
		end
		
endmodule