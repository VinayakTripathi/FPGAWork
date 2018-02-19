module signmagadder(Out,A,B);
	
	parameter N=4;
	output reg [N-1:0]Out;
	input [N-1:0]A,B;
	
	wire signA,signB;
	wire [N-2:0]magA,magB;
	
	reg [N-2:0]res,max,min;
	reg ressign;
	
	assign signA=A[N-1];
	assign signB=B[N-1];
	assign magA=A[N-2:0];
	assign magB=B[N-2:0];
	
	always @*
	begin
		if(magA>magB)
		begin
			max=magA;
			min=magB;
			ressign=signA;
		end

		else
		begin
			max=magB;
			min=magA;
			ressign=signB;
		end
		
		if(signA == signB)
		begin
			res=max+min;
		end
		
		else
		begin
			res=max-min;
		end
		
		Out={ressign,res};
	end

endmodule