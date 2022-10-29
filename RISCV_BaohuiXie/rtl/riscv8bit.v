// =============================================================================
// Filename: riscv8bit.v
// -----------------------------------------------------------------------------
// This file exports the top level of 8 bit riscv.
// Author: xie baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// =============================================================================
`include "../rtl/pc.v"
`include "../rtl/id_to_wb.v"

`timescale 1ns / 1ps
module riscv8bit(
	output wire [7:0] data_from_ram,//result_from_RAM to see the result
	//RAM
	output wire mem_read_from_idandex,
	output wire mem_write_from_idandex,
	output wire [7:0] alu_result_from_idandex,		//同时连接memwb
	output wire [7:0] write_data_to_memory,
	input wire [7:0] ram_data,
	
	//ROM
	output wire [7:0] pc_increment_address,
	
	
	input wire [15:0] instruction_input,
	input wire rst,
	input wire rst_registerfile,
	input wire clk 
);

id_to_wb id_to_wb1(data_from_ram,
				   mem_read_from_idandex,
				   mem_write_from_idandex,
				   alu_result_from_idandex,		
				   write_data_to_memory,
	
				   ram_data,
	
				   instruction_input,
				   rst,
				   rst_registerfile,
				   clk
);

pc pc1(pc_increment_address,	// instruction for 16 bit
	
	   clk,
	   rst
);


endmodule