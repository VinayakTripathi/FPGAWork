module tbfordpe;
	
	reg [11:0]in;
	
	wire [3:0]first,second;
	
	dualpriorenc dpe(first,second,in);
	
	initial
	begin
			in=12'b001001000011;
		#0	$display("In = %b First = %b Second = %b",in,first,second);
		#10	in=12'b111111000001;
		#0	$display("In = %b First = %b Second = %b",in,first,second);
		#10	in=12'b101100000110;
		#0	$display("In = %b First = %b Second = %b",in,first,second);
	end
	
endmodule