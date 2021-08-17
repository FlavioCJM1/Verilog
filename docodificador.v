module docodificador(
input [3:0]display,
output reg [6:0]salida
);
always @(*)
begin 
case (display)
4'b0000:salida=7'b1000000;
4'b0001:salida=7'b1111001;
4'b0010:salida=7'b0100100;
4'b0011:salida=7'b0110000;
4'b0100:salida=7'b0011001;
4'b0101:salida=7'b0010010;
4'b0110:salida=7'b0000010;
4'b0111:salida=7'b0111000;
4'b1000:salida=7'b0000000;
4'b1001:salida=7'b0011000;
4'b1010:salida=7'b1000000;
4'b1011:salida=7'b1100000;
4'b1100:salida=7'b0110001;
4'b1101:salida=7'b1000010;
4'b1110:salida=7'b0110000;
4'b1111:salida=7'b0111000;
default:salida=7'b1111111;
endcase
end
endmodule
