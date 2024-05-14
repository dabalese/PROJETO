module ULA(
    
    input [31:0] SrcA, SrcB,
    input [3:0] ULAControl,
    output reg [31:0] ULAResult,
    output reg Zero
    
);

initial
begin
	ULAResult = 32'b0;
	Zero = 1'b0;
end


always @(*) begin
    case(ULAControl)
        4'b0000: ULAResult = SrcA + SrcB;
        4'b0001: ULAResult = SrcA + ~SrcB + 1'b1;
        4'b0010: ULAResult = SrcA & SrcB;
        4'b0011: ULAResult = SrcA | SrcB;
        4'b0100: ULAResult = SrcA ^ SrcB;
        4'b0101: ULAResult = (SrcA < SrcB) ? 1'b1 : 1'b0;
        4'b0110: ULAResult = SrcA << SrcB;
        4'b0111: ULAResult = SrcA / SrcB;
        4'b1000: ULAResult = SrcA % SrcB;
        4'b1001: ULAResult = SrcA / 24'b100001111001110001111011; //div por constante 1,05946
        4'b1010: ULAResult = SrcA % 24'b100001111001110001111011; //rem por constante 1,05946
		  
        default: ULAResult = 32'b0;
    endcase
end

always @(*) begin
    if(ULAResult == 32'b0) begin
        Zero = 1'b1;
    end else begin
        Zero = 1'b0;
    end
end

endmodule
