module Register_File(

    input [31:0] Write_Data, //wd3
    input [4:0] Write_Adress, //wa3
    input Write_Enable, //we3
    input clock, //clk
    input reset, //reset	
	 
    input [4:0] ra1, ra2,  //ra1 e ra2
    output reg [31:0] rd1, rd2,  //rd1 e rd2
	 
	 //Ligações auxiliares para Debug:
	output reg [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,
							x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31
	//Ligações auxiliares para Debug:
	 
);

initial
begin
	rd1 = 32'b0;
	rd2 = 32'b0;
	
	x0 = 32'b0;
	x1 = 32'b0;
	x2 = 32'b0;
	x3 = 32'b0;
	x4 = 32'b0;
	x5 = 32'b0;
	x6 = 32'b0;
	x7 = 32'b0;
	x8 = 32'b0;
	x9 = 32'b0;
	x10 = 32'b0;
	x11 = 32'b0;
	x12 = 32'b0;
	x13 = 32'b0;
	x14 = 32'b0;
	x15 = 32'b0;
	x16 = 32'b0;
	x17 = 32'b0;
	x18 = 32'b0;
	x19 = 32'b0;
	x20 = 32'b0;
	x21 = 32'b0;
	x22 = 32'b0;
	x23 = 32'b0;
	x24 = 32'b0;
	x25 = 32'b0;
	x26 = 32'b0;
	x27 = 32'b0;
	x28 = 32'b0;
	x29 = 32'b0;
	x30 = 32'b0;
	x31 = 32'b0;
end


reg [31:0] registradores[31:0];

always @(posedge clock or negedge reset) begin
    if (!reset) begin
        registradores[0] <= 32'b0;  //necessário ser dessa forma para testar
        registradores[1] <= 32'b0;
        registradores[2] <= 32'b0;
        registradores[3] <= 32'b0;
        registradores[4] <= 32'b0;
        registradores[5] <= 32'b0;
        registradores[6] <= 32'b0;
        registradores[7] <= 32'b0;
        registradores[8] <= 32'b0;
        registradores[9] <= 32'b0;
        registradores[10] <= 32'b0;
        registradores[11] <= 32'b0;
        registradores[12] <= 32'b0;
        registradores[13] <= 32'b0;
        registradores[14] <= 32'b0;
        registradores[15] <= 32'b0;
        registradores[16] <= 32'b0;
        registradores[17] <= 32'b0;
        registradores[18] <= 32'b0;
        registradores[19] <= 32'b0;
        registradores[20] <= 32'b0;
        registradores[21] <= 32'b0;
        registradores[22] <= 32'b0;
        registradores[23] <= 32'b0;
        registradores[24] <= 32'b0;
        registradores[25] <= 32'b0;
        registradores[26] <= 32'b0;
        registradores[27] <= 32'b0;
        registradores[28] <= 32'b0;
        registradores[29] <= 32'b0;
        registradores[30] <= 32'b0;
        registradores[31] <= 32'b0;
    end else begin
        if (Write_Enable == 1'b1) begin
            registradores[Write_Adress] <= Write_Data;
            registradores[0] <= 32'b0;

        end
    end
end

always @(*) begin
    rd1 <= registradores[ra1];
    rd2 <= registradores[ra2];
end


//Ligações auxiliares para Debug
always @(*) begin
	x0 <= registradores[0];
	x1 <= registradores[1];
	x2 <= registradores[2];
	x3 <= registradores[3];
	x4 <= registradores[4];
	x5 <= registradores[5];
	x6 <= registradores[6];
	x7 <= registradores[7];
	x8 <= registradores[8];
	x9 <= registradores[9];
	x10 <= registradores[10];
	x11 <= registradores[11];
	x12 <= registradores[12];
	x13 <= registradores[13];
	x14 <= registradores[14];
	x15 <= registradores[15];
	x16 <= registradores[16];
	x17 <= registradores[17];
	x18 <= registradores[18];
	x19 <= registradores[19];
	x20 <= registradores[20];
	x21 <= registradores[21];
	x22 <= registradores[22];
	x23 <= registradores[23];
	x24 <= registradores[24];
	x25 <= registradores[25];
	x26 <= registradores[26];
	x27 <= registradores[27];
	x28 <= registradores[28];
	x29 <= registradores[29];
	x30 <= registradores[30];
	x31 <= registradores[31];
end
//Ligações auxiliares para Debug

endmodule

