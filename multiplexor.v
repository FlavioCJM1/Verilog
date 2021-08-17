module multiplexor(
input io,i1,s
output reg z
);
always @(*)
begin 
		if (s==0)
		z=io;
		else //s==1
		z=i1;
end 
endmodule 