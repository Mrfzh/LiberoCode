`timescale 1ns/1ns
module testbench_HC112;
	reg S1, R1, Clk1, J1, K1, S2, R2, Clk2, J2, K2;
	wire Q1, Qn1, Q2, Qn2;
	
	HC_112 test_HC_112(S1, R1, Clk1, J1, K1, S2, R2, Clk2, J2, K2, Q1, Qn1, Q2, Qn2);
	
	always #10 Clk1 = ~Clk1;
	always #10 Clk2 = ~Clk2;

	initial
		begin
			S1 = 0; R1 = 1; S2 = 0; R2 = 1; Clk1 = 0; Clk2 = 0;
			#20 S1 = 1; R1 = 0; S2 = 1; R2 = 0;
			#20 S1 = 0; S2 = 0;
			#20 S1 = 1; R1 = 1; S2 = 1; R2 = 1; J1 = 0; K1 = 0; J2 = 0; K2 = 0;
			#20 K1 = 1; K2 = 1;
			#20 J1 = 1; K1 = 0; J2 = 1; K2 = 0;
			#20 K1 = 1; K2 = 1;
		end
		
endmodule