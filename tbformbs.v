module tbformbs;

	reg [7:0]in;
	reg [2:0]num;
	reg lr;
	wire [7:0]out;
	
	modified_barrel_shift MBS(out,in,num,lr);
	
	initial
	begin
			in=8'hb4;num=2;lr=0;
		#0	$display("Out = %b",out);
		#10	in=8'h6f;num=3;lr=1;
		#0	$display("Out = %b",out);
		#10	in=8'h24;num=0;lr=0;
		#0	$display("Out = %b",out);
	end
	
endmodule