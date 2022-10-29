// =============================================================================
// Filename: MEMRB.v
// -----------------------------------------------------------------------------
// This file include the MEM/WB pipline register for RISC.
// =============================================================================
`timescale 1ns / 1ps

module memwb(	
	output reg regwire_memwb_output,
	output reg [2:0] rd_memwb_output,			//instruction[10:8]
	output wire [7:0] wb_data,		//mux output write back to register file
	
	input wire regwire_memwb_input,
	input wire mem_to_reg_memwb_input,
	input wire [7:0] read_ram_data_memwb_input,
	input wire [7:0] alu_result_memwb_input,
	input wire [2:0] rd_memwb_input,			//instruction[10:8]
	input wire rst,
	input wire clk
);

reg mem_to_reg_memwb_output;
reg [7:0] read_ram_data_memwb_output, alu_result_memwb_output;

assign wb_data =  mem_to_reg_memwb_output ? read_ram_data_memwb_output : alu_result_memwb_output; //write back data

always@(posedge clk)begin
	if(rst)begin
		regwire_memwb_output <= 1'b0;
		read_ram_data_memwb_output <= 8'b0000_0000;
		alu_result_memwb_output <= 8'b0000_0000;
		rd_memwb_output <= 3'b000;
		mem_to_reg_memwb_output <= 1'b0;
	end else begin
		regwire_memwb_output <= regwire_memwb_input;
		read_ram_data_memwb_output <= read_ram_data_memwb_input;
		alu_result_memwb_output <= alu_result_memwb_input;
		rd_memwb_output <= rd_memwb_input;
		mem_to_reg_memwb_output <= mem_to_reg_memwb_input;
	end
end

endmodule