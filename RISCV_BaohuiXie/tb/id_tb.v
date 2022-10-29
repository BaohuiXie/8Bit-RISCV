// =============================================================================
// Filename: id_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for id.
// =============================================================================
`timescale 1 ns / 1 ps

module id_tb;
localparam CLK_PERIOD = 200;  // clock period: 200ns
// ----------------------------------
// Interface of the module
// ----------------------------------
	wire regwrite_out;
	wire mem_read;
	wire mem_write;
	wire mem_to_reg;
	wire alu_src;
	wire [7:0] rd_data;
	wire [7:0] rs_data;
	wire [15:0] instruction_output;
	 
	reg [15:0] instruction_input;
	reg rst;
	reg regwrite;
	reg [7:0] write_data;
	reg [2:0] write_addr;
	reg clk;
// ----------------------------------
// Instantiate the module
// ----------------------------------
id uut (
	.regwrite_out(regwrite_out),
	.mem_read(mem_read),
	.mem_write(mem_write),
	.mem_to_reg(mem_to_reg),
	.alu_src(alu_src),
	.rd_data(rd_data),
	.rs_data(rs_data),
	.instruction_output(instruction_output),
	
	.instruction_input(instruction_input),
	.rst(rst),
	.regwrite(regwrite),
	.write_data(write_data),
	.write_addr(write_addr),
	.clk(clk)
);


// ----------------------------------
// Clock generation
// ------------------------./----------
initial begin
  clk = 1'b0;
  forever #(CLK_PERIOD/2.0) clk = ~clk;
end


// ----------------------------------
// For gate-level and post-layout 
// simulation, we should backannotate 
// the SDF file defined in SDF_FILE
// ----------------------------------

`ifdef SDF_FILE
initial begin
  $sdf_annotate(`SDF_FILE, uut);
end
`endif


// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin: input_stimulus
  rst = 1'b0;
  #(CLK_PERIOD/2) rst = 1'b1;
  #(CLK_PERIOD) rst = 1'b0;
  
//initial input
regwrite = 1'b0;
write_addr = 3'b000;
write_data = 8'b0000_0000;

//============================R2 type===================
instruction_input = 16'b01100_001_00110011;//LDI rd <- k 		X[1] <- 51
regwrite = 1'b1;
write_addr = 3'b001;
write_data = 8'b0011_0011;
#(CLK_PERIOD); 
instruction_input = 16'b01100_010_00000001;//LDI rd <- k 		X[2] <- 1
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0001;
#(CLK_PERIOD); 
instruction_input = 16'b10000_010_001_00000;//ADD rd <- rd+rs 		X[2] <- 51+1=52  52=0011_0100
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0011_0100;
#(CLK_PERIOD); 
instruction_input = 16'b10001_010_001_00000;//SUB rd <- rd-rs 		X[2] <- 52-51=1  1=0000_0001
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0001;
#(CLK_PERIOD); 
instruction_input = 16'b10010_010_001_00000;//AND rd <- rd&rs 		X[2] <- 0000_0001		DEC 1
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0001;
#(CLK_PERIOD); 
instruction_input = 16'b10011_010_001_00000;//OR rd <- rd|rs 		X[2] <- 0011_0011		DEC 51
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0011_0011;
#(CLK_PERIOD); 
instruction_input = 16'b10110_010_001_00000;//EOR rd <- rd^rs 		X[2] <- 0000_0000		DEC 0
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0000;
#(CLK_PERIOD); 

//============================I type===================
instruction_input = 16'b01110_001_00000001;//STD [A] <- rs 		RAM[1] <- X[1]
regwrite = 1'b0;
write_addr = 3'b000;
write_data = 8'b0000_0000;
#(CLK_PERIOD); 
instruction_input = 16'b01110_010_00000010;//STD [A] <- rs 		RAM[2] <- X[2]
regwrite = 1'b0;
write_addr = 3'b000;
write_data = 8'b0000_0000;
#(CLK_PERIOD); 
instruction_input = 16'b01100_011_00100011;//LDI rd <- k 		X[3] <- 35
regwrite = 1'b1;
write_addr = 3'b011;
write_data = 8'b0010_0011;
#(CLK_PERIOD); 
instruction_input = 16'b01100_100_00000110;//LDI rd <- k 		X[4] <- 6
regwrite = 1'b1;
write_addr = 3'b100;
write_data = 8'b0000_0110;
#(CLK_PERIOD); 
instruction_input = 16'b01000_011_00000001;//ADDI rd <- rd+k 		X[3] <- X[3]+1 =36	 BIN 0010_0100
regwrite = 1'b1;
write_addr = 3'b011;
write_data = 8'b0010_0100;
#(CLK_PERIOD); 
instruction_input = 16'b01001_100_00000001;//SUBI rd <- rd-k 		X[4] <- X[4]-1 =5	 BIN 0000_0101
regwrite = 1'b1;
write_addr = 3'b100;
write_data = 8'b0000_0101;
#(CLK_PERIOD); 
instruction_input = 16'b01010_011_00000001;//ANDI rd <- rd&k 		X[3] <- X[3]&1=1	 BIN 0000_0001
regwrite = 1'b1;
write_addr = 3'b011;
write_data = 8'b0000_0001;
#(CLK_PERIOD); 
instruction_input = 16'b01011_100_00000110;//ORI rd <- rd|k 		X[4] <- X[4]|2=7	 BIN 0000_0111
regwrite = 1'b1;
write_addr = 3'b100;
write_data = 8'b0000_0111;
#(CLK_PERIOD);
instruction_input = 16'b01101_100_00000010;//LDD rd <- [A] 		X[4] <- RAM[2] 		X[4]=0
regwrite = 1'b1;
write_addr = 3'b100;
write_data = 8'b0000_0000;
#(CLK_PERIOD); 

//=========================R1 type==========================
instruction_input = 16'b01100_001_00110011;//LDI rd <- k 		X[1] <- 51
regwrite = 1'b1;
write_addr = 3'b001;
write_data = 8'b0011_0011;
#(CLK_PERIOD); 
instruction_input = 16'b01100_010_00000010;//LDI rd <- k 		X[2] <- 2
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0010;
#(CLK_PERIOD); 
instruction_input = 16'b01100_011_00000010;//LDI rd <- k 		X[3] <- 2
regwrite = 1'b1;
write_addr = 3'b011;
write_data = 8'b0000_0010;
#(CLK_PERIOD); 
instruction_input = 16'b11100_001_00000000;//NOT rd <- ~rd 		X[1] <- ~X[1]=204	 BIN 1100_1100
regwrite = 1'b1;
write_addr = 3'b001;
write_data = 8'b1100_1100;
#(CLK_PERIOD); 
instruction_input = 16'b11101_010_00000000;//SHL rd <- rd<<1 		X[2] <- X[2]<<1=4	 BIN 0000_0100
regwrite = 1'b1;
write_addr = 3'b010;
write_data = 8'b0000_0100;
#(CLK_PERIOD);
instruction_input = 16'b11110_011_00000000;//SHR rd <- rd>>1 		X[3] <- X[3]>>1=1 		BIN 0000_0001
regwrite = 1'b1;
write_addr = 3'b011;
write_data = 8'b0000_0001;
#(CLK_PERIOD); 

  rst = 1'b0;
  #(CLK_PERIOD) rst = 1'b1;
  #(CLK_PERIOD) rst = 1'b0;

#(4*CLK_PERIOD);
$finish;
end

endmodule
