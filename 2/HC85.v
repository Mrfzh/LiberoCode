module HC_85(A3, A2, A1, A0, B3, B2, B1, B0, I1, I2, I3, Q1, Q2, Q3);

	input A3, A2, A1, A0, B3, B2, B1, B0, I1, I2, I3;	
	//其中I1, I2, I3分别表示I(A>B), I(A=B), I(A<B) 
	
	output Q1, Q2, Q3;		//分别表示Q(A>B), Q(A=B), Q(A<B)	

	reg Q1, Q2, Q3;
	
	always@(A3 or A2 or A1 or A0 or B3 or B2 or B1 or B0 or I1 or I2 or I3)
		begin
			if (A3 > B3)
				begin Q1 = 1; Q2 = 0; Q3 = 0; end
			else if (A3 < B3)
				begin Q1 = 0; Q2 = 0; Q3 = 1; end
			else
				begin
					if (A2 > B2)
						begin Q1 = 1; Q2 = 0; Q3 = 0; end
					else if (A2 < B2)
						begin Q1 = 0; Q2 = 0; Q3 = 1; end
					else
						begin
							if (A1 > B1)
								begin Q1 = 1; Q2 = 0; Q3 = 0; end
							else if (A1 < B1)
								begin Q1 = 0; Q2 = 0; Q3 = 1; end
							else
								begin
									if (A0 > B0)
										begin Q1 = 1; Q2 = 0; Q3 = 0; end
									else if (A0 < B0)
										begin Q1 = 0; Q2 = 0; Q3 = 1; end
									else
										begin
											if (I1 == 0 && I2 == 0 && I3 == 0)
												begin Q1 = 1; Q2 = 0; Q3 = 1; end
											else if (I1 == 0 && I2 == 0 && I3 == 1)
												begin Q1 = 0; Q2 = 0; Q3 = 1; end
											else if (I1 == 1 && I2 == 0 && I3 == 0)
												begin Q1 = 1; Q2 = 0; Q3 = 0; end
											else if (I1 == 1 && I2 == 0 && I3 == 1)
												begin Q1 = 0; Q2 = 0; Q3 = 0; end
											else if (I2 == 1)
												begin Q1 = 0; Q2 = 1; Q3 = 0; end
										end
								end
						end
				end
		end
endmodule	