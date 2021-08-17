// entradas y salidas
module divisor (
    input clk, rst,  // Frecuecia de 50 MHz
    output reg clk_n   // Señal de reloj nueva 

 

);
//Real
//parameter contador = 25_000_000;  //se pueden usar en el top hacia abajo 
//Simulador
parameter contador = 250_000;  //se pueden usar en el top hacia abajo 
localparam N = $clog2(contador-1);
////////
//////// REPRESENTAR AL NUMERO 14 ---> Requiere 4 bits --> [3:0]
//cables y registros 
reg [N-1:0] cuenta;   //cuenta hasta 3 0, 1, 10, 11

 


always @(posedge clk) begin 
	if  (rst==1)
	cuenta=0;
	else
    cuenta = cuenta + 1;
        if(cuenta == contador)
            begin
            clk_n = ~clk_n;
            cuenta = 0;
            end
        end
		  endmodule
				