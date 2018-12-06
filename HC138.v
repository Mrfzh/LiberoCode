module encoder_138(DataIn, E1, E2, E3, Dataout);
	input [2:0] DataIn;		
	input E1;	
	input E2;
	input E3;	
	
	output [7:0] Dataout;	
	
	reg [7:0] Dataout;
	
	integer I;
	Dataout = 8'b11111111;
	
	always@(DataIn or E1 or E2 or E3)
		begin
			if(E1 == 0 && E2 == 0 && E3 == 1)
				for(I = 0; I < 8; I = I+1)
					begin
						if(DataIn == I)
							begin
								Dataout[I] = 0;
							end
					end
		end
endmodule		