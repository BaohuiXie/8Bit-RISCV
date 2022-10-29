// =============================================================================
// Filename: id_and_ex.v
// -----------------------------------------------------------------------------
// This file exports the instruction decoder module.
// Author: xie baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// =============================================================================
`include "../rtl/id.v"
`include "../rtl/alu.v"
`include "../rtl/EXMEM.v"


`timescale 1ns / 1ps
module id_and_ex(
	output wire regwrite_out,
	output wire mem_read_out,
	output wire mem_write_out,
	output wire mem_to_reg_out,
	output wire [7:0] alu_result,
	output wire [7:0] write_data_to_memory,
	output wire [2:0] rd_address,	//instruction[10:8]
	
	input wire [15:0] instruction_input,
	input wire rst,
	input wire rst_registerfile,
	input wire regwrite,
	input wire [7:0] write_data,
	input wire [2:0] write_addr,
	input wire clk
);

//连接alu和exmem
wire [7:0] alu_result_from_alu;

//连接id和exmem
wire regwrite_from_id;
wire mem_read_from_id;
wire mem_write_from_id;
wire mem_to_reg_from_id;
wire alu_src_from_id;

//连接id和alu
wire [7:0] rd_data_from_id;	//同时也与data memory的write data通路
wire [7:0] rs_data_from_id;

//指令
wire [15:0] instruction_from_id;

id id1(regwrite_from_id,
	   mem_read_from_id,
	   mem_write_from_id,
	   mem_to_reg_from_id,
	   alu_src_from_id,
	   rd_data_from_id,
	   rs_data_from_id,
	   instruction_from_id,
	   
	   instruction_input,
	   rst,
	   rst_registerfile,
	   regwrite,
	   write_data,
	   write_addr,
	   clk
);

alu alu1(alu_result_from_alu,  
		 instruction_from_id, 
		 alu_src_from_id, 
		 rd_data_from_id,
		 rs_data_from_id,
		 rst
);

exmem exmem1(regwrite_out,
		   mem_read_out,
		   mem_write_out,
		   mem_to_reg_out,
		   alu_result,
		   write_data_to_memory,
		   rd_address,
		   
		   regwrite_from_id,
		   mem_read_from_id,
		   mem_write_from_id,
		   mem_to_reg_from_id,
		   alu_result_from_alu,
		   rd_data_from_id,		//write_data to data memory
		   instruction_from_id[10:8],
		   rst,
		   clk
);

endmodule
