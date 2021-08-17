module top(
input clk, rst, paso,
output luz_roja, luz_verde
);

//cables 

wire clk_n;

practicasemaforo c1(
.clk(clk_n),
.rst(rst), 
.paso(paso),
.luz_roja(luz_roja),
.luz_verde(luz_verde)
);


divisor c2 (
.clk(clk), 
.clk_n(clk_n)
);

endmodule 