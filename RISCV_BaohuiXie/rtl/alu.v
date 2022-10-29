// =============================================================================
// Filename: alu.v
// -----------------------------------------------------------------------------
// This file include the alu for RISC.
// =============================================================================
`timescale 1ns / 1ps

module alu(
	output reg [7:0] alu_result,
	input wire [15:0] instruction,
	input wire alu_src,
	input wire [7:0] read_data_1,
	input wire [7:0] read_data_2,
	input wire rst
);
	
wire [7:0] alu_2nd_input;
wire [4:0] alu_op;

assign alu_op = instruction[15:11];
assign alu_2nd_input = alu_src ? instruction[7:0] : read_data_2;

//opcode define
//J type instruction
parameter JMP = 5'b00000,
		  BRC = 5'b00001,
		  BRZ = 5'b00010,
		  BRV = 5'b00011,
		  JSR = 5'b00100,
		  NOP = 5'b00101,	//no operation

//i type instruction
		  ADDI = 5'b01000,	//rd<-rd+k
		  SUBI = 5'b01001,	//rd<-rd-k
		  ANDI = 5'b01010,	//rd<-rd & k
		  ORI = 5'b01011,	//rd<-rd | k
		  LDI = 5'b01100,	//rd<-k
		  LDD = 5'b01101,	//rd<-[A]
		  STD = 5'b01110,	//[A] <- rs

//R2 type instruction
		  ADD = 5'b10000,	//rd <-rd+rs
		  SUB = 5'b10001,	//rd <- rd-rs
		  AND = 5'b10010,	//rd<- rd & rs
		  OR = 5'b10011,	//rd<- rd | rs
		  EOR = 5'b10110,	//rd <- rd^rs

//R1 type instruction
		  NOT = 5'b11100,	//rd<-!rd
		  SHL = 5'b11101,	//rd<- rd<<1
		  SHR = 5'b11110;	//rd<- rd>>1

always @(*) begin
	if(rst)begin
		alu_result = 8'b0000_0000;
	end else begin
		casez(alu_op)
			NOP: 
				begin
					alu_result = 8'b0000_0000;
				end
			ADDI: 
				begin	
					alu_result = read_data_1 + alu_2nd_input;
				end
			SUBI: 
				begin
					alu_result = read_data_1 - alu_2nd_input;
				end
			ANDI: 
				begin
					alu_result = read_data_1 & alu_2nd_input;
				end 
			ORI: 
				begin
					alu_result = read_data_1 | alu_2nd_input;
				end 
			LDI: 
				begin
					alu_result = alu_2nd_input;
				end
			LDD: 
				begin
					alu_result = alu_2nd_input;
				end 
			STD:
				begin
					alu_result = alu_2nd_input;
				end
			ADD: 
				begin
					alu_result = read_data_1 + alu_2nd_input;
				end
			SUB: 
				begin
					alu_result = read_data_1 - alu_2nd_input;
				end 
			AND: 
				begin
					alu_result = read_data_1 & alu_2nd_input;
				end 
			OR: 
				begin
					alu_result = read_data_1 | alu_2nd_input;
				end 
			EOR: 
				begin
					alu_result = read_data_1 ^ alu_2nd_input;
				end
			NOT: 
				begin
					alu_result = ~read_data_1;
				end
			SHL: 
				begin
					alu_result = read_data_1 << 1;
				end 
			SHR: 
				begin
					alu_result = read_data_1 >> 1;
				end
			default:	
				begin
					alu_result = 8'b0000_0000;
				end
		endcase
	end
end
			 
			
endmodule
