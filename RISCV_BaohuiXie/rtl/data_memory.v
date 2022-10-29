// =============================================================================
// Filename: data_memory.v
// -----------------------------------------------------------------------------
// This file include the data memory for RISC. This is RAM
// =============================================================================
`timescale 1ns / 1ps

module data_memory(//RAM
	output reg [7:0] read_ram_data,

	input wire [7:0] address_ram,
	input wire [7:0] write_data,
	input wire memwrite,
	input wire rst,
	input wire memread
);

integer i;
reg [7:0] ram_memory [255:0];	//256 cell, each cell 8 bit for data


always@(posedge memwrite, posedge rst, posedge memread)begin
	if(rst)begin
		read_ram_data <= 8'b0000_0000; 
		for(i=0; i<256; i=i+1)begin: clean_data_memory
			ram_memory[i] <= 8'b0000_0000; 
		end
	end else if(memwrite) begin
		ram_memory[address_ram] <= write_data;
	end else begin
		read_ram_data <= ram_memory[address_ram];
	end
end

endmodule