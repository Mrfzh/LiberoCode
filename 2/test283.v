`timescale 1ns/1ns
module testbench_HC283;
	reg [3:0] DataIn1;		
	reg [3:0] DataIn2;		
	
	wire Cout;
	wire [3:0] DataOut;
	
	HC_283 test_HC_283(DataIn1, DataIn2, Cout, DataOut);

	initial
		begin
			DataIn1 = 4'b0000; DataIn2 = 4'b0110;
			#20 DataIn1 = 4'b1111; DataIn2 = 4'b1111;
			#20 DataIn1 = 4'b0111; DataIn2 = 4'b0010;
			#20 DataIn1 = 4'b0100; DataIn2 = 4'b0110;
			#20 DataIn1 = 4'b0101; DataIn2 = 4'b0111;
			#20 DataIn1 = 4'b1000; DataIn2 = 4'b0111;
			#20 DataIn1 = 4'b1001; DataIn2 = 4'b1001;
			
		end
		
endmodule