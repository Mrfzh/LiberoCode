module vend_moore(Clk, Reset, In, Out);
	input Clk, Reset;
	input [1:0] In;
	output Out;
	reg Out;
	
	reg [4:0] current_state, next_state;
	parameter S0 = 5'b00001, S1 = 5'b00010, S2 = 5'b00100, S3 = 5'b01000, S4 = 5'b10000;
	
	always@(current_state or In)	//状态译码(给next_state赋值)
		begin
			case(current_state)
				S0:begin
					if(In[1]&In[0])
						next_state <= S3;
					else if(In[1])
						next_state <= S2;
					else if(In[0])
						next_state <= S1;	
					else
						next_state <= S0;
				end
				S1:begin
					if(In[1]&In[0])
						next_state <= S4;
					else if(In[1])
						next_state <= S3;
					else if(In[0])
						next_state <= S2;	
					else
						next_state <= S1;
				end
				S2:begin
					if(In[1])
						next_state <= S4;
					else if(In[0])
						next_state <= S3;	
					else
						next_state <= S2;
				end
				S3:begin
					if(In[1])
						next_state <= S4;
					else if(In[0])
						next_state <= S4;
					else
						next_state <= S3;
				end
				S4:begin
					next_state <= S0;
				end
				default:;
		end
		
	always@(posedge Clk or posedge Reset)	//状态寄存器（给current_state赋值）
		begin
			if(Reset)
				current_state <= S0;
			else
				current_state <= next_state;
		end
		
	always@(current_state)					//输出译码（给Out赋值）
		Out = (current_state == S4);		//这里也体现了Moore电路的特点，输出只和状态有关，和输入无关

endmodule



