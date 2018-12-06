module HC_283(DataIn1, DataIn2, Cout, DataOut);
	input [3:0] DataIn1;		
	input [3:0] DataIn2;		
	
	output Cout;
	output [3:0] DataOut;
	
	reg [3:0] DataOut;
	reg Cout;
	
	integer I;
	
	always@(DataIn1 or DataIn2)
		begin
			{Cout, DataOut} = DataIn1 + DataIn2;
		end
endmodule	