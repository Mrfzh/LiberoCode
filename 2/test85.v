`timescale 1ns/1ns
module testbench_HC85;
	reg A3, A2, A1, A0, B3, B2, B1, B0, I1, I2, I3;	
	
	wire Q1, Q2, Q3;
	
	HC_85 test_HC_85(A3, A2, A1, A0, B3, B2, B1, B0, I1, I2, I3, Q1, Q2, Q3);

	initial
		begin
			A3 = 0; A2 = 0; A1 = 1; A0 = 0;
			B3 = 0; B2 = 1; B1 = 0; B0 = 1;
			#20 A2 = 1; A1 = 0; A0 = 1;	I1 = 0; I2 = 0; I3 = 0;		
			#20 I3 = 1;
			#20 I1 = 1; I3 = 0;
			#20 I3 = 1;
			#20 I2 = 1;
			
		end
		
endmodule