// =============================================================================
// Filename: registerfile.v
// -----------------------------------------------------------------------------
// This file include the registers file for RISC.
// =============================================================================
`timescale 1ns / 1ps

module registerfile(

	output wire [7:0] read_data_1,	//rs1 or rd
	output wire [7:0] read_data_2,	//rs2 
	//output reg [15:0] instruction_from_registerfle,
 
	input wire [2:0] rd,
	input wire [2:0] rs,  
	input wire [2:0] write_address,
	input wire [7:0] write_data,
	input wire regwrite,
	input wire clk,
	input wire rst
);


reg [7:0] register_memory [7:0];
assign read_data_1 = register_memory [rd];
assign read_data_2 = register_memory [rs];

always@(posedge clk)begin
	if(rst)begin
		register_memory[0] <= 8'b0000_0000;
		register_memory[1] <= 8'b0000_0000;
		register_memory[2] <= 8'b0000_0000;
		register_memory[3] <= 8'b0000_0000;
		register_memory[4] <= 8'b0000_0000;
		register_memory[5] <= 8'b0000_0000;
		register_memory[6] <= 8'b0000_0000;
		register_memory[7] <= 8'b0000_0000;
	end else if(regwrite)begin
		register_memory[write_address] <= write_data;
	end else begin
		register_memory[0] <= register_memory[0];
		register_memory[1] <= register_memory[1];
		register_memory[2] <= register_memory[2];
		register_memory[3] <= register_memory[3];
		register_memory[4] <= register_memory[4];
		register_memory[5] <= register_memory[5];
		register_memory[6] <= register_memory[6];
		register_memory[7] <= register_memory[0];
	end
end

endmodule	














/* 

reg [7:0] register_memory[0];
reg [7:0] register_memory[1];
reg [7:0] register_memory[2];
reg [7:0] register_memory[3];
reg [7:0] register_memory[4];
reg [7:0] register_memory[5];
reg [7:0] register_memory[6];
reg [7:0] register_memory[7];


always@(posedge clk)begin
	if(rst)begin
		register_memory[0] <= 8'b0000_0000;
		register_memory[1] <= 8'b0000_0000;
		register_memory[2] <= 8'b0000_0000;
		register_memory[3] <= 8'b0000_0000;
		register_memory[4] <= 8'b0000_0000;
		register_memory[5] <= 8'b0000_0000;
		register_memory[6] <= 8'b0000_0000;
		register_memory[7] <= 8'b0000_0000;
		read_data_1 <= 8'b0000_0000;
		read_data_2 <= 8'b0000_0000;
	end else if(regwrite)begin
		case(write_address)
			3'b001: register_memory[1] <= write_data;
			3'b010: register_memory[2] <= write_data;
			3'b011: register_memory[3] <= write_data;
			3'b100: register_memory[4] <= write_data;
			3'b101: register_memory[5] <= write_data;
			3'b110: register_memory[6] <= write_data;
			3'b111: register_memory[7] <= write_data;
			default: register_memory[0] <= write_data;
		endcase
		case(rd)
			3'b001: read_data_1 <= register_memory[1];
			3'b010: read_data_1 <= register_memory[2];
			3'b011: read_data_1 <= register_memory[3];
			3'b100: read_data_1 <= register_memory[4];
			3'b101: read_data_1 <= register_memory[5];
			3'b110: read_data_1 <= register_memory[6];
			3'b111: read_data_1 <= register_memory[7];
			default: read_data_1 <= register_memory[0];
		endcase
		case(rs)
			3'b001: read_data_2 <= register_memory[1];
			3'b010: read_data_2 <= register_memory[2];
			3'b011: read_data_2 <= register_memory[3];
			3'b100: read_data_2 <= register_memory[4];
			3'b101: read_data_2 <= register_memory[5];
			3'b110: read_data_2 <= register_memory[6];
			3'b111: read_data_2 <= register_memory[7];
			default: read_data_2 <= register_memory[0];
		endcase
	end else begin
		register_memory[0] <= register_memory[0] ;
		register_memory[1] <= register_memory[1] ;
		register_memory[2] <= register_memory[2] ;
		register_memory[3] <= register_memory[3] ;
		register_memory[4] <= register_memory[4] ;
		register_memory[5] <= register_memory[5] ;
		register_memory[6] <= register_memory[6] ;
		register_memory[7] <= register_memory[7] ;
		case(rd)
			3'b001: read_data_1 <= register_memory[1];
			3'b010: read_data_1 <= register_memory[2];
			3'b011: read_data_1 <= register_memory[3];
			3'b100: read_data_1 <= register_memory[4];
			3'b101: read_data_1 <= register_memory[5];
			3'b110: read_data_1 <= register_memory[6];
			3'b111: read_data_1 <= register_memory[7];
			default: read_data_1 <= register_memory[0];
		endcase
		case(rs)
			3'b001: read_data_2 <= register_memory[1];
			3'b010: read_data_2 <= register_memory[2];
			3'b011: read_data_2 <= register_memory[3];
			3'b100: read_data_2 <= register_memory[4];
			3'b101: read_data_2 <= register_memory[5];
			3'b110: read_data_2 <= register_memory[6];
			3'b111: read_data_2 <= register_memory[7];
			default: read_data_2 <= register_memory[0];
		endcase
	end
end */