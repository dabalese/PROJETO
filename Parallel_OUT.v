module Parallel_OUT(
    input EN, clk, rst,
    input [31:0] RegData, Address,
    output reg [31:0] DataOut1, DataOut2
);

initial
begin
	DataOut1 = 32'b0;
	DataOut2 = 32'b0;
end


reg [31:0] registrador[1:0];

always@(posedge clk or negedge rst) begin
    if(!rst) begin
        registrador[0] <= 32'b0;
        registrador[1] <= 32'b0;
    end else begin
        if(EN == 1'b1 && Address == 32'h000000FF) begin
            registrador[0] <= RegData;
        end else if(EN == 1'b1 && Address == 32'h000000FE) begin
            registrador[1] <= RegData;
        end
    end
end
    
always@(*) begin
    DataOut1 = registrador[0];
    DataOut2 = registrador[1];
end

endmodule

