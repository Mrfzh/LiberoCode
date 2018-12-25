module Com_2C(DataIn, DataOut);
	input [7:0] DataIn;		//原码输入

	output [7:0] DataOut;	//补码
	
	reg [7:0] DataOut;

	always@(DataIn)
		begin
			if(DataIn[7])
				DataOut = {1'b1, ~DataOut[6:0]+1};	//符号位不变，其他为取反再加1
			else
				DataOut = DataIn;
		end
endmodule	