// =============================================================================
// Filename: id.v
// -----------------------------------------------------------------------------
// This file exports the instruction decoder module.
// Author: xie baohui
// Email: bxieaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// =============================================================================
`include "../rtl/IFID.v"
`include "../rtl/registerfile.v"
`include "../rtl/control.v"
`include "../rtl/IDEX.v"


`timescale 1ns / 1ps
module id(
	output wire regwrite_out,
	output wire mem_read,
	output wire mem_write,
	output wire mem_to_reg,
	output wire alu_src,
	output wire [7:0] rd_data,
	output wire [7:0] rs_data,
	output wire [15:0] instruction_output,
	
	input wire [15:0] instruction_input,
	input wire rst,
	input wire rst_registerfile,
	input wire regwrite,
	input wire [7:0] write_data,
	input wire [2:0] write_addr,
	input wire clk
);



 //连接ifid和registerfile和control和idex
wire [15:0] instruction_from_ifid; 

//连接registerfile和idex
wire [7:0] rd, rs;

/* //instruction_from_registerfle连接control和IDEX
wire [15:0] instruction_from_registerfle; */

//连接control和idex
wire regwrite_from_control, 
	 mem_read_from_control, 
	 mem_write_from_control, 
	 mem_to_reg_from_control, 
	 alu_src_from_control;
	 

ifid ifid1(instruction_from_ifid, 
		   instruction_input, 
		   rst,
		   clk
);
registerfile registerfile1(rd,
						   rs,
						   //instruction_from_registerfle,

						   instruction_from_ifid [10:8],
						   instruction_from_ifid [7:5],
						   write_addr,	
						   write_data,						
						   regwrite,	
						   clk,					   
						   rst_registerfile

);
control control1(regwrite_from_control,
				 mem_read_from_control,
				 mem_write_from_control,
				 mem_to_reg_from_control,
				 alu_src_from_control,
				 instruction_from_ifid[15:11],
				 rst
);
idex idex1(regwrite_out,
		   mem_read,
		   mem_write,
		   mem_to_reg,
		   alu_src,
		   rd_data,
		   rs_data,
		   instruction_output,
		   
		   regwrite_from_control,
		   mem_read_from_control,
		   mem_write_from_control,
		   mem_to_reg_from_control,
		   alu_src_from_control,
		   rd,
		   rs,
		   instruction_from_ifid,
		   rst,
		   clk
);

endmodule
