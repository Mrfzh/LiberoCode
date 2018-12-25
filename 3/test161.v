`timescale 1ns/1ns
module testbench_HC161;
	reg MR, CP, CEP, CET, PE;
	reg [3:0] D;
	wire TC;
	wire [3:0] Q;
	
	HC_161 test_HC_161(Q, TC, MR, CP, CEP, CET, PE, D);
	
	always #10 CP = ~CP;

	initial
		begin
			MR = 0; CP = 0; 
			#20 MR = 1; PE = 0; D = 4'b0000;
			#20 D = 4'b1111;
			#20 CEP = 1; CET = 1; PE = 1;
		end
		
endmodule