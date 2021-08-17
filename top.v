module top(
 input clk, rst, cuenta,
 output [6:0] unid,
 output [6:0] dec
);
wire clk_n;
wire [3:0] unidades_c;
wire [3:0] decenas_c;
 contador c1(
	 .clk(clk_n), 
	 .rst(rst), 
	 .cuenta(cuenta),
	 .unidades(unidades_c),
	 .decenas(decenas_c)
);
docodificador c2(
	.display(unidades_c),
	.salida(unid)
);
divisor c3(
    .clk(clk),
    .clk_n(clk_n)
);
docodificador c4(
	.display(decenas_c),
	.salida(dec)
);
 	 
endmodule 	 
