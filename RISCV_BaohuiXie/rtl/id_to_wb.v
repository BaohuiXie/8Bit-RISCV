// =============================================================================
// Filename: id_to_wb.v
// -----------------------------------------------------------------------------
// This file exports the instruction decoder module.
// Author: xie baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// =============================================================================
`include "../rtl/id_and_ex.v"
//`include "../rtl/data_memory.v"
`include "../rtl/MEMWB.v"


`timescale 1ns / 1ps
module id_to_wb(
	output wire [7:0] data_from_ram,//result_from_RAM to see the result
	
	output wire mem_read_from_idandex,
	output wire mem_write_from_idandex,
	output wire [7:0] alu_result_from_idandex,		//同时连接memwb
	output wire [7:0] write_data_to_memory,
	
	input wire [7:0] ram_data,
	
	input wire [15:0] instruction_input,
	input wire rst,
	input wire rst_registerfile,
	input wire clk
);
assign data_from_ram = ram_data;
//连接 id_and_ex 和dara memory
//wire mem_read_from_idandex;
//wire mem_write_from_idandex;
//wire [7:0] alu_result_from_idandex;		//同时连接memwb
//wire [7:0] write_data_to_memory;

//连接 id_and_ex 和 memwb
wire regwrite_from_idandex;
wire mem_to_reg_from_idandex;
wire [2:0] instruction_from_idandex;


//写回
wire  regwrite_from_wb_mux_in;		//memwb连接registerfile
wire [2:0] wb_address;		//写回地址 instruction[10:8] to registerfile
wire [7:0] wb_data;			//写回数据 to registerfile


id_and_ex id_and_ex1(regwrite_from_idandex,
					 mem_read_from_idandex,
					 mem_write_from_idandex,
					 mem_to_reg_from_idandex,
					 alu_result_from_idandex,
					 write_data_to_memory,
					 instruction_from_idandex,
					 
					 instruction_input,
					 rst,
					 rst_registerfile,
					 regwrite_from_wb,		//write back
					 wb_data,				//write back
					 wb_address,			//write back
					 clk
);

/* data_memory data_memory1(data_from_ram, 

						 alu_result_from_idandex,
						 write_data_to_memory,
						 mem_write_from_idandex,
						 rst,
						 mem_read_from_idandex
); */

memwb memwb1(regwrite_from_wb,
			 wb_address,
			 wb_data,
			 
			 regwrite_from_idandex,
			 mem_to_reg_from_idandex,
			 ram_data,
			 alu_result_from_idandex,
			 instruction_from_idandex,
			 rst,
		     clk
);

endmodule
