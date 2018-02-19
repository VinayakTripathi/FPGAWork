module tbforsma;
	
	wire [3:0]Out;
	reg [3:0]A,B;
	
	signmagadder adder(Out,A,B);
	
	initial
	begin
			A=4'h9;B=4'hc;//9-4
		#0	$display("Out = %h",Out);
		#10	A=4'he;B=4'h3;//-6+3
		#0	$display("Out = %h",Out);
		#10	A=4'h2;B=4'h6;//2+6
		#0	$display("Out = %h",Out);
	end
	
endmodule