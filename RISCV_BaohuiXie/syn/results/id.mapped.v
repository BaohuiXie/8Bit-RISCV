/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Thu May 26 00:21:46 2022
/////////////////////////////////////////////////////////////


module ifid ( pc_current_instruction_address_ifid_output, 
        instruction_ifid_output, instruction_ifid_input, 
        pc_current_instruction_address_ifid_input, clk );
  output [7:0] pc_current_instruction_address_ifid_output;
  output [15:0] instruction_ifid_output;
  input [15:0] instruction_ifid_input;
  input [7:0] pc_current_instruction_address_ifid_input;
  input clk;


  DFF_X1 instruction_ifid_output_reg_15_ ( .D(instruction_ifid_input[15]), 
        .CK(clk), .Q(instruction_ifid_output[15]) );
  DFF_X1 instruction_ifid_output_reg_14_ ( .D(instruction_ifid_input[14]), 
        .CK(clk), .Q(instruction_ifid_output[14]) );
  DFF_X1 instruction_ifid_output_reg_13_ ( .D(instruction_ifid_input[13]), 
        .CK(clk), .Q(instruction_ifid_output[13]) );
  DFF_X1 instruction_ifid_output_reg_12_ ( .D(instruction_ifid_input[12]), 
        .CK(clk), .Q(instruction_ifid_output[12]) );
  DFF_X1 instruction_ifid_output_reg_11_ ( .D(instruction_ifid_input[11]), 
        .CK(clk), .Q(instruction_ifid_output[11]) );
  DFF_X1 instruction_ifid_output_reg_10_ ( .D(instruction_ifid_input[10]), 
        .CK(clk), .Q(instruction_ifid_output[10]) );
  DFF_X1 instruction_ifid_output_reg_9_ ( .D(instruction_ifid_input[9]), .CK(
        clk), .Q(instruction_ifid_output[9]) );
  DFF_X1 instruction_ifid_output_reg_8_ ( .D(instruction_ifid_input[8]), .CK(
        clk), .Q(instruction_ifid_output[8]) );
  DFF_X1 instruction_ifid_output_reg_7_ ( .D(instruction_ifid_input[7]), .CK(
        clk), .Q(instruction_ifid_output[7]) );
  DFF_X1 instruction_ifid_output_reg_6_ ( .D(instruction_ifid_input[6]), .CK(
        clk), .Q(instruction_ifid_output[6]) );
  DFF_X1 instruction_ifid_output_reg_5_ ( .D(instruction_ifid_input[5]), .CK(
        clk), .Q(instruction_ifid_output[5]) );
  DFF_X1 instruction_ifid_output_reg_4_ ( .D(instruction_ifid_input[4]), .CK(
        clk), .Q(instruction_ifid_output[4]) );
  DFF_X1 instruction_ifid_output_reg_3_ ( .D(instruction_ifid_input[3]), .CK(
        clk), .Q(instruction_ifid_output[3]) );
  DFF_X1 instruction_ifid_output_reg_2_ ( .D(instruction_ifid_input[2]), .CK(
        clk), .Q(instruction_ifid_output[2]) );
  DFF_X1 instruction_ifid_output_reg_1_ ( .D(instruction_ifid_input[1]), .CK(
        clk), .Q(instruction_ifid_output[1]) );
  DFF_X1 instruction_ifid_output_reg_0_ ( .D(instruction_ifid_input[0]), .CK(
        clk), .Q(instruction_ifid_output[0]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_7_ ( .D(
        pc_current_instruction_address_ifid_input[7]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[7]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_6_ ( .D(
        pc_current_instruction_address_ifid_input[6]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[6]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_5_ ( .D(
        pc_current_instruction_address_ifid_input[5]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[5]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_4_ ( .D(
        pc_current_instruction_address_ifid_input[4]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[4]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_3_ ( .D(
        pc_current_instruction_address_ifid_input[3]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[3]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_2_ ( .D(
        pc_current_instruction_address_ifid_input[2]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[2]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_1_ ( .D(
        pc_current_instruction_address_ifid_input[1]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[1]) );
  DFF_X1 pc_current_instruction_address_ifid_output_reg_0_ ( .D(
        pc_current_instruction_address_ifid_input[0]), .CK(clk), .Q(
        pc_current_instruction_address_ifid_output[0]) );
endmodule


module registerfile ( read_data_1, read_data_2, instruction, write_address, 
        write_data, regwrite, rst );
  output [7:0] read_data_1;
  output [7:0] read_data_2;
  input [15:0] instruction;
  input [2:0] write_address;
  input [7:0] write_data;
  input regwrite, rst;
  wire   N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226,
         N227, N228, N229, N230, N231, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217;
  wire   [63:0] register_memory;

  DLH_X1 register_memory_reg_7__7_ ( .G(N231), .D(N224), .Q(
        register_memory[63]) );
  DLH_X1 register_memory_reg_7__6_ ( .G(N231), .D(N223), .Q(
        register_memory[62]) );
  DLH_X1 register_memory_reg_7__5_ ( .G(N231), .D(N222), .Q(
        register_memory[61]) );
  DLH_X1 register_memory_reg_7__4_ ( .G(N231), .D(N221), .Q(
        register_memory[60]) );
  DLH_X1 register_memory_reg_7__3_ ( .G(N231), .D(N220), .Q(
        register_memory[59]) );
  DLH_X1 register_memory_reg_7__2_ ( .G(N231), .D(N219), .Q(
        register_memory[58]) );
  DLH_X1 register_memory_reg_7__1_ ( .G(N231), .D(N218), .Q(
        register_memory[57]) );
  DLH_X1 register_memory_reg_7__0_ ( .G(N231), .D(N217), .Q(
        register_memory[56]) );
  DLH_X1 register_memory_reg_6__7_ ( .G(N230), .D(N224), .Q(
        register_memory[55]) );
  DLH_X1 register_memory_reg_6__6_ ( .G(N230), .D(N223), .Q(
        register_memory[54]) );
  DLH_X1 register_memory_reg_6__5_ ( .G(N230), .D(N222), .Q(
        register_memory[53]) );
  DLH_X1 register_memory_reg_6__4_ ( .G(N230), .D(N221), .Q(
        register_memory[52]) );
  DLH_X1 register_memory_reg_6__3_ ( .G(N230), .D(N220), .Q(
        register_memory[51]) );
  DLH_X1 register_memory_reg_6__2_ ( .G(N230), .D(N219), .Q(
        register_memory[50]) );
  DLH_X1 register_memory_reg_6__1_ ( .G(N230), .D(N218), .Q(
        register_memory[49]) );
  DLH_X1 register_memory_reg_6__0_ ( .G(N230), .D(N217), .Q(
        register_memory[48]) );
  DLH_X1 register_memory_reg_5__7_ ( .G(N229), .D(N224), .Q(
        register_memory[47]) );
  DLH_X1 register_memory_reg_5__6_ ( .G(N229), .D(N223), .Q(
        register_memory[46]) );
  DLH_X1 register_memory_reg_5__5_ ( .G(N229), .D(N222), .Q(
        register_memory[45]) );
  DLH_X1 register_memory_reg_5__4_ ( .G(N229), .D(N221), .Q(
        register_memory[44]) );
  DLH_X1 register_memory_reg_5__3_ ( .G(N229), .D(N220), .Q(
        register_memory[43]) );
  DLH_X1 register_memory_reg_5__2_ ( .G(N229), .D(N219), .Q(
        register_memory[42]) );
  DLH_X1 register_memory_reg_5__1_ ( .G(N229), .D(N218), .Q(
        register_memory[41]) );
  DLH_X1 register_memory_reg_5__0_ ( .G(N229), .D(N217), .Q(
        register_memory[40]) );
  DLH_X1 register_memory_reg_4__7_ ( .G(N228), .D(N224), .Q(
        register_memory[39]) );
  DLH_X1 register_memory_reg_4__6_ ( .G(N228), .D(N223), .Q(
        register_memory[38]) );
  DLH_X1 register_memory_reg_4__5_ ( .G(N228), .D(N222), .Q(
        register_memory[37]) );
  DLH_X1 register_memory_reg_4__4_ ( .G(N228), .D(N221), .Q(
        register_memory[36]) );
  DLH_X1 register_memory_reg_4__3_ ( .G(N228), .D(N220), .Q(
        register_memory[35]) );
  DLH_X1 register_memory_reg_4__2_ ( .G(N228), .D(N219), .Q(
        register_memory[34]) );
  DLH_X1 register_memory_reg_4__1_ ( .G(N228), .D(N218), .Q(
        register_memory[33]) );
  DLH_X1 register_memory_reg_4__0_ ( .G(N228), .D(N217), .Q(
        register_memory[32]) );
  DLH_X1 register_memory_reg_3__7_ ( .G(N227), .D(N224), .Q(
        register_memory[31]) );
  DLH_X1 register_memory_reg_3__6_ ( .G(N227), .D(N223), .Q(
        register_memory[30]) );
  DLH_X1 register_memory_reg_3__5_ ( .G(N227), .D(N222), .Q(
        register_memory[29]) );
  DLH_X1 register_memory_reg_3__4_ ( .G(N227), .D(N221), .Q(
        register_memory[28]) );
  DLH_X1 register_memory_reg_3__3_ ( .G(N227), .D(N220), .Q(
        register_memory[27]) );
  DLH_X1 register_memory_reg_3__2_ ( .G(N227), .D(N219), .Q(
        register_memory[26]) );
  DLH_X1 register_memory_reg_3__1_ ( .G(N227), .D(N218), .Q(
        register_memory[25]) );
  DLH_X1 register_memory_reg_3__0_ ( .G(N227), .D(N217), .Q(
        register_memory[24]) );
  DLH_X1 register_memory_reg_2__7_ ( .G(N226), .D(N224), .Q(
        register_memory[23]) );
  DLH_X1 register_memory_reg_2__6_ ( .G(N226), .D(N223), .Q(
        register_memory[22]) );
  DLH_X1 register_memory_reg_2__5_ ( .G(N226), .D(N222), .Q(
        register_memory[21]) );
  DLH_X1 register_memory_reg_2__4_ ( .G(N226), .D(N221), .Q(
        register_memory[20]) );
  DLH_X1 register_memory_reg_2__3_ ( .G(N226), .D(N220), .Q(
        register_memory[19]) );
  DLH_X1 register_memory_reg_2__2_ ( .G(N226), .D(N219), .Q(
        register_memory[18]) );
  DLH_X1 register_memory_reg_2__1_ ( .G(N226), .D(N218), .Q(
        register_memory[17]) );
  DLH_X1 register_memory_reg_2__0_ ( .G(N226), .D(N217), .Q(
        register_memory[16]) );
  DLH_X1 register_memory_reg_1__7_ ( .G(N225), .D(N224), .Q(
        register_memory[15]) );
  DLH_X1 register_memory_reg_1__6_ ( .G(N225), .D(N223), .Q(
        register_memory[14]) );
  DLH_X1 register_memory_reg_1__5_ ( .G(N225), .D(N222), .Q(
        register_memory[13]) );
  DLH_X1 register_memory_reg_1__4_ ( .G(N225), .D(N221), .Q(
        register_memory[12]) );
  DLH_X1 register_memory_reg_1__3_ ( .G(N225), .D(N220), .Q(
        register_memory[11]) );
  DLH_X1 register_memory_reg_1__2_ ( .G(N225), .D(N219), .Q(
        register_memory[10]) );
  DLH_X1 register_memory_reg_1__1_ ( .G(N225), .D(N218), .Q(register_memory[9]) );
  DLH_X1 register_memory_reg_1__0_ ( .G(N225), .D(N217), .Q(register_memory[8]) );
  DLH_X1 register_memory_reg_0__7_ ( .G(N216), .D(N224), .Q(register_memory[7]) );
  DLH_X1 register_memory_reg_0__6_ ( .G(N216), .D(N223), .Q(register_memory[6]) );
  DLH_X1 register_memory_reg_0__5_ ( .G(N216), .D(N222), .Q(register_memory[5]) );
  DLH_X1 register_memory_reg_0__4_ ( .G(N216), .D(N221), .Q(register_memory[4]) );
  DLH_X1 register_memory_reg_0__3_ ( .G(N216), .D(N220), .Q(register_memory[3]) );
  DLH_X1 register_memory_reg_0__2_ ( .G(N216), .D(N219), .Q(register_memory[2]) );
  DLH_X1 register_memory_reg_0__1_ ( .G(N216), .D(N218), .Q(register_memory[1]) );
  DLH_X1 register_memory_reg_0__0_ ( .G(N216), .D(N217), .Q(register_memory[0]) );
  NOR3_X2 U51 ( .A1(instruction[6]), .A2(instruction[7]), .A3(instruction[5]), 
        .ZN(n77) );
  NOR3_X2 U131 ( .A1(instruction[8]), .A2(instruction[9]), .A3(instruction[10]), .ZN(n154) );
  NAND3_X1 U238 ( .A1(instruction[6]), .A2(instruction[5]), .A3(instruction[7]), .ZN(n136) );
  NAND3_X1 U239 ( .A1(instruction[6]), .A2(n50), .A3(instruction[7]), .ZN(n134) );
  NAND3_X1 U240 ( .A1(n49), .A2(n48), .A3(instruction[5]), .ZN(n127) );
  NAND3_X1 U241 ( .A1(instruction[9]), .A2(instruction[8]), .A3(
        instruction[10]), .ZN(n211) );
  NAND3_X1 U242 ( .A1(instruction[9]), .A2(n45), .A3(instruction[10]), .ZN(
        n210) );
  NAND3_X1 U243 ( .A1(n43), .A2(n44), .A3(instruction[8]), .ZN(n204) );
  NAND3_X1 U244 ( .A1(write_address[1]), .A2(write_address[0]), .A3(n216), 
        .ZN(n137) );
  NAND3_X1 U245 ( .A1(write_address[1]), .A2(n57), .A3(n216), .ZN(n135) );
  NAND3_X1 U246 ( .A1(write_address[0]), .A2(n56), .A3(n216), .ZN(n143) );
  NAND3_X1 U247 ( .A1(n57), .A2(n56), .A3(n216), .ZN(n144) );
  NAND3_X1 U248 ( .A1(write_address[0]), .A2(n217), .A3(write_address[1]), 
        .ZN(n142) );
  NAND3_X1 U249 ( .A1(n217), .A2(n57), .A3(write_address[1]), .ZN(n141) );
  NAND3_X1 U250 ( .A1(n217), .A2(n56), .A3(write_address[0]), .ZN(n128) );
  OAI21_X1 U3 ( .B1(n122), .B2(instruction[14]), .A(n67), .ZN(n147) );
  INV_X1 U4 ( .A(n144), .ZN(n51) );
  OAI211_X1 U5 ( .C1(n127), .C2(n128), .A(n129), .B(n130), .ZN(n76) );
  AOI22_X1 U6 ( .A1(n55), .A2(n138), .B1(n54), .B2(n139), .ZN(n129) );
  AOI221_X1 U7 ( .B1(n52), .B2(n131), .C1(n51), .C2(n132), .A(n133), .ZN(n130)
         );
  OAI22_X1 U8 ( .A1(n134), .A2(n135), .B1(n136), .B2(n137), .ZN(n133) );
  OAI211_X1 U9 ( .C1(n128), .C2(n204), .A(n205), .B(n206), .ZN(n153) );
  AOI22_X1 U10 ( .A1(n212), .A2(n55), .B1(n213), .B2(n54), .ZN(n205) );
  AOI221_X1 U11 ( .B1(n207), .B2(n52), .C1(n208), .C2(n51), .A(n209), .ZN(n206) );
  OAI22_X1 U12 ( .A1(n135), .A2(n210), .B1(n137), .B2(n211), .ZN(n209) );
  NOR2_X1 U13 ( .A1(n127), .A2(n53), .ZN(n83) );
  NOR2_X1 U14 ( .A1(n204), .A2(n53), .ZN(n159) );
  NAND3_X1 U15 ( .A1(n57), .A2(n56), .A3(n217), .ZN(n161) );
  NAND2_X1 U16 ( .A1(n47), .A2(n135), .ZN(n73) );
  INV_X1 U17 ( .A(n134), .ZN(n47) );
  NAND2_X1 U18 ( .A1(n132), .A2(n144), .ZN(n79) );
  NAND2_X1 U19 ( .A1(n41), .A2(n137), .ZN(n151) );
  INV_X1 U20 ( .A(n211), .ZN(n41) );
  NAND2_X1 U21 ( .A1(n207), .A2(n143), .ZN(n156) );
  NAND2_X1 U22 ( .A1(n42), .A2(n135), .ZN(n150) );
  INV_X1 U23 ( .A(n210), .ZN(n42) );
  NAND2_X1 U24 ( .A1(n208), .A2(n144), .ZN(n155) );
  NAND2_X1 U25 ( .A1(n46), .A2(n137), .ZN(n74) );
  INV_X1 U26 ( .A(n136), .ZN(n46) );
  AND2_X1 U27 ( .A1(n139), .A2(n141), .ZN(n84) );
  NAND2_X1 U28 ( .A1(n131), .A2(n143), .ZN(n80) );
  OAI22_X1 U29 ( .A1(n121), .A2(n69), .B1(n40), .B2(n70), .ZN(read_data_2[0])
         );
  NOR2_X1 U30 ( .A1(n123), .A2(n124), .ZN(n121) );
  OAI221_X1 U31 ( .B1(n79), .B2(n32), .C1(n80), .C2(n24), .A(n140), .ZN(n123)
         );
  OAI221_X1 U32 ( .B1(n73), .B2(n16), .C1(n74), .C2(n8), .A(n125), .ZN(n124)
         );
  OAI22_X1 U33 ( .A1(n115), .A2(n69), .B1(n39), .B2(n70), .ZN(read_data_2[1])
         );
  NOR2_X1 U34 ( .A1(n116), .A2(n117), .ZN(n115) );
  OAI221_X1 U35 ( .B1(n79), .B2(n31), .C1(n80), .C2(n23), .A(n120), .ZN(n116)
         );
  OAI221_X1 U36 ( .B1(n73), .B2(n15), .C1(n74), .C2(n7), .A(n118), .ZN(n117)
         );
  OAI22_X1 U37 ( .A1(n109), .A2(n69), .B1(n38), .B2(n70), .ZN(read_data_2[2])
         );
  NOR2_X1 U38 ( .A1(n110), .A2(n111), .ZN(n109) );
  OAI221_X1 U39 ( .B1(n79), .B2(n30), .C1(n80), .C2(n22), .A(n114), .ZN(n110)
         );
  OAI221_X1 U40 ( .B1(n73), .B2(n14), .C1(n74), .C2(n6), .A(n112), .ZN(n111)
         );
  OAI22_X1 U41 ( .A1(n103), .A2(n69), .B1(n37), .B2(n70), .ZN(read_data_2[3])
         );
  NOR2_X1 U42 ( .A1(n104), .A2(n105), .ZN(n103) );
  OAI221_X1 U43 ( .B1(n79), .B2(n29), .C1(n80), .C2(n21), .A(n108), .ZN(n104)
         );
  OAI221_X1 U44 ( .B1(n73), .B2(n13), .C1(n74), .C2(n5), .A(n106), .ZN(n105)
         );
  OAI22_X1 U45 ( .A1(n97), .A2(n69), .B1(n36), .B2(n70), .ZN(read_data_2[4])
         );
  NOR2_X1 U46 ( .A1(n98), .A2(n99), .ZN(n97) );
  OAI221_X1 U47 ( .B1(n79), .B2(n28), .C1(n80), .C2(n20), .A(n102), .ZN(n98)
         );
  OAI221_X1 U48 ( .B1(n73), .B2(n12), .C1(n74), .C2(n4), .A(n100), .ZN(n99) );
  OAI22_X1 U49 ( .A1(n91), .A2(n69), .B1(n35), .B2(n70), .ZN(read_data_2[5])
         );
  NOR2_X1 U50 ( .A1(n92), .A2(n93), .ZN(n91) );
  OAI221_X1 U52 ( .B1(n79), .B2(n27), .C1(n80), .C2(n19), .A(n96), .ZN(n92) );
  OAI221_X1 U53 ( .B1(n73), .B2(n11), .C1(n74), .C2(n3), .A(n94), .ZN(n93) );
  OAI22_X1 U54 ( .A1(n85), .A2(n69), .B1(n34), .B2(n70), .ZN(read_data_2[6])
         );
  NOR2_X1 U55 ( .A1(n86), .A2(n87), .ZN(n85) );
  OAI221_X1 U56 ( .B1(n79), .B2(n26), .C1(n80), .C2(n18), .A(n90), .ZN(n86) );
  OAI221_X1 U57 ( .B1(n73), .B2(n10), .C1(n74), .C2(n2), .A(n88), .ZN(n87) );
  OAI22_X1 U58 ( .A1(n68), .A2(n69), .B1(n33), .B2(n70), .ZN(read_data_2[7])
         );
  NOR2_X1 U59 ( .A1(n71), .A2(n72), .ZN(n68) );
  OAI221_X1 U60 ( .B1(n79), .B2(n25), .C1(n80), .C2(n17), .A(n81), .ZN(n71) );
  OAI221_X1 U61 ( .B1(n73), .B2(n9), .C1(n74), .C2(n1), .A(n75), .ZN(n72) );
  AND2_X1 U62 ( .A1(n138), .A2(n142), .ZN(n82) );
  AND2_X1 U63 ( .A1(n212), .A2(n142), .ZN(n158) );
  AND2_X1 U64 ( .A1(n213), .A2(n141), .ZN(n160) );
  OAI22_X1 U65 ( .A1(n40), .A2(n145), .B1(n199), .B2(n147), .ZN(read_data_1[0]) );
  NOR2_X1 U66 ( .A1(n201), .A2(n202), .ZN(n199) );
  OAI221_X1 U67 ( .B1(n32), .B2(n155), .C1(n24), .C2(n156), .A(n214), .ZN(n201) );
  OAI221_X1 U68 ( .B1(n16), .B2(n150), .C1(n8), .C2(n151), .A(n203), .ZN(n202)
         );
  OAI22_X1 U69 ( .A1(n39), .A2(n145), .B1(n193), .B2(n147), .ZN(read_data_1[1]) );
  NOR2_X1 U70 ( .A1(n194), .A2(n195), .ZN(n193) );
  OAI221_X1 U71 ( .B1(n31), .B2(n155), .C1(n23), .C2(n156), .A(n197), .ZN(n194) );
  OAI221_X1 U72 ( .B1(n15), .B2(n150), .C1(n7), .C2(n151), .A(n196), .ZN(n195)
         );
  OAI22_X1 U73 ( .A1(n38), .A2(n145), .B1(n187), .B2(n147), .ZN(read_data_1[2]) );
  NOR2_X1 U74 ( .A1(n188), .A2(n189), .ZN(n187) );
  OAI221_X1 U75 ( .B1(n30), .B2(n155), .C1(n22), .C2(n156), .A(n191), .ZN(n188) );
  OAI221_X1 U76 ( .B1(n14), .B2(n150), .C1(n6), .C2(n151), .A(n190), .ZN(n189)
         );
  OAI22_X1 U77 ( .A1(n37), .A2(n145), .B1(n181), .B2(n147), .ZN(read_data_1[3]) );
  NOR2_X1 U78 ( .A1(n182), .A2(n183), .ZN(n181) );
  OAI221_X1 U79 ( .B1(n29), .B2(n155), .C1(n21), .C2(n156), .A(n185), .ZN(n182) );
  OAI221_X1 U80 ( .B1(n13), .B2(n150), .C1(n5), .C2(n151), .A(n184), .ZN(n183)
         );
  OAI22_X1 U81 ( .A1(n36), .A2(n145), .B1(n175), .B2(n147), .ZN(read_data_1[4]) );
  NOR2_X1 U82 ( .A1(n176), .A2(n177), .ZN(n175) );
  OAI221_X1 U83 ( .B1(n28), .B2(n155), .C1(n20), .C2(n156), .A(n179), .ZN(n176) );
  OAI221_X1 U84 ( .B1(n12), .B2(n150), .C1(n4), .C2(n151), .A(n178), .ZN(n177)
         );
  OAI22_X1 U85 ( .A1(n35), .A2(n145), .B1(n169), .B2(n147), .ZN(read_data_1[5]) );
  NOR2_X1 U86 ( .A1(n170), .A2(n171), .ZN(n169) );
  OAI221_X1 U87 ( .B1(n27), .B2(n155), .C1(n19), .C2(n156), .A(n173), .ZN(n170) );
  OAI221_X1 U88 ( .B1(n11), .B2(n150), .C1(n3), .C2(n151), .A(n172), .ZN(n171)
         );
  OAI22_X1 U89 ( .A1(n34), .A2(n145), .B1(n163), .B2(n147), .ZN(read_data_1[6]) );
  NOR2_X1 U90 ( .A1(n164), .A2(n165), .ZN(n163) );
  OAI221_X1 U91 ( .B1(n26), .B2(n155), .C1(n18), .C2(n156), .A(n167), .ZN(n164) );
  OAI221_X1 U92 ( .B1(n10), .B2(n150), .C1(n2), .C2(n151), .A(n166), .ZN(n165)
         );
  OAI22_X1 U93 ( .A1(n33), .A2(n145), .B1(n146), .B2(n147), .ZN(read_data_1[7]) );
  NOR2_X1 U94 ( .A1(n148), .A2(n149), .ZN(n146) );
  OAI221_X1 U95 ( .B1(n25), .B2(n155), .C1(n17), .C2(n156), .A(n157), .ZN(n148) );
  OAI221_X1 U96 ( .B1(n9), .B2(n150), .C1(n1), .C2(n151), .A(n152), .ZN(n149)
         );
  INV_X1 U97 ( .A(n128), .ZN(n53) );
  INV_X1 U98 ( .A(n143), .ZN(n52) );
  INV_X1 U99 ( .A(n141), .ZN(n54) );
  INV_X1 U100 ( .A(n142), .ZN(n55) );
  INV_X1 U101 ( .A(n126), .ZN(n40) );
  INV_X1 U102 ( .A(n119), .ZN(n39) );
  INV_X1 U103 ( .A(n113), .ZN(n38) );
  INV_X1 U104 ( .A(n107), .ZN(n37) );
  INV_X1 U105 ( .A(n101), .ZN(n36) );
  INV_X1 U106 ( .A(n95), .ZN(n35) );
  INV_X1 U107 ( .A(n89), .ZN(n34) );
  INV_X1 U108 ( .A(n78), .ZN(n33) );
  NAND2_X1 U109 ( .A1(n122), .A2(n67), .ZN(n69) );
  NAND2_X1 U110 ( .A1(n200), .A2(n67), .ZN(n145) );
  NAND2_X1 U111 ( .A1(n67), .A2(n135), .ZN(N230) );
  NAND2_X1 U112 ( .A1(n67), .A2(n137), .ZN(N231) );
  NAND2_X1 U113 ( .A1(n67), .A2(n161), .ZN(N216) );
  NAND2_X1 U114 ( .A1(n67), .A2(n128), .ZN(N225) );
  NAND2_X1 U115 ( .A1(n67), .A2(n143), .ZN(N229) );
  NAND2_X1 U116 ( .A1(n67), .A2(n144), .ZN(N228) );
  NAND2_X1 U117 ( .A1(n67), .A2(n141), .ZN(N226) );
  NAND2_X1 U118 ( .A1(n67), .A2(n142), .ZN(N227) );
  AOI222_X1 U119 ( .A1(register_memory[24]), .A2(n82), .B1(register_memory[8]), 
        .B2(n83), .C1(register_memory[16]), .C2(n84), .ZN(n140) );
  AOI222_X1 U120 ( .A1(register_memory[25]), .A2(n82), .B1(register_memory[9]), 
        .B2(n83), .C1(register_memory[17]), .C2(n84), .ZN(n120) );
  AOI222_X1 U121 ( .A1(register_memory[26]), .A2(n82), .B1(register_memory[10]), .B2(n83), .C1(register_memory[18]), .C2(n84), .ZN(n114) );
  AOI222_X1 U122 ( .A1(register_memory[27]), .A2(n82), .B1(register_memory[11]), .B2(n83), .C1(register_memory[19]), .C2(n84), .ZN(n108) );
  AOI222_X1 U123 ( .A1(register_memory[28]), .A2(n82), .B1(register_memory[12]), .B2(n83), .C1(register_memory[20]), .C2(n84), .ZN(n102) );
  AOI222_X1 U124 ( .A1(register_memory[29]), .A2(n82), .B1(register_memory[13]), .B2(n83), .C1(register_memory[21]), .C2(n84), .ZN(n96) );
  AOI222_X1 U125 ( .A1(register_memory[30]), .A2(n82), .B1(register_memory[14]), .B2(n83), .C1(register_memory[22]), .C2(n84), .ZN(n90) );
  AOI222_X1 U126 ( .A1(register_memory[31]), .A2(n82), .B1(register_memory[15]), .B2(n83), .C1(register_memory[23]), .C2(n84), .ZN(n81) );
  AOI222_X1 U127 ( .A1(n158), .A2(register_memory[24]), .B1(n159), .B2(
        register_memory[8]), .C1(n160), .C2(register_memory[16]), .ZN(n214) );
  AOI222_X1 U128 ( .A1(n158), .A2(register_memory[25]), .B1(n159), .B2(
        register_memory[9]), .C1(n160), .C2(register_memory[17]), .ZN(n197) );
  AOI222_X1 U129 ( .A1(n158), .A2(register_memory[26]), .B1(n159), .B2(
        register_memory[10]), .C1(n160), .C2(register_memory[18]), .ZN(n191)
         );
  AOI222_X1 U130 ( .A1(n158), .A2(register_memory[27]), .B1(n159), .B2(
        register_memory[11]), .C1(n160), .C2(register_memory[19]), .ZN(n185)
         );
  AOI222_X1 U132 ( .A1(n158), .A2(register_memory[28]), .B1(n159), .B2(
        register_memory[12]), .C1(n160), .C2(register_memory[20]), .ZN(n179)
         );
  AOI222_X1 U133 ( .A1(n158), .A2(register_memory[29]), .B1(n159), .B2(
        register_memory[13]), .C1(n160), .C2(register_memory[21]), .ZN(n173)
         );
  AOI222_X1 U134 ( .A1(n158), .A2(register_memory[30]), .B1(n159), .B2(
        register_memory[14]), .C1(n160), .C2(register_memory[22]), .ZN(n167)
         );
  AOI222_X1 U135 ( .A1(n158), .A2(register_memory[31]), .B1(n159), .B2(
        register_memory[15]), .C1(n160), .C2(register_memory[23]), .ZN(n157)
         );
  NOR2_X1 U136 ( .A1(n66), .A2(write_address[2]), .ZN(n217) );
  INV_X1 U137 ( .A(regwrite), .ZN(n66) );
  OAI21_X1 U138 ( .B1(n161), .B2(n65), .A(n215), .ZN(n126) );
  NAND2_X1 U139 ( .A1(register_memory[0]), .A2(n161), .ZN(n215) );
  OAI21_X1 U140 ( .B1(n161), .B2(n64), .A(n198), .ZN(n119) );
  NAND2_X1 U141 ( .A1(register_memory[1]), .A2(n161), .ZN(n198) );
  OAI21_X1 U142 ( .B1(n161), .B2(n63), .A(n192), .ZN(n113) );
  NAND2_X1 U143 ( .A1(register_memory[2]), .A2(n161), .ZN(n192) );
  OAI21_X1 U144 ( .B1(n161), .B2(n62), .A(n186), .ZN(n107) );
  NAND2_X1 U145 ( .A1(register_memory[3]), .A2(n161), .ZN(n186) );
  OAI21_X1 U146 ( .B1(n161), .B2(n61), .A(n180), .ZN(n101) );
  NAND2_X1 U147 ( .A1(register_memory[4]), .A2(n161), .ZN(n180) );
  OAI21_X1 U148 ( .B1(n161), .B2(n60), .A(n174), .ZN(n95) );
  NAND2_X1 U149 ( .A1(register_memory[5]), .A2(n161), .ZN(n174) );
  OAI21_X1 U150 ( .B1(n161), .B2(n59), .A(n168), .ZN(n89) );
  NAND2_X1 U151 ( .A1(register_memory[6]), .A2(n161), .ZN(n168) );
  OAI21_X1 U152 ( .B1(n161), .B2(n58), .A(n162), .ZN(n78) );
  NAND2_X1 U153 ( .A1(register_memory[7]), .A2(n161), .ZN(n162) );
  AOI22_X1 U154 ( .A1(write_data[0]), .A2(n76), .B1(n77), .B2(n126), .ZN(n125)
         );
  AOI22_X1 U155 ( .A1(write_data[1]), .A2(n76), .B1(n77), .B2(n119), .ZN(n118)
         );
  AOI22_X1 U156 ( .A1(write_data[2]), .A2(n76), .B1(n77), .B2(n113), .ZN(n112)
         );
  AOI22_X1 U157 ( .A1(write_data[3]), .A2(n76), .B1(n77), .B2(n107), .ZN(n106)
         );
  AOI22_X1 U158 ( .A1(write_data[4]), .A2(n76), .B1(n77), .B2(n101), .ZN(n100)
         );
  AOI22_X1 U159 ( .A1(write_data[5]), .A2(n76), .B1(n77), .B2(n95), .ZN(n94)
         );
  AOI22_X1 U160 ( .A1(write_data[6]), .A2(n76), .B1(n77), .B2(n89), .ZN(n88)
         );
  AOI22_X1 U161 ( .A1(write_data[7]), .A2(n76), .B1(n77), .B2(n78), .ZN(n75)
         );
  AOI22_X1 U162 ( .A1(write_data[0]), .A2(n153), .B1(n154), .B2(n126), .ZN(
        n203) );
  AOI22_X1 U163 ( .A1(write_data[1]), .A2(n153), .B1(n154), .B2(n119), .ZN(
        n196) );
  AOI22_X1 U164 ( .A1(write_data[2]), .A2(n153), .B1(n154), .B2(n113), .ZN(
        n190) );
  AOI22_X1 U165 ( .A1(write_data[3]), .A2(n153), .B1(n154), .B2(n107), .ZN(
        n184) );
  AOI22_X1 U166 ( .A1(write_data[4]), .A2(n153), .B1(n154), .B2(n101), .ZN(
        n178) );
  AOI22_X1 U167 ( .A1(write_data[5]), .A2(n153), .B1(n154), .B2(n95), .ZN(n172) );
  AOI22_X1 U168 ( .A1(write_data[6]), .A2(n153), .B1(n154), .B2(n89), .ZN(n166) );
  AOI22_X1 U169 ( .A1(write_data[7]), .A2(n153), .B1(n154), .B2(n78), .ZN(n152) );
  INV_X1 U170 ( .A(write_address[1]), .ZN(n56) );
  INV_X1 U171 ( .A(write_address[0]), .ZN(n57) );
  INV_X1 U172 ( .A(instruction[5]), .ZN(n50) );
  INV_X1 U173 ( .A(instruction[8]), .ZN(n45) );
  AND2_X1 U174 ( .A1(write_address[2]), .A2(regwrite), .ZN(n216) );
  NOR3_X1 U175 ( .A1(instruction[5]), .A2(instruction[6]), .A3(n48), .ZN(n132)
         );
  NOR3_X1 U176 ( .A1(n45), .A2(instruction[9]), .A3(n43), .ZN(n207) );
  NOR3_X1 U177 ( .A1(n50), .A2(instruction[6]), .A3(n48), .ZN(n131) );
  NOR3_X1 U178 ( .A1(instruction[8]), .A2(instruction[9]), .A3(n43), .ZN(n208)
         );
  NOR3_X1 U179 ( .A1(n50), .A2(instruction[7]), .A3(n49), .ZN(n138) );
  NOR3_X1 U180 ( .A1(instruction[5]), .A2(instruction[7]), .A3(n49), .ZN(n139)
         );
  NOR3_X1 U181 ( .A1(n45), .A2(instruction[10]), .A3(n44), .ZN(n212) );
  NOR3_X1 U182 ( .A1(instruction[10]), .A2(instruction[8]), .A3(n44), .ZN(n213) );
  OR2_X1 U183 ( .A1(n122), .A2(rst), .ZN(n70) );
  NOR2_X1 U184 ( .A1(n200), .A2(instruction[14]), .ZN(n122) );
  NOR2_X1 U185 ( .A1(instruction[14]), .A2(instruction[15]), .ZN(n200) );
  INV_X1 U186 ( .A(rst), .ZN(n67) );
  INV_X1 U187 ( .A(write_data[0]), .ZN(n65) );
  INV_X1 U188 ( .A(write_data[1]), .ZN(n64) );
  INV_X1 U189 ( .A(write_data[2]), .ZN(n63) );
  INV_X1 U190 ( .A(write_data[3]), .ZN(n62) );
  INV_X1 U191 ( .A(write_data[4]), .ZN(n61) );
  INV_X1 U192 ( .A(write_data[5]), .ZN(n60) );
  INV_X1 U193 ( .A(write_data[6]), .ZN(n59) );
  INV_X1 U194 ( .A(write_data[7]), .ZN(n58) );
  INV_X1 U195 ( .A(instruction[9]), .ZN(n44) );
  INV_X1 U196 ( .A(instruction[7]), .ZN(n48) );
  INV_X1 U197 ( .A(instruction[10]), .ZN(n43) );
  INV_X1 U198 ( .A(instruction[6]), .ZN(n49) );
  NOR2_X1 U199 ( .A1(rst), .A2(n65), .ZN(N217) );
  NOR2_X1 U200 ( .A1(rst), .A2(n64), .ZN(N218) );
  NOR2_X1 U201 ( .A1(rst), .A2(n63), .ZN(N219) );
  NOR2_X1 U202 ( .A1(rst), .A2(n62), .ZN(N220) );
  NOR2_X1 U203 ( .A1(rst), .A2(n61), .ZN(N221) );
  NOR2_X1 U204 ( .A1(rst), .A2(n60), .ZN(N222) );
  NOR2_X1 U205 ( .A1(rst), .A2(n59), .ZN(N223) );
  NOR2_X1 U206 ( .A1(rst), .A2(n58), .ZN(N224) );
  INV_X1 U207 ( .A(register_memory[48]), .ZN(n16) );
  INV_X1 U208 ( .A(register_memory[32]), .ZN(n32) );
  INV_X1 U209 ( .A(register_memory[49]), .ZN(n15) );
  INV_X1 U210 ( .A(register_memory[33]), .ZN(n31) );
  INV_X1 U211 ( .A(register_memory[50]), .ZN(n14) );
  INV_X1 U212 ( .A(register_memory[34]), .ZN(n30) );
  INV_X1 U213 ( .A(register_memory[51]), .ZN(n13) );
  INV_X1 U214 ( .A(register_memory[35]), .ZN(n29) );
  INV_X1 U215 ( .A(register_memory[52]), .ZN(n12) );
  INV_X1 U216 ( .A(register_memory[36]), .ZN(n28) );
  INV_X1 U217 ( .A(register_memory[53]), .ZN(n11) );
  INV_X1 U218 ( .A(register_memory[37]), .ZN(n27) );
  INV_X1 U219 ( .A(register_memory[54]), .ZN(n10) );
  INV_X1 U220 ( .A(register_memory[38]), .ZN(n26) );
  INV_X1 U221 ( .A(register_memory[55]), .ZN(n9) );
  INV_X1 U222 ( .A(register_memory[39]), .ZN(n25) );
  INV_X1 U223 ( .A(register_memory[56]), .ZN(n8) );
  INV_X1 U224 ( .A(register_memory[40]), .ZN(n24) );
  INV_X1 U225 ( .A(register_memory[57]), .ZN(n7) );
  INV_X1 U226 ( .A(register_memory[41]), .ZN(n23) );
  INV_X1 U227 ( .A(register_memory[58]), .ZN(n6) );
  INV_X1 U228 ( .A(register_memory[42]), .ZN(n22) );
  INV_X1 U229 ( .A(register_memory[59]), .ZN(n5) );
  INV_X1 U230 ( .A(register_memory[43]), .ZN(n21) );
  INV_X1 U231 ( .A(register_memory[60]), .ZN(n4) );
  INV_X1 U232 ( .A(register_memory[44]), .ZN(n20) );
  INV_X1 U233 ( .A(register_memory[61]), .ZN(n3) );
  INV_X1 U234 ( .A(register_memory[45]), .ZN(n19) );
  INV_X1 U235 ( .A(register_memory[62]), .ZN(n2) );
  INV_X1 U236 ( .A(register_memory[46]), .ZN(n18) );
  INV_X1 U237 ( .A(register_memory[63]), .ZN(n1) );
  INV_X1 U251 ( .A(register_memory[47]), .ZN(n17) );
endmodule


module control ( regwrite, branch, mem_read, mem_write, mem_to_reg, alu_src, 
        pc_en, instruction, rst );
  input [15:0] instruction;
  input rst;
  output regwrite, branch, mem_read, mem_write, mem_to_reg, alu_src, pc_en;
  wire   n1, n2, n4, n5, n6, n10;

  INV_X1 U6 ( .A(instruction[14]), .ZN(n2) );
  NOR2_X1 U7 ( .A1(rst), .A2(n4), .ZN(regwrite) );
  AOI221_X1 U8 ( .B1(n5), .B2(n6), .C1(instruction[14]), .C2(instruction[11]), 
        .A(instruction[15]), .ZN(n4) );
  NAND2_X1 U9 ( .A1(instruction[13]), .A2(instruction[12]), .ZN(n6) );
  OR2_X1 U11 ( .A1(instruction[15]), .A2(instruction[14]), .ZN(n5) );
  NOR3_X1 U12 ( .A1(n6), .A2(instruction[11]), .A3(n1), .ZN(mem_write) );
  INV_X1 U13 ( .A(alu_src), .ZN(n1) );
  OR2_X1 U14 ( .A1(n5), .A2(rst), .ZN(pc_en) );
  CLKBUF_X1 U15 ( .A(mem_read), .Z(mem_to_reg) );
  NOR2_X1 U5 ( .A1(instruction[12]), .A2(n10), .ZN(mem_read) );
  NAND3_X1 U10 ( .A1(instruction[13]), .A2(instruction[11]), .A3(alu_src), 
        .ZN(n10) );
  NOR3_X1 U16 ( .A1(rst), .A2(instruction[15]), .A3(n2), .ZN(alu_src) );
endmodule


module idex ( regwrite_idex_output, branch_idex_output, mem_read_idex_output, 
        mem_write_idex_output, mem_to_reg_idex_output, alu_src_idex_output, 
        pc_en_idex_output, read_data_1_idex_output, read_data_2_idex_output, 
        instruction_idex_output, pc_current_instruction_address_idex_output, 
        regwrite_idex_input, branch_idex_input, mem_read_idex_input, 
        mem_write_idex_input, mem_to_reg_idex_input, alu_src_idex_input, 
        pc_en_idex_input, read_data_1_idex_input, read_data_2_idex_input, 
        instruction_idex_input, pc_current_instruction_address_idex_input, clk
 );
  output [7:0] read_data_1_idex_output;
  output [7:0] read_data_2_idex_output;
  output [15:0] instruction_idex_output;
  output [7:0] pc_current_instruction_address_idex_output;
  input [7:0] read_data_1_idex_input;
  input [7:0] read_data_2_idex_input;
  input [15:0] instruction_idex_input;
  input [7:0] pc_current_instruction_address_idex_input;
  input regwrite_idex_input, branch_idex_input, mem_read_idex_input,
         mem_write_idex_input, mem_to_reg_idex_input, alu_src_idex_input,
         pc_en_idex_input, clk;
  output regwrite_idex_output, branch_idex_output, mem_read_idex_output,
         mem_write_idex_output, mem_to_reg_idex_output, alu_src_idex_output,
         pc_en_idex_output;

  assign branch_idex_output = 1'b0;

  DFF_X1 regwrite_idex_output_reg ( .D(regwrite_idex_input), .CK(clk), .Q(
        regwrite_idex_output) );
  DFF_X1 mem_read_idex_output_reg ( .D(mem_read_idex_input), .CK(clk), .Q(
        mem_read_idex_output) );
  DFF_X1 mem_write_idex_output_reg ( .D(mem_write_idex_input), .CK(clk), .Q(
        mem_write_idex_output) );
  DFF_X1 mem_to_reg_idex_output_reg ( .D(mem_to_reg_idex_input), .CK(clk), .Q(
        mem_to_reg_idex_output) );
  DFF_X1 alu_src_idex_output_reg ( .D(alu_src_idex_input), .CK(clk), .Q(
        alu_src_idex_output) );
  DFF_X1 pc_en_idex_output_reg ( .D(pc_en_idex_input), .CK(clk), .Q(
        pc_en_idex_output) );
  DFF_X1 read_data_1_idex_output_reg_7_ ( .D(read_data_1_idex_input[7]), .CK(
        clk), .Q(read_data_1_idex_output[7]) );
  DFF_X1 read_data_1_idex_output_reg_6_ ( .D(read_data_1_idex_input[6]), .CK(
        clk), .Q(read_data_1_idex_output[6]) );
  DFF_X1 read_data_1_idex_output_reg_5_ ( .D(read_data_1_idex_input[5]), .CK(
        clk), .Q(read_data_1_idex_output[5]) );
  DFF_X1 read_data_1_idex_output_reg_4_ ( .D(read_data_1_idex_input[4]), .CK(
        clk), .Q(read_data_1_idex_output[4]) );
  DFF_X1 read_data_1_idex_output_reg_3_ ( .D(read_data_1_idex_input[3]), .CK(
        clk), .Q(read_data_1_idex_output[3]) );
  DFF_X1 read_data_1_idex_output_reg_2_ ( .D(read_data_1_idex_input[2]), .CK(
        clk), .Q(read_data_1_idex_output[2]) );
  DFF_X1 read_data_1_idex_output_reg_1_ ( .D(read_data_1_idex_input[1]), .CK(
        clk), .Q(read_data_1_idex_output[1]) );
  DFF_X1 read_data_1_idex_output_reg_0_ ( .D(read_data_1_idex_input[0]), .CK(
        clk), .Q(read_data_1_idex_output[0]) );
  DFF_X1 read_data_2_idex_output_reg_7_ ( .D(read_data_2_idex_input[7]), .CK(
        clk), .Q(read_data_2_idex_output[7]) );
  DFF_X1 read_data_2_idex_output_reg_6_ ( .D(read_data_2_idex_input[6]), .CK(
        clk), .Q(read_data_2_idex_output[6]) );
  DFF_X1 read_data_2_idex_output_reg_5_ ( .D(read_data_2_idex_input[5]), .CK(
        clk), .Q(read_data_2_idex_output[5]) );
  DFF_X1 read_data_2_idex_output_reg_4_ ( .D(read_data_2_idex_input[4]), .CK(
        clk), .Q(read_data_2_idex_output[4]) );
  DFF_X1 read_data_2_idex_output_reg_3_ ( .D(read_data_2_idex_input[3]), .CK(
        clk), .Q(read_data_2_idex_output[3]) );
  DFF_X1 read_data_2_idex_output_reg_2_ ( .D(read_data_2_idex_input[2]), .CK(
        clk), .Q(read_data_2_idex_output[2]) );
  DFF_X1 read_data_2_idex_output_reg_1_ ( .D(read_data_2_idex_input[1]), .CK(
        clk), .Q(read_data_2_idex_output[1]) );
  DFF_X1 read_data_2_idex_output_reg_0_ ( .D(read_data_2_idex_input[0]), .CK(
        clk), .Q(read_data_2_idex_output[0]) );
  DFF_X1 instruction_idex_output_reg_15_ ( .D(instruction_idex_input[15]), 
        .CK(clk), .Q(instruction_idex_output[15]) );
  DFF_X1 instruction_idex_output_reg_14_ ( .D(instruction_idex_input[14]), 
        .CK(clk), .Q(instruction_idex_output[14]) );
  DFF_X1 instruction_idex_output_reg_13_ ( .D(instruction_idex_input[13]), 
        .CK(clk), .Q(instruction_idex_output[13]) );
  DFF_X1 instruction_idex_output_reg_12_ ( .D(instruction_idex_input[12]), 
        .CK(clk), .Q(instruction_idex_output[12]) );
  DFF_X1 instruction_idex_output_reg_11_ ( .D(instruction_idex_input[11]), 
        .CK(clk), .Q(instruction_idex_output[11]) );
  DFF_X1 instruction_idex_output_reg_10_ ( .D(instruction_idex_input[10]), 
        .CK(clk), .Q(instruction_idex_output[10]) );
  DFF_X1 instruction_idex_output_reg_9_ ( .D(instruction_idex_input[9]), .CK(
        clk), .Q(instruction_idex_output[9]) );
  DFF_X1 instruction_idex_output_reg_8_ ( .D(instruction_idex_input[8]), .CK(
        clk), .Q(instruction_idex_output[8]) );
  DFF_X1 instruction_idex_output_reg_7_ ( .D(instruction_idex_input[7]), .CK(
        clk), .Q(instruction_idex_output[7]) );
  DFF_X1 instruction_idex_output_reg_6_ ( .D(instruction_idex_input[6]), .CK(
        clk), .Q(instruction_idex_output[6]) );
  DFF_X1 instruction_idex_output_reg_5_ ( .D(instruction_idex_input[5]), .CK(
        clk), .Q(instruction_idex_output[5]) );
  DFF_X1 instruction_idex_output_reg_4_ ( .D(instruction_idex_input[4]), .CK(
        clk), .Q(instruction_idex_output[4]) );
  DFF_X1 instruction_idex_output_reg_3_ ( .D(instruction_idex_input[3]), .CK(
        clk), .Q(instruction_idex_output[3]) );
  DFF_X1 instruction_idex_output_reg_2_ ( .D(instruction_idex_input[2]), .CK(
        clk), .Q(instruction_idex_output[2]) );
  DFF_X1 instruction_idex_output_reg_1_ ( .D(instruction_idex_input[1]), .CK(
        clk), .Q(instruction_idex_output[1]) );
  DFF_X1 instruction_idex_output_reg_0_ ( .D(instruction_idex_input[0]), .CK(
        clk), .Q(instruction_idex_output[0]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_7_ ( .D(
        pc_current_instruction_address_idex_input[7]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[7]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_6_ ( .D(
        pc_current_instruction_address_idex_input[6]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[6]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_5_ ( .D(
        pc_current_instruction_address_idex_input[5]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[5]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_4_ ( .D(
        pc_current_instruction_address_idex_input[4]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[4]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_3_ ( .D(
        pc_current_instruction_address_idex_input[3]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[3]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_2_ ( .D(
        pc_current_instruction_address_idex_input[2]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[2]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_1_ ( .D(
        pc_current_instruction_address_idex_input[1]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[1]) );
  DFF_X1 pc_current_instruction_address_idex_output_reg_0_ ( .D(
        pc_current_instruction_address_idex_input[0]), .CK(clk), .Q(
        pc_current_instruction_address_idex_output[0]) );
endmodule


module id ( regwrite_out, branch, mem_read, mem_write, mem_to_reg, alu_src, 
        pc_en, rd_data, rs_data, instruction_output, pc_current_address_output, 
        pc_current_address_input, instruction_input, rst, regwrite, write_data, 
        write_addr, clk );
  output [7:0] rd_data;
  output [7:0] rs_data;
  output [15:0] instruction_output;
  output [7:0] pc_current_address_output;
  input [7:0] pc_current_address_input;
  input [15:0] instruction_input;
  input [7:0] write_data;
  input [2:0] write_addr;
  input rst, regwrite, clk;
  output regwrite_out, branch, mem_read, mem_write, mem_to_reg, alu_src, pc_en;
  wire   regwrite_from_control, mem_read_from_control, mem_write_from_control,
         mem_to_reg_from_control, alu_src_from_control, pc_en_from_control;
  wire   [7:0] pc_address;
  wire   [15:0] instruction_from_ifid;
  wire   [7:0] rd;
  wire   [7:0] rs;

  ifid ifid1 ( .pc_current_instruction_address_ifid_output(pc_address), 
        .instruction_ifid_output(instruction_from_ifid), 
        .instruction_ifid_input(instruction_input), 
        .pc_current_instruction_address_ifid_input(pc_current_address_input), 
        .clk(clk) );
  registerfile registerfile1 ( .read_data_1(rd), .read_data_2(rs), 
        .instruction({instruction_from_ifid[15:14], 1'b0, 1'b0, 1'b0, 
        instruction_from_ifid[10:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .write_address(write_addr), .write_data(write_data), .regwrite(
        regwrite), .rst(rst) );
  control control1 ( .regwrite(regwrite_from_control), .mem_read(
        mem_read_from_control), .mem_write(mem_write_from_control), 
        .mem_to_reg(mem_to_reg_from_control), .alu_src(alu_src_from_control), 
        .pc_en(pc_en_from_control), .instruction({instruction_from_ifid[15:11], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .rst(rst) );
  idex idex1 ( .regwrite_idex_output(regwrite_out), .branch_idex_output(branch), .mem_read_idex_output(mem_read), .mem_write_idex_output(mem_write), 
        .mem_to_reg_idex_output(mem_to_reg), .alu_src_idex_output(alu_src), 
        .pc_en_idex_output(pc_en), .read_data_1_idex_output(rd_data), 
        .read_data_2_idex_output(rs_data), .instruction_idex_output(
        instruction_output), .pc_current_instruction_address_idex_output(
        pc_current_address_output), .regwrite_idex_input(regwrite_from_control), .branch_idex_input(1'b0), .mem_read_idex_input(mem_read_from_control), 
        .mem_write_idex_input(mem_write_from_control), .mem_to_reg_idex_input(
        mem_to_reg_from_control), .alu_src_idex_input(alu_src_from_control), 
        .pc_en_idex_input(pc_en_from_control), .read_data_1_idex_input(rd), 
        .read_data_2_idex_input(rs), .instruction_idex_input(
        instruction_from_ifid), .pc_current_instruction_address_idex_input(
        pc_address), .clk(clk) );
endmodule

