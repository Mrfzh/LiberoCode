`timescale 1ns/1ns
module testbench_HC153;
	reg E, S1, S0, I0, I1, I2, I3;		
	
	wire Y;
	
	encoder_153 test_encoder_153(E, S1, S0, I0, I1, I2, I3, Y);

	initial
		begin
			E = 1;
			#20 E = 0; S1 = 0; S0 = 0; I0 = 0;
			#20 S1 = 0; S0 = 0; I0 = 1;
			#20 S1 = 0; S0 = 1; I1 = 0;
			#20 S1 = 0; S0 = 1; I1 = 1;
			#20 S1 = 1; S0 = 0; I2 = 0;
			#20 S1 = 1; S0 = 0; I2 = 1;
			#20 S1 = 1; S0 = 1; I3 = 0;
			#20 S1 = 1; S0 = 1; I3 = 1;
			
		end
		
endmodule