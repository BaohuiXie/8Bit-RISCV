// =============================================================================
// Filename: instruction_memory.v
// -----------------------------------------------------------------------------
// This file include the instruction memory for RISC. This is ROM
// =============================================================================
`timescale 1ns / 1ps

module instruction_memory(//ROM
	output reg [15:0] instruction,
	input wire [7:0] instruction_address_from_pc,
	input wire rst
);
integer i;
reg [15:0] rom_memory [255:0];	//256 cell, each cell 16 bit for instruction

always@(*)begin
	if(rst)begin
		instruction <= 16'b0000_0000_0000_0000;
		for(i=0; i<256; i=i+1) begin : clear_rom
			rom_memory[i] <= 16'b0000_0000_0000_0000;
		end
	end else begin
		instruction <= rom_memory[instruction_address_from_pc];
	end 
end
endmodule

/* //opcode define
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

//R2 type instruction
		  ADD = 5'b10000,	//rd <-rd+rs
		  SUB = 5'b10001,	//rd <- rd-rs
		  AND = 5'b10010,	//rd<- rd & rs
		  OR = 5'b10011,	//rd<- rd | rs
		  EOR = 5'b10100,	//rd <- rd^rs

//R1 type instruction
		  NOT = 5'b11100,	//rd<-!rd
		  SHL = 5'b11101,	//rd<- rd<<1
		  SHR = 5'b11110;	//rd<- rd>>1 */