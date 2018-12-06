module encoder_153(E, S1, S0, I0, I1, I2, I3, Y);

	input E, S1, S0, I0, I1, I2, I3;		
	
	output Y;		

	reg Y;
	
	integer I;
	
	always@(E or S1 or S0 or I0 or I1 or I2 or I3)
		begin
			if(E == 1)
				Y = 0;
			else
				begin
					if (S1 == 0 && S0 == 0)
						Y = I0;
					else if (S1 == 0 && S0 == 1)
						Y = I1;
					else if (S1 == 1 && S0 == 0)
						Y = I2;
					else
						Y = I3;
				end
		end
endmodule	