//asignacion de entradas y salidas
module FlipFlop(
input S,R,CLK,
output  reg Q
);
 always @(posedge CLK)
 begin
	case({S,R})
	2'b00:Q=Q;
	2'b01:Q=0;
	2'b10:Q=1;
  default: Q=0;
 endcase 
end 
 endmodule 