module HC_161(Q, TC, MR, CP, CEP, CET, PE, D);

	input MR, CP, CEP, CET, PE;
	input [3:0] D;
	output TC;
	output [3:0] Q;
	
	reg TC;
	reg [3:0] Q;

	always@(negedge MR, posedge CP)
		if(!MR)
			Q = 0;
		else if(CEP & CET & PE)
			Q = Q+1;
		else if(!PE)
			Q = D;
		
	assign TC = &{CET, Q};

endmodule