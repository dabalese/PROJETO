module Program_Counter(
    input [31:0] PCin,
    input clk, rst,
    
    output reg [31:0] PC
);

initial
begin
	PC = 32'b0;
end

always @ (posedge clk or negedge rst) begin
    if(!rst) begin
        PC <= 32'b0;
    end else begin
        PC <= PCin;
    end
end

endmodule
