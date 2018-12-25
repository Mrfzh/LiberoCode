`timescale 1ns/1ns
module testbench_Com;
	reg[7:0] DataIn, DataIn_0;
	wire AGEB;
	
	Compare test_com(
       DataIn,
       DataIn_0,
       AGEB
    );	

	initial
		begin
			DataIn = 8'b10011001;
			#20 DataIn = 8'b01101101; 
			#20 DataIn = 8'b10100101; 
			#20 DataIn = 8'b10101101; 
			#20 DataIn = 8'b01000101; 
			#20 DataIn = 8'b11101000; 
			#20 DataIn = 8'b00100101; 
		end
		
	initial
		begin
			DataIn_0 = 8'b00011001;
			#20 DataIn_0 = 8'b11101101; 
			#20 DataIn_0 = 8'b00100101; 
			#20 DataIn_0 = 8'b10101101; 
			#20 DataIn_0 = 8'b11000101; 
			#20 DataIn_0 = 8'b11101000; 
			#20 DataIn_0 = 8'b00100101; 
		end
		
endmodule