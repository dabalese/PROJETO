module MUX3X1(
input[31:0]a,b,c,
input [1:0] sel, 
output reg[31:0]res
);

initial
begin
	res = 32'b0;
end


always @(*) begin
	case(sel)
		2'b00: res = a;
		2'b01: res = b;
		2'b10: res = c;
		default: res = 32'b0;
	endcase
end
endmodule
