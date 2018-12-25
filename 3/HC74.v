module HC_74(S1, R1, Clk1, D1, S2, R2, Clk2, D2, Q1, Qn1, Q2, Qn2);

	input S1, R1, Clk1, D1, S2, R2, Clk2, D2;
	output Q1, Qn1, Q2, Qn2;
	
	reg Q1, Qn1, Q2, Qn2;
		
	always@(posedge Clk1 or negedge S1 or negedge R1)
		begin
			if(S1 == 0 && R1 == 1)
				begin Q1 <= 1; Qn1 <= 0; end
			else if(S1 == 1 && R1 == 0)
				begin Q1 <= 0; Qn1 <= 1; end
			else if(S1 == 0 && R1 == 0)
				begin Q1 <= 1; Qn1 <= 1; end
			else if(S1 == 1 && R1 == 1)
				begin Q1 <= D1; Qn1 <= ~Q1; end	
		end
		
	always@(posedge Clk2 or negedge S2 or negedge R2)
		begin
			if(S2 == 0 && R2 == 1)
				begin Q2 <= 1; Qn2 <= 0; end
			else if(S2 == 1 && R2 == 0)
				begin Q2 <= 0; Qn2 <= 1; end
			else if(S2 == 0 && R2 == 0)
				begin Q2 <= 1; Qn2 <= 1; end
			else if(S2 == 1 && R2 == 1)
				begin Q2 <= D2; Qn2 <= ~Q2; end	
		end		

endmodule