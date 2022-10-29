// =============================================================================
// Filename: control.v
// -----------------------------------------------------------------------------
// This file include the control block for RISC.
// =============================================================================

`timescale 1ns / 1ps

module control(
	output reg regwrite,
	output reg mem_read,
	output reg mem_write,
	output reg mem_to_reg,
	output reg alu_src,
	
	input wire [4:0] instruction,
	input wire rst
);
		  
always@(*) begin
	if(rst)begin
		{regwrite,mem_read} <= 2'b00;
		{mem_write,mem_to_reg,alu_src} <= 3'b000;
	end else begin
		case(instruction[4:3])
			2'b00: // j type instruction
			if(instruction[2:0]==3'b101)begin		//NOP
			//暂时解决方案no operation 时指针还是增加但在ROM里空一个address
				{regwrite,mem_read} <= 2'b00;
				{mem_write,mem_to_reg,alu_src} <= 3'b000;
			end else begin
			//这部分还没完成功能
				{regwrite,mem_read} <= 2'b00;
				{mem_write,mem_to_reg,alu_src} <= 3'b001;
			end
			2'b01: // i type instruction
				if(instruction[2:0]==3'b101)begin		//LDD
					{regwrite,mem_read} <= 2'b11;
					{mem_write,mem_to_reg,alu_src} <= 3'b011;
				end else if(instruction[2:0]==3'b110) begin	//STD
					{regwrite,mem_read} <= 2'b00;
					{mem_write,mem_to_reg,alu_src} <= 3'b101;
				end else begin
					{regwrite,mem_read} <= 2'b10;
					{mem_write,mem_to_reg,alu_src} <= 3'b001;
				end
			2'b10: // r2 type instruction
				begin
					{regwrite,mem_read} <= 2'b10;
					{mem_write,mem_to_reg,alu_src} <= 3'b000;
				end
			2'b11: // r1 type instruction
				begin
					{regwrite,mem_read} <= 2'b10;
					{mem_write,mem_to_reg,alu_src} <= 3'b000;
				end
			default: //NOP no operation
				begin
					{regwrite,mem_read} <= 2'b00;
					{mem_write,mem_to_reg,alu_src} <= 3'b000;
				end
		endcase
	end	
end	
endmodule	

 