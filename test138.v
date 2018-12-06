`timescale 1ns/1ns
module testbench_HC138

	reg [2:0] DataIn;		
	reg E1;	
	reg E2;
	reg E3;	
	
	wire [7:0] Dataout;	
	
	encoder_138 test_encoder_138(DataIn, E1, E2, E3, Dataout);	

	initial
		begin
			E1 = 1;
			E2 = 0;
			E3 = 1;
			#60 E1 = 0;
			DataIn=3'b000;
			#20 DataIn=3'b001;
			#20 DataIn=3'b010;
			#20 DataIn=3'b011;
			#20 DataIn=3'b100;
			#20 DataIn=3'b101;
			#20 DataIn=3'b110;
			#20 DataIn=3'b111;
			
		end
		
endmodule