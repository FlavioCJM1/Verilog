 //entradas y salidas 
module contador(
	input clk, rst, cuenta, /// relij, reset, up=1 asendente up=0 desendente
	output [3:0] unidades, // 0-9
	output [3:0] decenas 
);

// estados 
reg [3:0] estado_p, estado_f;
reg [3:0] estado_pd, estado_fd;

// asignacion del estado presente y futuro 


//proceso de cambio
always @(posedge clk)
 begin
 	estado_f=estado_p;	
	estado_p=estado_f;
	estado_fd=estado_pd;
	estado_pd=estado_fd;
	
	if (rst==0)
	estado_f=estado_p+1;
	if (rst==1)
		begin
		estado_f = 0;
		estado_fd=0;
		end
	else if (cuenta==1)
	begin
		if (estado_p == 4'd9)
		begin
		estado_f=0;
		estado_fd=estado_pd+1;
		end
		else
		estado_f = estado_p +1;
		if (estado_pd==4'd9 && estado_p==4'd9)
		begin
		estado_fd=0;
		estado_f=0;
		end
				
		end
		
				
		else
		begin
		if (estado_p==4'd0)
		begin
		estado_f = 9;
		estado_fd=estado_pd-1;
		end
		else 
		estado_f = estado_p -1;
		end
		if (estado_pd==4'd0 && estado_p==4'd0)
		begin
		estado_fd=4'd9;
		estado_f=4'd9;
		end
		
		
end	
endmodule 	
	