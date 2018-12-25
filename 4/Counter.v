module Counter(clr, updown, clk, Q, C);
	input clr, updown, clk;
	output [7:0] Q;
	output C;
	reg [7:0] Q;
	reg C;
	
	always@(posedge clk or posedge clr)
		begin
			if(clr)
				begin 
					Q = 8'b00000000;
					C = 0;
				end
			else
				begin
					if(updown)
						begin
							if(Q == 8'b11111111)
								begin Q = 8'b00000000; C = 1; end
							else
								begin Q = Q + 1; C = 0; end;
						end
					else
						begin
							if(Q == 8'b00000000)
								begin Q = 8'b11111111; C = 1; end
							else
								begin Q = Q - 1; C = 0; end;
						end						
				end
		end
endmodule