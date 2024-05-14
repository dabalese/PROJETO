module EXTENSOR(
	input[11:0]a,
	input[11:0]b,
	input[11:0]c,
	input[19:0]d,
	input [1:0] sel, 
	output reg[31:0]res
);

initial
begin
	res = 32'b0;
end


always @(*) begin
	case(sel)
		2'b00: begin
			if (a[11] == 1'b1)
				begin
					res = {20'hFFFFF, a[11:0]};
			end else begin
					res = a;
			end
		end
		
		2'b01: begin
			if (b[11] == 1'b1)
				begin
					res = {20'hFFFFF, b[11:0]};
			end else begin
					res = b;
			end
		end
		
		2'b10: begin
			if (c[11] == 1'b1)
				begin
					res = {20'hFFFFF, c[11:0]};
			end else begin
					res = c;
			end
		end

	   2'b11: begin
			if (d[19] == 1'b1)
				begin
					res = {20'hFFF, d[19:0]};
			end else begin
					res = d;
			end
		end

		
		default: res = 32'b0;

	endcase
end
endmodule

