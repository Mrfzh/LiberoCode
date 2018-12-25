module HC_194(MR, S1, S0, Clk, DSR, DSL, D0, D1, D2, D3, Q0, Q1, Q2, Q3);

	input MR, S1, S0, Clk, DSR, DSL, D0, D1, D2, D3;
	output Q0, Q1, Q2, Q3;
	
	reg Q0, Q1, Q2, Q3;
		
	always@(negedge MR or posedge Clk)
		begin
			if(MR == 0)
				begin Q0 = 0; Q1 = 0; Q2 = 0; Q3 = 0; end
			else
				begin
					if(S1 == 0 && S0 == 1)
						begin Q1 = Q0; Q2 = Q1; Q3 = Q2; Q0 = DSR; end
					else if(S1 == 1 && S0 == 0)
						begin Q0 = Q1; Q1 = Q2; Q2 = Q3; Q3 = DSL; end
					else if(S1 == 1 && S0 == 1)
						begin Q0 = D0; Q1 = D1; Q2 = D2; Q3 = D3; end						
				end
		end

endmodule