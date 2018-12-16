`timescale 1ns/1ns
module testbench_HC02;
	reg A1, B1, A2, B2, A3, B3, A4, B4;			
	
	wire Y1, Y2, Y3, Y4;
	
	HC_02 test_HC_02(A1, B1, A2, B2, A3, B3, A4, B4, Y1, Y2, Y3, Y4);

	initial
		begin
			A1 = 0; B1 = 0; A2 = 0; B2 = 0; A3 = 0; B3 = 0; A4 = 0; B4 = 0;
			#20 B1 = 1; B2 = 1; B3 = 1; B4 = 1;
			#20 A1 = 1; A2 = 1; A3 = 1; A4 = 1;
			#20 B1 = 0; B2 = 0; B3 = 0; B4 = 0;
			
		end
		
endmodule