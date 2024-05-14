module Control_Unit(
    input [6:0] OP,
    input [2:0] Funct3,
    input [6:0] Funct7,
    
    output reg RegWrite,
    output reg [1:0] ImmSrc,
    output reg ULASrc,
    output reg [3:0] ULAControl,
    output reg MemWrite,
    output reg [1:0] ResultSrc,
    output reg Branch,
    output reg Jump
	 
);



initial
begin
    RegWrite = 1'b0;
    ImmSrc = 2'b00;
    ULASrc = 1'b0;
    ULAControl = 4'b0000;
    MemWrite = 1'b0;
    ResultSrc = 2'b00;
    Branch = 1'b0;
    Jump = 1'b0;
end



always@(*)begin
    case(OP)
        7'b0110011: begin
            case({Funct3,Funct7})
                10'b0000000000: begin //ADD
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0000;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
                10'b0000100000: begin //SUB
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0001;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
                10'b1110000000: begin //AND
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0010;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
                10'b1100000000: begin //OR
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0011;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
                10'b1000000000: begin //XOR
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0100;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
                10'b0100000000: begin //SLT
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0101;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
					 10'b0010000000: begin //SLL
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0110;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
					 10'b1000000001: begin //DIV
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0111;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
					 10'b1100000001: begin //REM
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b1000;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
					 10'b1000000011: begin //DIV POR CONSTANTE
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b1001;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
					 10'b1100000011: begin //REM POR CONSTANTE
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b0;
                    ULAControl = 4'b1010;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
            endcase
        end
        
        7'b0010011: begin
            casez({Funct3,Funct7})
                10'b000???????: begin //ADDI
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b1;
                    ULAControl = 4'b0000;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
            endcase
        end

        7'b0000011: begin
            casez({Funct3,Funct7})
                10'b000???????: begin //LB
                    RegWrite = 1'b1;
                    ImmSrc = 2'b00;
                    ULASrc = 1'b1;
                    ULAControl = 4'b0000;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b01;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
            endcase
        end

        7'b0100011: begin
            casez({Funct3,Funct7})
                10'b000???????: begin //SB
                    RegWrite = 1'b0;
                    ImmSrc = 2'b01;
                    ULASrc = 1'b1;
                    ULAControl = 4'b0000;
                    MemWrite = 1'b1;
                    ResultSrc = 2'b00;
						  Branch = 1'b0;
						  Jump = 1'b0;
                end
            endcase
        end

        7'b1100011: begin
            casez({Funct3,Funct7})
                10'b000???????: begin //BEQ
                    RegWrite = 1'b0;
                    ImmSrc = 2'b10;
                    ULASrc = 1'b0;
                    ULAControl = 4'b0001;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b00;
						  Branch = 1'b1;
						  Jump = 1'b0;
                end
            endcase
        end
		  
        7'b1101111: begin
            casez({Funct3,Funct7})
                10'b??????????: begin //JAL
                    RegWrite = 1'b1;
                    ImmSrc = 2'b11;
                    ULASrc = 1'b1;
                    ULAControl = 4'b0000;
                    MemWrite = 1'b0;
                    ResultSrc = 2'b10;
						  Branch = 1'b0;
						  Jump = 1'b1;
                end
            endcase
        end

      	default: begin
				RegWrite = 1'b0;
            ImmSrc = 2'b00;
            ULASrc = 1'b0;
            ULAControl = 4'b0000;
            MemWrite = 1'b0;
            ResultSrc = 2'b00;
           	Branch = 1'b0;
				Jump = 1'b0;
		end
      
    endcase
end


endmodule

