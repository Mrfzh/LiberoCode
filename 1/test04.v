`timescale 1ns/1ns
module testbench_HC04;
	reg A1, A2, A3, A4, A5, A6;		
	
	wire Y1, Y2, Y3, Y4, Y5, Y6;
	
	HC_04 test_HC_04(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6);

	initial
		begin
			A1 = 0; A2 = 0; A3 = 0; A4 = 0; A5 = 0; A6 = 0; 
			#20 A1 = 1; A2 = 1; A3 = 1; A4 = 1; A5 = 1; A6 = 1; 
			
		end
		
endmodule