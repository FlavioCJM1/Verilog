`timescale 1ns/1ps
module tb_divisor();
//entradas con registros
reg clk;
//salidas con cables
wire clk_n;

localparam clk_period = 1;
////conexion 
divisor dut(
.clk(clk),
.clk_n(clk_n)
);
////estimulos 
always begin 
clk=0;
#(clk_period/2);  ////#1/2 = #0.5; 0.5 ns
clk=1;
#(clk_period/2);
end
initial begin 
#100
$stop;
end 
endmodule

