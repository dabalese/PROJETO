module Test_Bench;
//---------- modifique a partir daqui ----------

//conexões do projeto
reg clk, rst;
reg [31:0] w_DataIn1;
reg [31:0] w_DataIn2;

wire w_PCSrc, w_RegWrite, w_ULASrc, w_MemWrite, w_Branch, w_Zero, w_Jump, W_Branch_Zero;
wire [1:0] w_ImmSrc, w_ResultSrc;
wire [3:0] w_ULAControl;
wire [31:0] w_Inst, w_Wd3, w_rd1SrcA, w_rd2, w_SrcB, w_ULAResult, w_RegData, w_RData, w_DataOut1, w_DataOut2, w_Imm, w_ImmPC, w_PC, w_PCp4, w_PCn;
//conexões do projeto




//declarações para testagem
wire [3:0] w_Inst_1;
wire [3:0] w_Inst_2;
wire [3:0] w_Inst_3;
wire [3:0] w_Inst_4;
wire [3:0] w_Inst_5;
wire [3:0] w_Inst_6;
wire [3:0] w_Inst_7;
wire [3:0] w_Inst_8;


assign w_Inst_1 = w_Inst[31:28];
assign w_Inst_2 = w_Inst[27:24];
assign w_Inst_3 = w_Inst[23:20];
assign w_Inst_4 = w_Inst[19:16];
assign w_Inst_5 = w_Inst[15:12];
assign w_Inst_6 = w_Inst[11:8];
assign w_Inst_7 = w_Inst[7:4];
assign w_Inst_8 = w_Inst[3:0];


wire [16:0] w_Inst_op37;
assign w_Inst_op37 = {w_Inst[6:0], w_Inst[14:12], w_Inst[31:25]};

wire [11:0] w_Imm00;
wire [11:0] w_Imm01;
wire [11:0] w_Imm10;
wire [20:0] w_Imm11;
assign w_Imm00 = w_Inst[31:20];
assign w_Imm01 = {w_Inst[31:25], w_Inst[11:7]};
assign w_Imm10 = {w_Inst[7], w_Inst[30:25], w_Inst[11:8], 1'b0};
assign w_Imm11 = {w_Inst[19:12], w_Inst[20], w_Inst[30:21], 1'b0};
//declarações para testagem






//loop de clk
initial
begin
	clk = 0;
	rst = 1;
end

always 
begin
	#10 clk = !clk;
end
//loop de clk





MUX2X1 MuxPCSrc(
    .a(w_PCp4),
    .b(w_ImmPC),
    .sel(w_PCSrc), 
    .res(w_PCn)
);



Program_Counter program_counter(
	.PCin(w_PCn),
   .clk(clk), 
	.rst(rst),
	.PC(w_PC)
);



ADDER somador_PC(
	.a(w_PC),
	.b(32'h00000004),
	.res(w_PCp4)
);



Instruction_Memory instruction_memory(
	 .A(w_PC),
	 .RD(w_Inst)
);



Control_Unit control_unit(
    .OP(w_Inst[6:0]),
    .Funct3(w_Inst[14:12]),
    .Funct7(w_Inst[31:25]),

    .RegWrite(w_RegWrite),
    .ImmSrc(w_ImmSrc),
    .ULASrc(w_ULASrc),
    .ULAControl(w_ULAControl),
    .MemWrite(w_MemWrite),
    .ResultSrc(w_ResultSrc),
	 .Branch(w_Branch),
	 .Jump(w_Jump)
);



E_AND e_and(
	.a(w_Branch),
	.b(w_Zero),  
	.c(W_Branch_Zero)
);

E_OR e_or(
	.a(W_Branch_Zero),
	.b(w_Jump),  
	.c(w_PCSrc)
);



//Ligações auxiliares para Debug
wire [31:0] register0;
wire [31:0] register1;
wire [31:0] register2;
wire [31:0] register3;
wire [31:0] register4;
wire [31:0] register5;
wire [31:0] register6;
wire [31:0] register7;
wire [31:0] register8;
wire [31:0] register9;
wire [31:0] register10;
wire [31:0] register11;
wire [31:0] register12;
wire [31:0] register13;
wire [31:0] register14;
wire [31:0] register15;
wire [31:0] register16;
wire [31:0] register17;
wire [31:0] register18;
wire [31:0] register19;
wire [31:0] register20;
wire [31:0] register21;
wire [31:0] register22;
wire [31:0] register23;
wire [31:0] register24;
wire [31:0] register25;
wire [31:0] register26;
wire [31:0] register27;
wire [31:0] register28;
wire [31:0] register29;
wire [31:0] register30;
wire [31:0] register31;
//Ligações auxiliares para Debug


Register_File register_file(
    .Write_Adress(w_Inst[11:7]),
    .Write_Enable(w_RegWrite),
    .Write_Data(w_Wd3),
    .clock(clk),
    .reset(rst),
    .ra1(w_Inst[19:15]),
    .ra2(w_Inst[24:20]),
    .rd1(w_rd1SrcA),
    .rd2(w_rd2),
	 
	 //Ligações auxiliares para Debug
	 .x0(register0), .x1(register1), .x2(register2), .x3(register3), .x4(register4), .x5(register5),
	 .x6(register6), .x7(register7), .x8(register8), .x9(register9), .x10(register10), .x11(register11),
	 .x12(register12), .x13(register13), .x14(register14), .x15(register15), .x16(register16), .x17(register17),
	 .x18(register18), .x19(register19), .x20(register20), .x21(register21), .x22(register22), .x23(register23),
	 .x24(register24), .x25(register25), .x26(register26), .x27(register27), .x28(register28), .x29(register29),
	 .x30(register30), .x31(register31)
	 //Ligações auxiliares para Debug
	 
);



EXTENSOR MuxImmSrc(
	.a(w_Inst[31:20]),
	.b({w_Inst[31:25], w_Inst[11:7]}),
	.c({w_Inst[7], w_Inst[30:25], w_Inst[11:8], 1'b0}),
	.d({w_Inst[19:12], w_Inst[20], w_Inst[30:21], 1'b0}),
	.sel(w_ImmSrc), 
	.res(w_Imm)
);



ADDER adder_IMM(
	.a(w_Imm),
	.b(w_PC),
	.res(w_ImmPC)
);



MUX2X1 MuxULASrc(
    .a(w_rd2),
    .b(w_Imm),
    .sel(w_ULASrc),
    .res(w_SrcB)
);



ULA ula(
    .SrcA(w_rd1SrcA),
    .SrcB(w_SrcB),
    .ULAControl(w_ULAControl),
    .ULAResult(w_ULAResult),
    .Zero(w_Zero)
);



Data_Memory data_memory(
    .rst(rst),
    .clk(clk),
    .WE(w_MemWrite),
    .A(w_ULAResult),
    .WD(w_rd2),
    .RD(w_RData)
);



Parallel_OUT parallel_out(
    .EN(w_MemWrite), 
    .clk(clk), 
    .rst(rst),
    .RegData(w_rd2),
    .Address(w_ULAResult),
    .DataOut1(w_DataOut1),
    .DataOut2(w_DataOut2)
);



Parallel_IN parallel_in(
    .MemData(w_RData), 
    .Address(w_ULAResult), 
    .DataIn1(w_DataIn1),
    .DataIn2(w_DataIn2),
    .RegData(w_RegData)
);



MUX3X1 MuxResSrc(
    .a(w_ULAResult),
    .b(w_RegData),
    .c(w_PCp4),
    .sel(w_ResultSrc), 
    .res(w_Wd3)
);


//entradas do projeto ficam aqui
initial
begin
	w_DataIn1 = 32'h00000154; //340
	w_DataIn2 = 32'h00000005; //5
end


endmodule
