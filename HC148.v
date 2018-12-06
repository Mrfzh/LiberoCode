module encoder_148(DataIn, EO, Dataout, EI, GS);
	input [7:0] DataIn;		//8个信号输入端
	input EI;		//使能输入
	
	output EO;		//使能输出端
	output GS;		//优先级标志输出端
	output [2:0] Dataout;	//3个编码输出端
	
	reg [2:0] Dataout;
	reg EO, GS;
	
	integer I;
	
	always@(DataIn or EI)
		begin
			if(EI)
				begin
					Dataout = 7;
					EO = 1;
					GS = 1;
				end
			else if(DataIn = 8'b11111111)
				begin
					Dataout = 7;
					EO = 0;
					GS = 1;	
				end
			else
				for(I = 0; I < 8; I = I+1)
					begin
						if(~DataIn[I])
							begin
								Dataout = ~I;
								EO = 1;
								GS = 0;	
							end
					end
		end
endmodule		