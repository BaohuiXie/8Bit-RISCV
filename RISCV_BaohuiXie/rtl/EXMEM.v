// =============================================================================
// Filename: EXMEM.v
// -----------------------------------------------------------------------------
// This file include the EX/MEM pipline register for RISC.
// =============================================================================
`timescale 1ns / 1ps

module exmem(
	output reg regwrite_exmem_output,
	output reg memread_exmem_output,
	output reg memwrite_exmem_output,
	output reg mem_to_reg_exmem_output,
	output reg [7:0] alu_result_exmem_output,
	output reg [7:0] write_data_exmem_output,
	output reg [2:0] rd_exmem_output,			//instruction[10:8]
	
	input wire regwrite_exmem_input,
	input wire memread_exmem_input,
	input wire memwrite_exmem_input,
	input wire mem_to_reg_exmem_input,
	input wire [7:0] alu_result_exmem_input,
	input wire [7:0] write_data_exmem_input,
	input wire [2:0] rd_exmem_input,			//instruction[10:8]
	input wire rst,
	input wire clk
);

always@(posedge clk)begin
	if(rst)begin
		alu_result_exmem_output <= 8'b0000_0000;
		rd_exmem_output <= 3'b000;
		write_data_exmem_output <= 8'b0000_0000;
		memwrite_exmem_output <= 1'b0;
		memread_exmem_output <= 1'b0;
		regwrite_exmem_output <= 1'b0;
		mem_to_reg_exmem_output <= 1'b0;
	end else begin
		alu_result_exmem_output <= alu_result_exmem_input;
		rd_exmem_output <= rd_exmem_input;
		write_data_exmem_output <= write_data_exmem_input;
		memwrite_exmem_output <= memwrite_exmem_input;
		memread_exmem_output <= memread_exmem_input;
		regwrite_exmem_output <= regwrite_exmem_input;
		mem_to_reg_exmem_output <= mem_to_reg_exmem_input;
	end
end

endmodule