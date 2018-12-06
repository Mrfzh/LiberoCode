`timescale 1ns/1ns
module testbench_HC4511;
	reg LT_N, BI_N, LE;		
	reg [3:0] A;		
	
	wire [7:0] Seg;
	
//	reg [7:0] SM_8S;
//	assign Seg = SM_8S;
	
	HC_4511 test_HC_4511(A, Seg, LT_N, BI_N, LE);

	initial
		begin
			LT_N = 0;
			#20 LT_N = 1; BI_N = 0;
			#20 BI_N = 1; LE = 0; A = 4'b0000;
			#20 A = 4'b0001;
			#20 A = 4'b0010;
			#20 A = 4'b0011;
			#20 A = 4'b0100;
			#20 A = 4'b0101;
			#20 A = 4'b0110;
			#20 A = 4'b0111;
			#20 A = 4'b1000;
			#20 A = 4'b1001;
			#20 A = 4'b1010;
			#20 A = 4'b1011;
			#20 A = 4'b1100;
			#20 A = 4'b1101;
			#20 A = 4'b1110;
			#20 A = 4'b1111;
			
		end
		
endmodule