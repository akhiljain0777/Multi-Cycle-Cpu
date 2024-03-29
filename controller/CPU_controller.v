`timescale 1ns / 1ps
module CPU_controller(
   C,V,S,Z_det,clk,reset,
	opc,opd1,opd2,opd3,
	ldPC,ldIR,ldMAR,rd_mem,wr_mem,ldtmp,ldMDRZ,ldMDRdata,wr_reg,rd_reg,ldALU,
	ldXPC,ldYPC,ldXtmp,ldYtmp,ldXreg,ldYreg,ldXmem,ldYmem,ldXtmp2,ldYtmp2,
	wr_regA,rd_regA,fsel,
	state,next_state
	);
	
	input C,V,S,Z_det,clk,reset;
	input[4:0] state;
	input[6:0] opc;
	input[2:0] opd1,opd2,opd3;
	output ldPC,ldIR,ldMAR,rd_mem,wr_mem,ldtmp,ldMDRZ,ldMDRdata,wr_reg,rd_reg,ldALU;
	output ldXPC,ldYPC,ldXtmp,ldYtmp,ldXreg,ldYreg,ldXmem,ldYmem,ldXtmp2,ldYtmp2;
	output[2:0] wr_regA,rd_regA,fsel;
	output[4:0] next_state;
	
	reg ldPC,ldIR,ldMAR,rd_mem,wr_mem,ldtmp,ldMDRZ,ldMDRdata,wr_reg,rd_reg,ldALU;
	reg ldXPC,ldYPC,ldXtmp,ldYtmp,ldXreg,ldYreg,ldXmem,ldYmem,ldXtmp2,ldYtmp2;
	reg[2:0] wr_regA,rd_regA,fsel;
	reg[4:0] next_state;
	
	reg after4goto6,after1goto21,after17goto3,after3goto12,after3goto14,after4goto15;
	reg after6goto20,after6goto9,after12goto14,after8goto11,after6goto17,after14goto18,after10goto7;
	
	
	
	always@(state or reset)begin
		casex(state)
			0:
			begin
				after4goto6=0;
				after1goto21=0;
				after17goto3=0;
				after3goto12=0;
				after3goto14=0;
				after4goto15=0;
				after6goto20=0;
				after6goto9=0;
				after12goto14=0;
				after8goto11=0;
				after6goto17=0;
				after14goto18=0;
				after10goto7=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(reset)next_state=state;
				else next_state=1;
			end
			1:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=1;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(after1goto21)next_state=21;
				else next_state=2;
			end
			2:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=1;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b111;
				next_state=3;
			end
			3:
			begin
				after17goto3=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=1;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(after3goto12)next_state=12;
				else begin
					if(after3goto14)next_state=14;
					else next_state=4;
				end
			end
			4:
			begin
				ldPC=1;
				if(after4goto6 | after4goto15)begin
					ldMDRdata=1;
					ldIR=0;
				end
				else begin
					ldIR=1;
					ldMDRdata=0;
				end
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=1;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b000;
				if(after4goto6)next_state=6;
				else begin
					if(after4goto15)next_state=15;
					else next_state=5;
				end
			end
			5:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(opc[6])begin
					casex(opc[5:2])
						4'b0000:
						begin
							next_state=1;
							after4goto6=1;
							after6goto20=1;
						end
						4'b0001:
						begin
							next_state=1;
							if(Z_det)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0010:
						begin
							next_state=1;
							if(Z_det==0)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0011:
						begin
							next_state=1;
							if(C)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0100:
						begin
							next_state=1;
							if(C==0)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0101:
						begin
							next_state=1;
							if(V)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0110:
						begin
							next_state=1;
							if(V==0)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b0111:
						begin
							next_state=1;
							if(S)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b1000:
						begin
							next_state=1;
							if(S==0)begin
								after4goto6=1;
								after6goto20=1;
							end
						end
						4'b1001:
						begin
							next_state=1;
							after1goto21=1;
							after4goto6=1;
							after6goto20=1;
						end
						4'b1010:next_state=22;
						default:next_state=23;
					endcase
				end
				else begin
					if(opc[5])begin
						casex(opc[4:3])
							2'b00:next_state=7;
							2'b01:
							begin
								casex(opc[2:0])
									3'b000:
									begin
										next_state=1;
										after4goto6=1;
									end
									3'b001:next_state=8;
									3'b010:
									begin
										next_state=1;
										after4goto6=1;
										after6goto9=1;
									end
									3'b011:begin
										next_state=8;
										after8goto11=1;
									end
									3'b100:
									begin
										next_state=1;
										after4goto6=1;
										after6goto9=1;
										after12goto14=1;
									end
									default:next_state=23;
								endcase
							end
							2'b10:
							begin
								casex(opc[2:0])
									3'b000:
									begin
										next_state=1;
										after4goto15=1;
									end
									3'b001:next_state=16;
									3'b010:
									begin
										next_state=1;
										after4goto6=1;
										after6goto9=1;
									end
									3'b011:begin
										next_state=8;
										after8goto11=1;
									end
									3'b100:
									begin
										next_state=1;
										after4goto6=1;
										after6goto9=1;
										after12goto14=1;
									end
									default:next_state=23;
								endcase
							end
							2'b11:
							begin
								casex(opc[2:0])
									3'b010:
									begin
										next_state=1;
										after4goto6=1;
										after6goto17=1;
									end
									3'b100:
									begin
										next_state=1;
										after4goto6=1;
										after6goto17=1;
										after17goto3=1;
										after14goto18=1;
									end
									default:next_state=23;
								endcase
							end
						endcase
					end
					else begin
						casex(opc[2:0])
							3'b000:
							begin
								next_state=1;
								after4goto6=1;
							end
							3'b001:next_state=8;
							3'b010:
							begin
								next_state=1;
								after4goto6=1;
								after6goto9=1;
							end
							3'b011:begin
								next_state=8;
								after8goto11=1;
							end
							3'b100:
							begin
								next_state=1;
								after4goto6=1;
								after6goto9=1;
								after12goto14=1;
							end
							default:next_state=23;
						endcase
					end
				end
			end
			6:
			begin
				after4goto6=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=1;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(after6goto9)next_state=9;
				else begin
					if(after6goto17)next_state=17;
					else begin
						if(after6goto20)next_state=20;
						else next_state=7;
					end
				end
			end
			7:
			begin
				after10goto7=0;
 				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				if(opc[5:3]==3'b101)wr_reg=0;
				else wr_reg=1;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				if(opc[5:3]==3'b101)wr_regA=3'b0;
				else wr_regA=opd1;
				rd_regA=opd1;
				fsel=opc[5:3];
				next_state=1;
			end
			8:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=1;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd2;
				fsel=3'b0;
				if(after8goto11)next_state=11;
				else next_state=7;
			end
			9:
			begin
				after6goto9=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=1;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd2;
				fsel=3'b000;
				next_state=10;
			end
			10:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=1;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(after10goto7)next_state=7;
				else next_state=11;
			end
			11:
			begin
				after8goto11=0;
				ldPC=0;
				ldIR=0;
				ldMAR=1;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd3;
				fsel=3'b000;
				next_state=3;
				after3goto12=1;
			end
			12:
			begin
				after3goto12=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=1;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				if(after12goto14)next_state=14;
				else begin
					if(opc[5:3]==3'b110)next_state=15;
					else next_state=6;
				end
			end
			13:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=1;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=1;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b110;
				next_state=10;
				after10goto7=1;
			end
			14:
			begin
				after12goto14=0;
				after3goto14=0;
				ldPC=0;
				ldIR=0;
				ldMAR=1;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=1;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b110;
				if(after14goto18)next_state=18;
				else begin
					next_state=3;
					after3goto12=1;
				end
			end
			15:
			begin
				after4goto15=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=1;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=1;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=opd1;
				rd_regA=3'b0;
				fsel=3'b110;
				next_state=1;
			end
			16:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=1;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=opd1;
				rd_regA=opd2;
				fsel=3'b110;
				next_state=1;
			end
			17:
			begin
				after6goto17=0;
				ldPC=0;
				ldIR=0;
				ldMAR=1;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd1;
				fsel=3'b000;
				if(after17goto3)begin
					next_state=3;
					after3goto14=1;
				end
				else next_state=18;
			end
			18:
			begin
				after14goto18=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=1;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd2;
				fsel=3'b110;
				next_state=19;
			end
			19:
			begin
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=1;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				next_state=1;
			end
			20:
			begin
				after6goto20=0;
				ldPC=1;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=1;
				ldXPC=1;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b000;
				next_state=1;
			end
			21:
			begin
				after1goto21=0;
				ldPC=0;
				ldIR=0;
				ldMAR=1;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=1;
				rd_reg=0;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=opd1;
				rd_regA=3'b0;
				fsel=3'b111;
				next_state=2;
			end
			22:
			begin
				ldPC=1;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=1;
				ldALU=1;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=1;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=opd1;
				fsel=3'b110;
				next_state=1;
			end
			23:
			begin
				after4goto6=0;
				after1goto21=0;
				after17goto3=0;
				after3goto12=0;
				after3goto14=0;
				after4goto15=0;
				after6goto20=0;
				after6goto9=0;
				after12goto14=0;
				after8goto11=0;
				after6goto17=0;
				after14goto18=0;
				after10goto7=0;
				ldPC=0;
				ldIR=0;
				ldMAR=0;
				rd_mem=0;
				wr_mem=0;
				ldtmp=0;
				ldMDRZ=0;
				ldMDRdata=0;
				wr_reg=0;
				rd_reg=0;
				ldALU=0;
				ldXPC=0;
				ldYPC=0;
				ldXtmp=0;
				ldYtmp=0;
				ldXreg=0;
				ldYreg=0;
				ldXmem=0;
				ldYmem=0;
				ldXtmp2=0;
				ldYtmp2=0;
				wr_regA=3'b0;
				rd_regA=3'b0;
				fsel=3'b0;
				next_state=state;
			end
		endcase
	end
endmodule

