`timescale 1ns/1ns
module testbench_HC148;
	reg[7:0] DataIn;
	reg EI;
	wire[2:0] Dataout;
	wire EO,GS;
	
	encoder_148 test_encoder_148(DataIn, EO, Dataout, EI, GS);	

	initial
		begin
			EI = 1;
			#20 EI = 0;
			DataIn=8'b11111111;
			#20 DataIn=8'b11111110;
			#20 DataIn=8'b11111101;
			#20 DataIn=8'b11111011;
			#20 DataIn=8'b11110111;
			#20 DataIn=8'b11101111;
			#20 DataIn=8'b11011111;
			#20 DataIn=8'b10111111;
			#20 DataIn=8'b01111111;
			
		end
		
endmodule