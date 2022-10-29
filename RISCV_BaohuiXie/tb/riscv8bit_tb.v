// =============================================================================
// Filename: id_to_wb_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for id and ex.
// =============================================================================
`timescale 1 ns / 1 ps
`include "../rtl/data_memory.v"
`include "../rtl/instruction_memory.v"
module riscv8bit_tb;
localparam CLK_PERIOD = 200;  // clock period: 200ns
// ----------------------------------
// Interface of the module
// ----------------------------------
	
	reg [15:0] instruction_input;
	reg rst;
	reg clk;
	reg rst_registerfile;
	
	reg [7:0] ram_data;
	wire mem_read_from_idandex;
	wire mem_write_from_idandex;
	wire [7:0] alu_result_from_idandex;
	wire [7:0] write_data_to_memory;
	
	wire [7:0] result_from_RAM;
	wire [7:0] pc_increment_address;
// ----------------------------------
// Instantiate the module
// ----------------------------------
riscv8bit uut (
	.data_from_ram(result_from_RAM),
	//RAM
	.mem_read_from_idandex(mem_read_from_idandex),
	.mem_write_from_idandex(mem_write_from_idandex),
	.alu_result_from_idandex(alu_result_from_idandex),
	.write_data_to_memory(write_data_to_memory),
	.ram_data(ram_data),
	//ROM
	.pc_increment_address(pc_increment_address),
	
	.instruction_input(instruction_input),
	.rst(rst),
	.rst_registerfile(rst_registerfile),
	.clk(clk)
);
wire [7:0] ram_data_wire;
reg [7:0] alu_result_from_idandex_reg;
reg [7:0] write_data_to_memory_reg;
reg mem_write_from_idandex_reg;
reg mem_read_from_idandex_reg;


always@(*)begin
	alu_result_from_idandex_reg = alu_result_from_idandex;
	write_data_to_memory_reg = write_data_to_memory;
	mem_write_from_idandex_reg = mem_write_from_idandex;
	mem_read_from_idandex_reg = mem_read_from_idandex;
	ram_data = ram_data_wire;
end
 

data_memory data_memory1(ram_data_wire, 

						 alu_result_from_idandex_reg,
						 write_data_to_memory_reg,
						 mem_write_from_idandex_reg,
						 rst,
						 mem_read_from_idandex_reg
);
wire [15:0] instruction_input_wire;
reg [7:0] pc_increment_address_reg;
always@(*)begin
	instruction_input = instruction_input_wire;
	pc_increment_address_reg = pc_increment_address;
end
instruction_memory instruction_memory1(instruction_input_wire,
										pc_increment_address_reg,
										rst
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
  #1;								//待思考
  #(CLK_PERIOD/2) rst = 1'b1;
  rst_registerfile = 1'b1;
  #(CLK_PERIOD) rst = 1'b0;
  $readmemb ("../rtl/instruction_in_rom.pro", instruction_memory1.rom_memory );
  $display ("rom loaded successfully!");
  #(3*CLK_PERIOD); 
  rst_registerfile = 1'b0;
  #(121*CLK_PERIOD);
$finish;
end 


endmodule


/* //initial input

//============================R2 type===================
instruction_input = 16'b01100_001_00110011;//LDI rd <- k 		X[1] <- 51
#(CLK_PERIOD); 
instruction_input = 16'b01100_010_00000001;//LDI rd <- k 		X[2] <- 1
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(CLK_PERIOD); 
rst_registerfile = 1'b0;
instruction_input = 16'b00101_000_00000000;//NOP
#(2*CLK_PERIOD); 

instruction_input = 16'b10000_010_001_00000;//ADD rd <- rd+rs 		X[2] <- 51+1=52  52=0011_0100
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_010_00000001;//STD [A] <- rs 		RAM[1] <- X[2]
#(CLK_PERIOD); 


instruction_input = 16'b10001_010_001_00000;//SUB rd <- rd-rs 		X[2] <- 52-51=1  1=0000_0001
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_010_00000010;//STD [A] <- rs 		RAM[2] <- X[2]
#(CLK_PERIOD); 


instruction_input = 16'b10010_010_001_00000;//AND rd <- rd&rs 		X[2] <- 0000_0001		DEC 1
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_010_00000011;//STD [A] <- rs 		RAM[3] <- X[2]
#(CLK_PERIOD); 


instruction_input = 16'b10011_010_001_00000;//OR rd <- rd|rs 		X[2] <- 0011_0011		DEC 51
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_010_00000100;//STD [A] <- rs 		RAM[4] <- X[2]
#(CLK_PERIOD); 


instruction_input = 16'b10110_010_001_00000;//EOR rd <- rd^rs 		X[2] <- 0000_0000		DEC 0
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_010_00000101;//STD [A] <- rs 		RAM[5] <- X[2]
#(CLK_PERIOD); 

//============================I type===================
instruction_input = 16'b01100_011_00100011;//LDI rd <- k 		X[3] <- 35
#(CLK_PERIOD); 
instruction_input = 16'b01100_100_00000110;//LDI rd <- k 		X[4] <- 6
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);


instruction_input = 16'b01000_011_00000001;//ADDI rd <- rd+k 		X[3] <- X[3]+1 =36	 BIN 0010_0100
#(CLK_PERIOD); 
instruction_input = 16'b01001_100_00000001;//SUBI rd <- rd-k 		X[4] <- X[4]-1 =5	 BIN 0000_0101
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_011_00000110;//STD [A] <- rs 		RAM[6] <- X[3]
#(CLK_PERIOD);
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_100_00000111;//STD [A] <- rs 		RAM[7] <- X[4]
#(CLK_PERIOD); 


instruction_input = 16'b01010_011_00000001;//ANDI rd <- rd&k 		X[3] <- X[3]&1=0	 BIN 0000_0000
#(CLK_PERIOD); 
instruction_input = 16'b01011_100_00000010;//ORI rd <- rd|k 		X[4] <- X[4]|2=7	 BIN 0000_0111
#(CLK_PERIOD);
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_011_00001000;//STD [A] <- rs 		RAM[8] <- X[3]
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_100_00001001;//STD [A] <- rs 		RAM[9] <- X[4]
#(CLK_PERIOD);

//=========================R1 type==========================
instruction_input = 16'b01100_100_00110011;//LDI rd <- k 		X[4] <- 51
#(CLK_PERIOD); 
instruction_input = 16'b01100_101_00000010;//LDI rd <- k 		X[5] <- 2
#(CLK_PERIOD); 
instruction_input = 16'b01100_110_00000010;//LDI rd <- k 		X[6] <- 2
#(CLK_PERIOD); 

instruction_input = 16'b00101_000_00000000;//NOP
#(CLK_PERIOD);
instruction_input = 16'b11100_100_00000000;//NOT rd <- ~rd 		X[4] <- ~X[4]=204	 BIN 1100_1100
#(CLK_PERIOD); 
instruction_input = 16'b11101_101_00000000;//SHL rd <- rd<<1 		X[5] <- X[5]<<1=4	 BIN 0000_0100
#(CLK_PERIOD);
instruction_input = 16'b11110_110_00000000;//SHR rd <- rd>>1 		X[6] <- X[6]>>1=1 		BIN 0000_0001
#(CLK_PERIOD); 

instruction_input = 16'b01110_100_00001010;//STD [A] <- rs 		RAM[10] <- X[4]
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_101_00001011;//STD [A] <- rs 		RAM[11] <- X[5]
#(CLK_PERIOD); 
instruction_input = 16'b00101_000_00000000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01110_110_00001100;//STD [A] <- rs 		RAM[12] <- X[6]
#(CLK_PERIOD); 

//------------------------------LDD and check result from output---------------
instruction_input = 16'b01101_001_00000001;//LDD rd <- [A]  	X[1] <- RAM[1]		52
#(CLK_PERIOD);
instruction_input = 16'b00101_001_00000001;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_010_00000010;//LDD rd <- [A]  	X[2] <- RAM[2]		1
#(CLK_PERIOD);
instruction_input = 16'b00101_010_00000010;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_011_00000011;//LDD rd <- [A]  	X[3] <- RAM[3]		1
#(CLK_PERIOD);
instruction_input = 16'b00101_011_00000011;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_100_00000100;//LDD rd <- [A]  	X[4] <- RAM[4]		51
#(CLK_PERIOD);
instruction_input = 16'b00101_100_00000100;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_101_00000101;//LDD rd <- [A]  	X[5] <- RAM[5]		0
#(CLK_PERIOD);
instruction_input = 16'b00101_101_00000101;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_110_00000110;//LDD rd <- [A]  	X[6] <- RAM[6]		36
#(CLK_PERIOD);
instruction_input = 16'b00101_110_00000110;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_111_00000111;//LDD rd <- [A]  	X[7] <- RAM[7]		5
#(CLK_PERIOD);
instruction_input = 16'b00101_111_00000111;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_001_00001000;//LDD rd <- [A]  	X[1] <- RAM[8]		0
#(CLK_PERIOD);
instruction_input = 16'b00101_001_00001000;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_010_00001001;//LDD rd <- [A]  	X[2] <- RAM[9]		7
#(CLK_PERIOD); 
instruction_input = 16'b00101_010_00001001;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_011_00001010;//LDD rd <- [A]  	X[3] <- RAM[10]		204
#(CLK_PERIOD);
instruction_input = 16'b00101_011_00001010;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_100_00001011;//LDD rd <- [A]  	X[4] <- RAM[11]		4
#(CLK_PERIOD);
instruction_input = 16'b00101_100_00001011;//NOP
#(3*CLK_PERIOD);
instruction_input = 16'b01101_101_00001100;//LDD rd <- [A]  	X[5] <- RAM[12]		1
#(CLK_PERIOD);

instruction_input = 16'b00101_101_00001100;//NOP
#(8*CLK_PERIOD); */


