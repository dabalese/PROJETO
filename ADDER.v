module ADDER(
	input [31:0] a,b,
	output reg [31:0] res
);

initial
begin
	res = 32'b0;
end

always@(*)begin
	res <= a + b;
end

endmodule
