// =============================================================================
// Filename: IFID.v
// -----------------------------------------------------------------------------
// This file include the IF/ID pipline register for RISC.
// =============================================================================
`timescale 1ns / 1ps

module ifid(
	output reg [15:0] instruction_ifid_output,
	input wire [15:0] instruction_ifid_input,
	input wire rst,
	input wire clk
);

always@(posedge clk)begin
	if(rst)begin
		instruction_ifid_output <= 16'b0000_0000_0000_0000;
	end else begin
		instruction_ifid_output <= instruction_ifid_input;
	end
end

endmodule