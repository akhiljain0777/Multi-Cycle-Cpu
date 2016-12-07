`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:12 10/23/2016
// Design Name:   CPU_datapath
// Module Name:   D:/CPU_ASJ/CPU_2110/CPU_dp_TB.v
// Project Name:  CPU_2110
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_dp_TB;

	// Inputs
	reg clk;
	reg ldPC;
	reg ldIR;
	reg ldMAR;
	reg rd_mem;
	reg wr_mem;
	reg ldtmp;
	reg ldMDRZ;
	reg ldMDRdata;
	reg wr_reg;
	reg rd_reg;
	reg ldALU;
	reg ldXPC;
	reg ldYPC;
	reg ldXtmp;
	reg ldYtmp;
	reg ldXreg;
	reg ldYreg;
	reg ldXmem;
	reg ldYmem;
	reg ldXtmp2;
	reg ldYtmp2;
	reg [2:0] wr_regA;
	reg [2:0] rd_regA;
	reg [2:0] fsel;
	reg [4:0] next_state;
	reg reset;
	reg [15:0] rom_mem0;
	reg [15:0] rom_mem1;
	reg [15:0] rom_mem2;
	reg [15:0] rom_mem3;
	reg [15:0] rom_mem4;
	reg [15:0] rom_mem5;
	reg [15:0] rom_mem6;
	reg [15:0] rom_mem7;
	reg [15:0] rom_mem8;
	reg [15:0] rom_mem9;
	reg [15:0] rom_mem10;
	reg [15:0] rom_mem11;
	reg [15:0] rom_mem12;
	reg [15:0] rom_mem13;
	reg [15:0] rom_mem14;
	reg [15:0] rom_mem15;
	reg [15:0] rom_mem16;
	reg [15:0] rom_mem17;
	reg [15:0] rom_mem18;
	reg [15:0] rom_mem19;

	// Outputs
	wire [2:0] opd1;
	wire [2:0] opd2;
	wire [2:0] opd3;
	wire C;
	wire V;
	wire S;
	wire Z_det;
	wire [4:0] state;
	wire [6:0] opc;
	wire [15:0] r0;
	wire [15:0] r1;
	wire [15:0] r2;
	wire [15:0] r3;
	wire [15:0] r4;
	wire [15:0] r5;
	wire [15:0] r6;
	wire [15:0] r7;

	// Instantiate the Unit Under Test (UUT)
	CPU_datapath uut (
		.clk(clk), 
		.ldPC(ldPC), 
		.ldIR(ldIR), 
		.ldMAR(ldMAR), 
		.rd_mem(rd_mem), 
		.wr_mem(wr_mem), 
		.ldtmp(ldtmp), 
		.ldMDRZ(ldMDRZ), 
		.ldMDRdata(ldMDRdata), 
		.wr_reg(wr_reg), 
		.rd_reg(rd_reg), 
		.ldALU(ldALU), 
		.ldXPC(ldXPC), 
		.ldYPC(ldYPC), 
		.ldXtmp(ldXtmp), 
		.ldYtmp(ldYtmp), 
		.ldXreg(ldXreg), 
		.ldYreg(ldYreg), 
		.ldXmem(ldXmem), 
		.ldYmem(ldYmem), 
		.ldXtmp2(ldXtmp2), 
		.ldYtmp2(ldYtmp2), 
		.wr_regA(wr_regA), 
		.rd_regA(rd_regA), 
		.fsel(fsel), 
		.opd1(opd1), 
		.opd2(opd2), 
		.opd3(opd3), 
		.C(C), 
		.V(V), 
		.S(S), 
		.Z_det(Z_det), 
		.state(state), 
		.next_state(next_state), 
		.opc(opc), 
		.reset(reset), 
		.rom_mem0(rom_mem0), 
		.rom_mem1(rom_mem1), 
		.rom_mem2(rom_mem2), 
		.rom_mem3(rom_mem3), 
		.rom_mem4(rom_mem4), 
		.rom_mem5(rom_mem5), 
		.rom_mem6(rom_mem6), 
		.rom_mem7(rom_mem7), 
		.rom_mem8(rom_mem8), 
		.rom_mem9(rom_mem9), 
		.rom_mem10(rom_mem10), 
		.rom_mem11(rom_mem11), 
		.rom_mem12(rom_mem12), 
		.rom_mem13(rom_mem13), 
		.rom_mem14(rom_mem14), 
		.rom_mem15(rom_mem15), 
		.rom_mem16(rom_mem16), 
		.rom_mem17(rom_mem17), 
		.rom_mem18(rom_mem18), 
		.rom_mem19(rom_mem19), 
		.r0(r0), 
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r4(r4), 
		.r5(r5), 
		.r6(r6), 
		.r7(r7)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ldPC = 0;
		ldIR = 0;
		ldMAR = 0;
		rd_mem = 0;
		wr_mem = 0;
		ldtmp = 0;
		ldMDRZ = 0;
		ldMDRdata = 0;
		wr_reg = 0;
		rd_reg = 0;
		ldALU = 0;
		ldXPC = 0;
		ldYPC = 0;
		ldXtmp = 0;
		ldYtmp = 0;
		ldXreg = 0;
		ldYreg = 0;
		ldXmem = 0;
		ldYmem = 0;
		ldXtmp2 = 0;
		ldYtmp2 = 0;
		wr_regA = 0;
		rd_regA = 0;
		fsel = 0;
		next_state = 0;
		reset = 0;
		rom_mem0 = 0;
		rom_mem1 = 0;
		rom_mem2 = 0;
		rom_mem3 = 0;
		rom_mem4 = 0;
		rom_mem5 = 0;
		rom_mem6 = 0;
		rom_mem7 = 0;
		rom_mem8 = 0;
		rom_mem9 = 0;
		rom_mem10 = 0;
		rom_mem11 = 0;
		rom_mem12 = 0;
		rom_mem13 = 0;
		rom_mem14 = 0;
		rom_mem15 = 0;
		rom_mem16 = 0;
		rom_mem17 = 0;
		rom_mem18 = 0;
		rom_mem19 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

