module tbforBCDinc;

	wire [11:0]Output;
	reg [11:0]Input;
	reg [3:0]part1,part2,part3;
	
	BCDIncrementor BCD(Output,Input);
	
	initial
	begin
			part1=$urandom_range(0,9);part2=$urandom_range(0,9);part3=$urandom_range(0,9);
			Input={part3,part2,part1};
		#0	$display("Output : %b  Input : %b",Output,Input);
		#10	part1=$urandom_range(0,9);part2=$urandom_range(0,9);part3=$urandom_range(0,9);
			Input={part3,part2,part1};
		#0	$display("Output : %b  Input : %b",Output,Input);
		#10	part1=$urandom_range(0,9);part2=$urandom_range(0,9);part3=$urandom_range(0,9);
			Input={part3,part2,part1};
		#0	$display("Output : %b  Input : %b",Output,Input);
		#10	part1=$urandom_range(0,9);part2=$urandom_range(0,9);part3=$urandom_range(0,9);
			Input={part3,part2,part1};
		#0	$display("Output : %b  Input : %b",Output,Input);
	end
	
endmodule