`timescale 1ns/1ns
module	test_bench();
	reg clk= 1'b0 ;

	pipe_top_level pip_top(clk);
	
	always #20 clk=~clk;

	initial begin 
	#5000
	$stop;
	end
endmodule

// tb