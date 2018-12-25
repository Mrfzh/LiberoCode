`timescale 1ns/1ns
module testbench_encoder;
	reg [7:0] DataIn, DataIn_0;
	reg [15:0] in, invec;
	wire [7:0] Seg;
	
	extend_coder test_encoder(
       DataIn,
       DataIn_0,
       EO,
       GS,
       GS_0,
       Q1,
       Q2,
       Seg,
       Y
    );

	initial
		begin
			in = 16'b0000000000000001;
			repeat(17)
				begin
					invec = ~in;
					{DataIn, DataIn_0} = invec;
					#20;
					in = in<<1;
				end
		end
		
endmodule