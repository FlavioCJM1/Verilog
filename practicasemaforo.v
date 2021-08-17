module practicasemaforo(
input clk, rst, paso,
output reg luz_roja, luz_verde
);

reg estado_p, estado_f;
parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5;

always @(posedge clk)
begin 
	if (rst==1 && )
		estado_f=s0;
	else if (paso==1 && rst==0)
		estado_f=estado_p+1;
	else 
		estado_f=s1;
		estado_p=estado_f;		
end
	
always @(estado_p)
begin 
case(estado_p)
	s0: begin 
		 luz_roja=1;
		 luz_verde=0;
		 end
	s1: begin 
		 luz_roja=0;
		 luz_verde=1;
		 end
	s2: begin 
		 luz_roja=0;
		 luz_verde=1;
		 end
	s3: begin
		 luz_roja=0;
		 luz_verde=1;
		 end
	s4: begin 
		 luz_roja=0;
		 luz_verde=1;
		 end
	s5: begin 
		 luz_roja=0;
		 luz_verde=1;
		 end
endcase 
end
endmodule
