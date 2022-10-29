// =============================================================================
// Filename: PC.v
// -----------------------------------------------------------------------------
// This file include the program counter for RISC.
// =============================================================================
`timescale 1ns / 1ps

module pc(
	output reg [7:0] pc_increment_address,	// instruction for 16 bit
	
	input wire clk,
	input wire rst
);


always@(posedge clk)begin
	if (rst) begin
		pc_increment_address <= 8'b0000_0000;
	end else begin
		pc_increment_address <= pc_increment_address + 8'b0000_0001;
	end
end
endmodule