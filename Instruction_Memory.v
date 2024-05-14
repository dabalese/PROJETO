module Instruction_Memory(

input [31:0] A,
output reg [31:0] RD

);

initial
begin
	RD = 32'b0;
end

always @(*) begin
    case(A) 
	 
		  //declarar todos os registradores usados, antes do programa
        8'h00: RD = 32'h00000013; //addi x0, x0, 0
        8'h04: RD = 32'h00000093; //addi x1, x0, 0
        8'h08: RD = 32'h00000113; //addi x2, x0, 0
        8'h0C: RD = 32'h00000193; //addi x3, x0, 0
        8'h10: RD = 32'h00000213; //addi x4, x0, 0
        8'h14: RD = 32'h00000293; //addi x5, x0, 0
        8'h18: RD = 32'h00000313; //addi x6, x0, 0
        8'h1C: RD = 32'h00000393; //addi x7, x0, 0
        8'h20: RD = 32'h00000413; //addi x8, x0, 0
        8'h24: RD = 32'h00000493; //addi x9, x0, 0
        8'h28: RD = 32'h00000513; //addi x10, x0, 0
        8'h2C: RD = 32'h00000593; //addi x11, x0, 0
        8'h30: RD = 32'h00000613; //addi x12, x0, 0
        8'h34: RD = 32'h00000693; //addi x13, x0, 0
		  //declarar todos os registradores usados, antes do programa
		  
		  
        8'h38: RD = 32'h00100293; //addi x5, x0, 1
		  
        8'h3C: RD = 32'h0FF00603; //lb x12, 0xFF(x0)
        8'h40: RD = 32'h0FE00103; //lb x2, 0xFE(x0)
		  
        8'h44: RD = 32'h01758593; //addi x11, x11, 23
        8'h48: RD = 32'h01600313; //addi x6, x0, 22
		  
        8'h4C: RD = 32'h00B61633; //sll x12, x12, x11
		  
        8'h50: RD = 32'h04010E63; //I: beq x2, x0, F	
		  
        8'h54: RD = 32'h060641B3; //div x3, x12, x0
        8'h58: RD = 32'h06066233; //rem x4, x12, x0
		  
        8'h5C: RD = 32'h000184B3; //add x9, x3, x0
        8'h60: RD = 32'h00B49533; //sll x10, x9, x11
		  
        8'h64: RD = 32'h02030063; //L2: beq x6, x0, L1
        8'h68: RD = 32'h00521233; //sll x4, x4, x5
        8'h6C: RD = 32'h060241B3; //div x3, x4, x0
        8'h70: RD = 32'h006193B3; //sll x7, x3, x6
        8'h74: RD = 32'h00740433; //add x8, x8, x7
		  
        8'h78: RD = 32'h06026233; //rem x4, x4, x0
        8'h7C: RD = 32'hFFF30313; //addi x6, x6, -1
        8'h80: RD = 32'hFE5FF0EF; //jal L2
		  
        8'h84: RD = 32'h006193B3; //L1: sll x7, x3, x6
        8'h88: RD = 32'h00740433; //add x8, x8, x7
		  
		  
        8'h8C: RD = 32'h0E900FA3; //sb x9, 0xFF(x0)
        8'h90: RD = 32'h0E800F23; //sb x8, 0xFE(x0)
        8'h94: RD = 32'h00168693; //addi x13, x13, 1	  
		  
        8'h98: RD = 32'hFFF10113; //addi x2, x2, -1
        8'h9C: RD = 32'h00850633; //add x12, x10, x8
        8'hA0: RD = 32'h01600313; //addi x6, x0, 22
        8'hA4: RD = 32'h00000413; //addi x8, x0, 0
        8'hA8: RD = 32'hFA9FF0EF; //jal I
											 //F:
 
	
        default: RD = 32'h00000000; 
    endcase
end


endmodule
