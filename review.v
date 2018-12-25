/// 数据流风格
assign 		//连续赋值语句

/// 行为风格 
initial 	//语句只执行一次
always 		//重复执行

/// 边沿触发
posedge 	//上升沿
negedge		//下降沿

//功能模块的编写
module 模块名(input、output类型的变量名);

	input 输入变量;		
	output 输出变量;		
	
	reg 输出变量;
	
	always@(输入变量 or 输入变量 or ...)	//当输入变量发生变化时执行
		begin
			//根据不同情况对输出变量赋值
		end
		
	//如果需要时钟信号
	always@(posedge 时钟信号 or negedge 输入变量 or ...)	//这种情况下必须所有变量前加上posedge/negedge
		begin
			//根据不同情况对输出变量赋值
		end
		
endmodule	

//测试平台的编写
`timescale 1ns/1ns
module 测试模块名;
	reg 输入变量;
	wire 输出变量;
	
	模块名 实例名(模块变量);
			
	/*************组合电路的测试代码*******************/
	initial
		begin
			//给输入变量赋值 .. #20 .. #20 ..
		end
	
	/***********时序电路的测试代码**************/
	always #10 Clk = ~Clk;	//增加时钟信号
	
	initial	
		begin
			//和上面的组合电路一样，给输入变量赋值（记得给时钟信号赋初值）
		end	
		
	initial
		#300 $finish;

endmodule
