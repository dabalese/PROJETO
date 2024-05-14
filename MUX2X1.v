module MUX2X1(input[31:0]a,b,input sel, output reg[31:0]res);

initial
begin
	res = 32'b0;
end

always @(*)begin
 if(sel)
  res = b;
 else
  res = a;
end
endmodule

