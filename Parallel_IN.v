module Parallel_IN(
    input [31:0] MemData, Address, DataIn1, DataIn2,
    output reg [31:0] RegData
);

initial
begin
	RegData = 32'b0;
end

always@(*)begin
    if(Address == 32'h000000FF) begin
        RegData = DataIn1;
    end else if(Address == 32'h000000FE) begin
        RegData = DataIn2;
    end else begin
        RegData = MemData;
    end
end

endmodule

