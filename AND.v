module E_AND(input a,b, output reg c);

initial
begin
	c = 1'b0;
end

always @(*)begin
	c = a&b;
end

endmodule
