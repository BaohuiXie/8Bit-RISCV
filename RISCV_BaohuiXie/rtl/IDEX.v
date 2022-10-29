// =============================================================================
// Filename: IDEX.v
// -----------------------------------------------------------------------------
// This file include the ID/EX pipline register for RISC.
// =============================================================================
`timescale 1ns / 1ps

module idex(
	output reg regwrite_idex_output,
	output reg mem_read_idex_output,
	output reg mem_write_idex_output,
	output reg mem_to_reg_idex_output,
	output reg alu_src_idex_output,
	output reg [7:0] read_data_1_idex_output,
	output reg [7:0] read_data_2_idex_output,
	output reg [15:0] instruction_idex_output,
	
	input wire regwrite_idex_input,
	input wire mem_read_idex_input,
	input wire mem_write_idex_input,
	input wire mem_to_reg_idex_input,
	input wire alu_src_idex_input,
	input wire [7:0] read_data_1_idex_input,
	input wire [7:0] read_data_2_idex_input,
	input wire [15:0] instruction_idex_input,
	input wire rst,
	input wire clk
);

always@(posedge clk)begin
	if(rst)begin
		regwrite_idex_output <= 1'b0;
		mem_read_idex_output <= 1'b0;
		mem_write_idex_output <= 1'b0;
		mem_to_reg_idex_output <= 1'b0;
		alu_src_idex_output <= 1'b0;
		read_data_1_idex_output <= 8'b0000_0000;
		read_data_2_idex_output <= 8'b0000_0000;
		instruction_idex_output <= 16'b0000_0000_0000_0000;
	end else begin
		regwrite_idex_output <= regwrite_idex_input;
		mem_read_idex_output <= mem_read_idex_input;
		mem_write_idex_output <= mem_write_idex_input;
		mem_to_reg_idex_output <= mem_to_reg_idex_input;
		alu_src_idex_output <= alu_src_idex_input;
		read_data_1_idex_output <= read_data_1_idex_input;
		read_data_2_idex_output <= read_data_2_idex_input;
		instruction_idex_output <= instruction_idex_input;
	end
end

endmodule