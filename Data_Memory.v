module Data_Memory(
input rst, clk, WE,
input [31:0] A, WD,
output reg [31:0] RD
);

initial
begin
	RD = 32'b0;
end


reg [31:0] registradores[255:0];

always@(posedge clk or negedge rst) begin
	if(!rst) begin
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
		registradores[32] <= 32'b0;
		registradores[33] <= 32'b0;
		registradores[34] <= 32'b0;
		registradores[35] <= 32'b0;
		registradores[36] <= 32'b0;
		registradores[37] <= 32'b0;
		registradores[38] <= 32'b0;
		registradores[39] <= 32'b0;
		registradores[40] <= 32'b0;
		registradores[41] <= 32'b0;
		registradores[42] <= 32'b0;
		registradores[43] <= 32'b0;
		registradores[44] <= 32'b0;
		registradores[45] <= 32'b0;
		registradores[46] <= 32'b0;
		registradores[47] <= 32'b0;
		registradores[48] <= 32'b0;
		registradores[49] <= 32'b0;
		registradores[50] <= 32'b0;
		registradores[51] <= 32'b0;
		registradores[52] <= 32'b0;
		registradores[53] <= 32'b0;
		registradores[54] <= 32'b0;
		registradores[55] <= 32'b0;
		registradores[56] <= 32'b0;
		registradores[57] <= 32'b0;
		registradores[58] <= 32'b0;
		registradores[59] <= 32'b0;
		registradores[60] <= 32'b0;
		registradores[61] <= 32'b0;
		registradores[62] <= 32'b0;
		registradores[63] <= 32'b0;
		registradores[64] <= 32'b0;
		registradores[65] <= 32'b0;
		registradores[66] <= 32'b0;
		registradores[67] <= 32'b0;
		registradores[68] <= 32'b0;
		registradores[69] <= 32'b0;
		registradores[70] <= 32'b0;
		registradores[71] <= 32'b0;
		registradores[72] <= 32'b0;
		registradores[73] <= 32'b0;
		registradores[74] <= 32'b0;
		registradores[75] <= 32'b0;
		registradores[76] <= 32'b0;
		registradores[77] <= 32'b0;
		registradores[78] <= 32'b0;
		registradores[79] <= 32'b0;
		registradores[80] <= 32'b0;
		registradores[81] <= 32'b0;
		registradores[82] <= 32'b0;
		registradores[83] <= 32'b0;
		registradores[84] <= 32'b0;
		registradores[85] <= 32'b0;
		registradores[86] <= 32'b0;
		registradores[87] <= 32'b0;
		registradores[88] <= 32'b0;
		registradores[89] <= 32'b0;
		registradores[90] <= 32'b0;
		registradores[91] <= 32'b0;
		registradores[92] <= 32'b0;
		registradores[93] <= 32'b0;
		registradores[94] <= 32'b0;
		registradores[95] <= 32'b0;
		registradores[96] <= 32'b0;
		registradores[97] <= 32'b0;
		registradores[98] <= 32'b0;
		registradores[99] <= 32'b0;
		registradores[100] <= 32'b0;
		registradores[101] <= 32'b0;
		registradores[102] <= 32'b0;
		registradores[103] <= 32'b0;
		registradores[104] <= 32'b0;
		registradores[105] <= 32'b0;
		registradores[106] <= 32'b0;
		registradores[107] <= 32'b0;
		registradores[108] <= 32'b0;
		registradores[109] <= 32'b0;
		registradores[110] <= 32'b0;
		registradores[111] <= 32'b0;
		registradores[112] <= 32'b0;
		registradores[113] <= 32'b0;
		registradores[114] <= 32'b0;
		registradores[115] <= 32'b0;
		registradores[116] <= 32'b0;
		registradores[117] <= 32'b0;
		registradores[118] <= 32'b0;
		registradores[119] <= 32'b0;
		registradores[120] <= 32'b0;
		registradores[121] <= 32'b0;
		registradores[122] <= 32'b0;
		registradores[123] <= 32'b0;
		registradores[124] <= 32'b0;
		registradores[125] <= 32'b0;
		registradores[126] <= 32'b0;
		registradores[127] <= 32'b0;
		registradores[128] <= 32'b0;
		registradores[129] <= 32'b0;
		registradores[130] <= 32'b0;
		registradores[131] <= 32'b0;
		registradores[132] <= 32'b0;
		registradores[133] <= 32'b0;
		registradores[134] <= 32'b0;
		registradores[135] <= 32'b0;
		registradores[136] <= 32'b0;
		registradores[137] <= 32'b0;
		registradores[138] <= 32'b0;
		registradores[139] <= 32'b0;
		registradores[140] <= 32'b0;
		registradores[141] <= 32'b0;
		registradores[142] <= 32'b0;
		registradores[143] <= 32'b0;
		registradores[144] <= 32'b0;
		registradores[145] <= 32'b0;
		registradores[146] <= 32'b0;
		registradores[147] <= 32'b0;
		registradores[148] <= 32'b0;
		registradores[149] <= 32'b0;
		registradores[150] <= 32'b0;
		registradores[151] <= 32'b0;
		registradores[152] <= 32'b0;
		registradores[153] <= 32'b0;
		registradores[154] <= 32'b0;
		registradores[155] <= 32'b0;
		registradores[156] <= 32'b0;
		registradores[157] <= 32'b0;
		registradores[158] <= 32'b0;
		registradores[159] <= 32'b0;
		registradores[160] <= 32'b0;
		registradores[161] <= 32'b0;
		registradores[162] <= 32'b0;
		registradores[163] <= 32'b0;
		registradores[164] <= 32'b0;
		registradores[165] <= 32'b0;
		registradores[166] <= 32'b0;
		registradores[167] <= 32'b0;
		registradores[168] <= 32'b0;
		registradores[169] <= 32'b0;
		registradores[170] <= 32'b0;
		registradores[171] <= 32'b0;
		registradores[172] <= 32'b0;
		registradores[173] <= 32'b0;
		registradores[174] <= 32'b0;
		registradores[175] <= 32'b0;
		registradores[176] <= 32'b0;
		registradores[177] <= 32'b0;
		registradores[178] <= 32'b0;
		registradores[179] <= 32'b0;
		registradores[180] <= 32'b0;
		registradores[181] <= 32'b0;
		registradores[182] <= 32'b0;
		registradores[183] <= 32'b0;
		registradores[184] <= 32'b0;
		registradores[185] <= 32'b0;
		registradores[186] <= 32'b0;
		registradores[187] <= 32'b0;
		registradores[188] <= 32'b0;
		registradores[189] <= 32'b0;
		registradores[190] <= 32'b0;
		registradores[191] <= 32'b0;
		registradores[192] <= 32'b0;
		registradores[193] <= 32'b0;
		registradores[194] <= 32'b0;
		registradores[195] <= 32'b0;
		registradores[196] <= 32'b0;
		registradores[197] <= 32'b0;
		registradores[198] <= 32'b0;
		registradores[199] <= 32'b0;
		registradores[200] <= 32'b0;
		registradores[201] <= 32'b0;
		registradores[202] <= 32'b0;
		registradores[203] <= 32'b0;
		registradores[204] <= 32'b0;
		registradores[205] <= 32'b0;
		registradores[206] <= 32'b0;
		registradores[207] <= 32'b0;
		registradores[208] <= 32'b0;
		registradores[209] <= 32'b0;
		registradores[210] <= 32'b0;
		registradores[211] <= 32'b0;
		registradores[212] <= 32'b0;
		registradores[213] <= 32'b0;
		registradores[214] <= 32'b0;
		registradores[215] <= 32'b0;
		registradores[216] <= 32'b0;
		registradores[217] <= 32'b0;
		registradores[218] <= 32'b0;
		registradores[219] <= 32'b0;
		registradores[220] <= 32'b0;
		registradores[221] <= 32'b0;
		registradores[222] <= 32'b0;
		registradores[223] <= 32'b0;
		registradores[224] <= 32'b0;
		registradores[225] <= 32'b0;
		registradores[226] <= 32'b0;
		registradores[227] <= 32'b0;
		registradores[228] <= 32'b0;
		registradores[229] <= 32'b0;
		registradores[230] <= 32'b0;
		registradores[231] <= 32'b0;
		registradores[232] <= 32'b0;
		registradores[233] <= 32'b0;
		registradores[234] <= 32'b0;
		registradores[235] <= 32'b0;
		registradores[236] <= 32'b0;
		registradores[237] <= 32'b0;
		registradores[238] <= 32'b0;
		registradores[239] <= 32'b0;
		registradores[240] <= 32'b0;
		registradores[241] <= 32'b0;
		registradores[242] <= 32'b0;
		registradores[243] <= 32'b0;
		registradores[244] <= 32'b0;
		registradores[245] <= 32'b0;
		registradores[246] <= 32'b0;
		registradores[247] <= 32'b0;
		registradores[248] <= 32'b0;
		registradores[249] <= 32'b0;
		registradores[250] <= 32'b0;
		registradores[251] <= 32'b0;
		registradores[252] <= 32'b0;
		registradores[253] <= 32'b0;
		registradores[254] <= 32'b0;
		registradores[255] <= 32'b0;

	
			
	end else begin
		if(WE == 1'b1) begin
			registradores[A] <= WD;
		end
	end
end


always@(*)begin
	RD = registradores[A];
end 


endmodule

