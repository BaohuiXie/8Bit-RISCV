/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Sun May 29 01:14:28 2022
/////////////////////////////////////////////////////////////


module ifid ( instruction_ifid_output, instruction_ifid_input, rst, clk );
  output [15:0] instruction_ifid_output;
  input [15:0] instruction_ifid_input;
  input rst, clk;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n1;

  DFF_X1 instruction_ifid_output_reg_15_ ( .D(N18), .CK(clk), .Q(
        instruction_ifid_output[15]) );
  DFF_X1 instruction_ifid_output_reg_14_ ( .D(N17), .CK(clk), .Q(
        instruction_ifid_output[14]) );
  DFF_X1 instruction_ifid_output_reg_13_ ( .D(N16), .CK(clk), .Q(
        instruction_ifid_output[13]) );
  DFF_X1 instruction_ifid_output_reg_12_ ( .D(N15), .CK(clk), .Q(
        instruction_ifid_output[12]) );
  DFF_X1 instruction_ifid_output_reg_11_ ( .D(N14), .CK(clk), .Q(
        instruction_ifid_output[11]) );
  DFF_X1 instruction_ifid_output_reg_10_ ( .D(N13), .CK(clk), .Q(
        instruction_ifid_output[10]) );
  DFF_X1 instruction_ifid_output_reg_9_ ( .D(N12), .CK(clk), .Q(
        instruction_ifid_output[9]) );
  DFF_X1 instruction_ifid_output_reg_8_ ( .D(N11), .CK(clk), .Q(
        instruction_ifid_output[8]) );
  DFF_X1 instruction_ifid_output_reg_7_ ( .D(N10), .CK(clk), .Q(
        instruction_ifid_output[7]) );
  DFF_X1 instruction_ifid_output_reg_6_ ( .D(N9), .CK(clk), .Q(
        instruction_ifid_output[6]) );
  DFF_X1 instruction_ifid_output_reg_5_ ( .D(N8), .CK(clk), .Q(
        instruction_ifid_output[5]) );
  DFF_X1 instruction_ifid_output_reg_4_ ( .D(N7), .CK(clk), .Q(
        instruction_ifid_output[4]) );
  DFF_X1 instruction_ifid_output_reg_3_ ( .D(N6), .CK(clk), .Q(
        instruction_ifid_output[3]) );
  DFF_X1 instruction_ifid_output_reg_2_ ( .D(N5), .CK(clk), .Q(
        instruction_ifid_output[2]) );
  DFF_X1 instruction_ifid_output_reg_1_ ( .D(N4), .CK(clk), .Q(
        instruction_ifid_output[1]) );
  DFF_X1 instruction_ifid_output_reg_0_ ( .D(N3), .CK(clk), .Q(
        instruction_ifid_output[0]) );
  INV_X1 U3 ( .A(rst), .ZN(n1) );
  AND2_X1 U4 ( .A1(instruction_ifid_input[0]), .A2(n1), .ZN(N3) );
  AND2_X1 U5 ( .A1(instruction_ifid_input[1]), .A2(n1), .ZN(N4) );
  AND2_X1 U6 ( .A1(instruction_ifid_input[2]), .A2(n1), .ZN(N5) );
  AND2_X1 U7 ( .A1(instruction_ifid_input[3]), .A2(n1), .ZN(N6) );
  AND2_X1 U8 ( .A1(instruction_ifid_input[4]), .A2(n1), .ZN(N7) );
  AND2_X1 U9 ( .A1(instruction_ifid_input[5]), .A2(n1), .ZN(N8) );
  AND2_X1 U10 ( .A1(instruction_ifid_input[6]), .A2(n1), .ZN(N9) );
  AND2_X1 U11 ( .A1(instruction_ifid_input[7]), .A2(n1), .ZN(N10) );
  AND2_X1 U12 ( .A1(instruction_ifid_input[8]), .A2(n1), .ZN(N11) );
  AND2_X1 U13 ( .A1(instruction_ifid_input[9]), .A2(n1), .ZN(N12) );
  AND2_X1 U14 ( .A1(instruction_ifid_input[10]), .A2(n1), .ZN(N13) );
  AND2_X1 U15 ( .A1(instruction_ifid_input[11]), .A2(n1), .ZN(N14) );
  AND2_X1 U16 ( .A1(instruction_ifid_input[12]), .A2(n1), .ZN(N15) );
  AND2_X1 U17 ( .A1(instruction_ifid_input[13]), .A2(n1), .ZN(N16) );
  AND2_X1 U18 ( .A1(instruction_ifid_input[14]), .A2(n1), .ZN(N17) );
  AND2_X1 U19 ( .A1(instruction_ifid_input[15]), .A2(n1), .ZN(N18) );
endmodule


module registerfile ( read_data_1, read_data_2, rd, rs, write_address, 
        write_data, regwrite, clk, rst );
  output [7:0] read_data_1;
  output [7:0] read_data_2;
  input [2:0] rd;
  input [2:0] rs;
  input [2:0] write_address;
  input [7:0] write_data;
  input regwrite, clk, rst;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285;
  wire   [63:0] register_memory;

  DFF_X1 register_memory_reg_7__7_ ( .D(n112), .CK(clk), .Q(
        register_memory[63]) );
  DFF_X1 register_memory_reg_7__6_ ( .D(n113), .CK(clk), .Q(
        register_memory[62]) );
  DFF_X1 register_memory_reg_7__5_ ( .D(n114), .CK(clk), .Q(
        register_memory[61]) );
  DFF_X1 register_memory_reg_7__4_ ( .D(n115), .CK(clk), .Q(
        register_memory[60]) );
  DFF_X1 register_memory_reg_7__3_ ( .D(n116), .CK(clk), .Q(
        register_memory[59]) );
  DFF_X1 register_memory_reg_7__2_ ( .D(n117), .CK(clk), .Q(
        register_memory[58]) );
  DFF_X1 register_memory_reg_7__1_ ( .D(n118), .CK(clk), .Q(
        register_memory[57]) );
  DFF_X1 register_memory_reg_7__0_ ( .D(n119), .CK(clk), .Q(
        register_memory[56]) );
  DFF_X1 register_memory_reg_6__7_ ( .D(n120), .CK(clk), .Q(
        register_memory[55]) );
  DFF_X1 register_memory_reg_6__6_ ( .D(n121), .CK(clk), .Q(
        register_memory[54]) );
  DFF_X1 register_memory_reg_6__5_ ( .D(n122), .CK(clk), .Q(
        register_memory[53]) );
  DFF_X1 register_memory_reg_6__4_ ( .D(n123), .CK(clk), .Q(
        register_memory[52]) );
  DFF_X1 register_memory_reg_6__3_ ( .D(n124), .CK(clk), .Q(
        register_memory[51]) );
  DFF_X1 register_memory_reg_6__2_ ( .D(n125), .CK(clk), .Q(
        register_memory[50]) );
  DFF_X1 register_memory_reg_6__1_ ( .D(n126), .CK(clk), .Q(
        register_memory[49]) );
  DFF_X1 register_memory_reg_6__0_ ( .D(n127), .CK(clk), .Q(
        register_memory[48]) );
  DFF_X1 register_memory_reg_5__7_ ( .D(n128), .CK(clk), .Q(
        register_memory[47]) );
  DFF_X1 register_memory_reg_5__6_ ( .D(n129), .CK(clk), .Q(
        register_memory[46]) );
  DFF_X1 register_memory_reg_5__5_ ( .D(n130), .CK(clk), .Q(
        register_memory[45]) );
  DFF_X1 register_memory_reg_5__4_ ( .D(n131), .CK(clk), .Q(
        register_memory[44]) );
  DFF_X1 register_memory_reg_5__3_ ( .D(n132), .CK(clk), .Q(
        register_memory[43]) );
  DFF_X1 register_memory_reg_5__2_ ( .D(n133), .CK(clk), .Q(
        register_memory[42]) );
  DFF_X1 register_memory_reg_5__1_ ( .D(n134), .CK(clk), .Q(
        register_memory[41]) );
  DFF_X1 register_memory_reg_5__0_ ( .D(n135), .CK(clk), .Q(
        register_memory[40]) );
  DFF_X1 register_memory_reg_4__7_ ( .D(n136), .CK(clk), .Q(
        register_memory[39]) );
  DFF_X1 register_memory_reg_4__6_ ( .D(n137), .CK(clk), .Q(
        register_memory[38]) );
  DFF_X1 register_memory_reg_4__5_ ( .D(n138), .CK(clk), .Q(
        register_memory[37]) );
  DFF_X1 register_memory_reg_4__4_ ( .D(n139), .CK(clk), .Q(
        register_memory[36]) );
  DFF_X1 register_memory_reg_4__3_ ( .D(n140), .CK(clk), .Q(
        register_memory[35]) );
  DFF_X1 register_memory_reg_4__2_ ( .D(n141), .CK(clk), .Q(
        register_memory[34]) );
  DFF_X1 register_memory_reg_4__1_ ( .D(n142), .CK(clk), .Q(
        register_memory[33]) );
  DFF_X1 register_memory_reg_4__0_ ( .D(n143), .CK(clk), .Q(
        register_memory[32]) );
  DFF_X1 register_memory_reg_3__7_ ( .D(n144), .CK(clk), .Q(
        register_memory[31]) );
  DFF_X1 register_memory_reg_3__6_ ( .D(n145), .CK(clk), .Q(
        register_memory[30]) );
  DFF_X1 register_memory_reg_3__5_ ( .D(n146), .CK(clk), .Q(
        register_memory[29]) );
  DFF_X1 register_memory_reg_3__4_ ( .D(n147), .CK(clk), .Q(
        register_memory[28]) );
  DFF_X1 register_memory_reg_3__3_ ( .D(n148), .CK(clk), .Q(
        register_memory[27]) );
  DFF_X1 register_memory_reg_3__2_ ( .D(n149), .CK(clk), .Q(
        register_memory[26]) );
  DFF_X1 register_memory_reg_3__1_ ( .D(n150), .CK(clk), .Q(
        register_memory[25]) );
  DFF_X1 register_memory_reg_3__0_ ( .D(n151), .CK(clk), .Q(
        register_memory[24]) );
  DFF_X1 register_memory_reg_2__7_ ( .D(n152), .CK(clk), .Q(
        register_memory[23]) );
  DFF_X1 register_memory_reg_2__6_ ( .D(n153), .CK(clk), .Q(
        register_memory[22]) );
  DFF_X1 register_memory_reg_2__5_ ( .D(n154), .CK(clk), .Q(
        register_memory[21]) );
  DFF_X1 register_memory_reg_2__4_ ( .D(n155), .CK(clk), .Q(
        register_memory[20]) );
  DFF_X1 register_memory_reg_2__3_ ( .D(n156), .CK(clk), .Q(
        register_memory[19]) );
  DFF_X1 register_memory_reg_2__2_ ( .D(n157), .CK(clk), .Q(
        register_memory[18]) );
  DFF_X1 register_memory_reg_2__1_ ( .D(n158), .CK(clk), .Q(
        register_memory[17]) );
  DFF_X1 register_memory_reg_2__0_ ( .D(n159), .CK(clk), .Q(
        register_memory[16]) );
  DFF_X1 register_memory_reg_1__7_ ( .D(n160), .CK(clk), .Q(
        register_memory[15]) );
  DFF_X1 register_memory_reg_1__6_ ( .D(n161), .CK(clk), .Q(
        register_memory[14]) );
  DFF_X1 register_memory_reg_1__5_ ( .D(n162), .CK(clk), .Q(
        register_memory[13]) );
  DFF_X1 register_memory_reg_1__4_ ( .D(n163), .CK(clk), .Q(
        register_memory[12]) );
  DFF_X1 register_memory_reg_1__3_ ( .D(n164), .CK(clk), .Q(
        register_memory[11]) );
  DFF_X1 register_memory_reg_1__2_ ( .D(n165), .CK(clk), .Q(
        register_memory[10]) );
  DFF_X1 register_memory_reg_1__1_ ( .D(n166), .CK(clk), .Q(register_memory[9]) );
  DFF_X1 register_memory_reg_1__0_ ( .D(n167), .CK(clk), .Q(register_memory[8]) );
  DFF_X1 register_memory_reg_0__7_ ( .D(n168), .CK(clk), .Q(register_memory[7]) );
  DFF_X1 register_memory_reg_0__6_ ( .D(n169), .CK(clk), .Q(register_memory[6]) );
  DFF_X1 register_memory_reg_0__5_ ( .D(n170), .CK(clk), .Q(register_memory[5]) );
  DFF_X1 register_memory_reg_0__4_ ( .D(n171), .CK(clk), .Q(register_memory[4]) );
  DFF_X1 register_memory_reg_0__3_ ( .D(n172), .CK(clk), .Q(register_memory[3]) );
  DFF_X1 register_memory_reg_0__2_ ( .D(n173), .CK(clk), .Q(register_memory[2]) );
  DFF_X1 register_memory_reg_0__1_ ( .D(n174), .CK(clk), .Q(register_memory[1]) );
  DFF_X1 register_memory_reg_0__0_ ( .D(n175), .CK(clk), .Q(register_memory[0]) );
  NAND3_X1 U170 ( .A1(write_address[1]), .A2(write_address[0]), .A3(
        write_address[2]), .ZN(n33) );
  NAND3_X1 U171 ( .A1(write_address[1]), .A2(n283), .A3(write_address[2]), 
        .ZN(n44) );
  NAND3_X1 U172 ( .A1(write_address[0]), .A2(n282), .A3(write_address[2]), 
        .ZN(n55) );
  NAND3_X1 U173 ( .A1(n283), .A2(n282), .A3(write_address[2]), .ZN(n66) );
  NAND3_X1 U174 ( .A1(write_address[0]), .A2(n277), .A3(write_address[1]), 
        .ZN(n77) );
  NAND3_X1 U175 ( .A1(n283), .A2(n277), .A3(write_address[1]), .ZN(n88) );
  NAND3_X1 U176 ( .A1(n282), .A2(n277), .A3(write_address[0]), .ZN(n99) );
  NAND3_X1 U177 ( .A1(n282), .A2(n277), .A3(n283), .ZN(n111) );
  NOR2_X1 U3 ( .A1(n284), .A2(rst), .ZN(n102) );
  NAND2_X1 U4 ( .A1(write_data[0]), .A2(n102), .ZN(n29) );
  NAND2_X1 U5 ( .A1(write_data[1]), .A2(n102), .ZN(n27) );
  NAND2_X1 U6 ( .A1(write_data[2]), .A2(n102), .ZN(n25) );
  NAND2_X1 U7 ( .A1(write_data[3]), .A2(n102), .ZN(n23) );
  NAND2_X1 U8 ( .A1(write_data[4]), .A2(n102), .ZN(n21) );
  NAND2_X1 U9 ( .A1(write_data[5]), .A2(n102), .ZN(n19) );
  NAND2_X1 U10 ( .A1(write_data[6]), .A2(n102), .ZN(n17) );
  NAND2_X1 U11 ( .A1(write_data[7]), .A2(n102), .ZN(n14) );
  NAND2_X1 U12 ( .A1(n31), .A2(n110), .ZN(n101) );
  INV_X1 U13 ( .A(n110), .ZN(n273) );
  NAND2_X1 U16 ( .A1(n31), .A2(n98), .ZN(n90) );
  NAND2_X1 U17 ( .A1(n31), .A2(n87), .ZN(n79) );
  NAND2_X1 U18 ( .A1(n31), .A2(n76), .ZN(n68) );
  NAND2_X1 U19 ( .A1(n31), .A2(n65), .ZN(n57) );
  NAND2_X1 U20 ( .A1(n31), .A2(n54), .ZN(n46) );
  NAND2_X1 U21 ( .A1(n31), .A2(n43), .ZN(n35) );
  NAND2_X1 U22 ( .A1(n31), .A2(n32), .ZN(n16) );
  NAND2_X1 U23 ( .A1(n284), .A2(n285), .ZN(n31) );
  INV_X1 U24 ( .A(n98), .ZN(n274) );
  INV_X1 U25 ( .A(n87), .ZN(n275) );
  INV_X1 U26 ( .A(n76), .ZN(n276) );
  INV_X1 U27 ( .A(n65), .ZN(n281) );
  INV_X1 U28 ( .A(n54), .ZN(n280) );
  INV_X1 U29 ( .A(n43), .ZN(n279) );
  INV_X1 U30 ( .A(n32), .ZN(n278) );
  NAND2_X1 U31 ( .A1(n111), .A2(n285), .ZN(n110) );
  NOR2_X2 U32 ( .A1(rd[1]), .A2(rd[2]), .ZN(n193) );
  NOR2_X2 U33 ( .A1(rs[1]), .A2(rs[2]), .ZN(n248) );
  NOR2_X2 U34 ( .A1(n201), .A2(rd[1]), .ZN(n196) );
  NOR2_X2 U35 ( .A1(n256), .A2(rs[1]), .ZN(n251) );
  NOR2_X2 U36 ( .A1(n200), .A2(rd[2]), .ZN(n192) );
  NOR2_X2 U37 ( .A1(n255), .A2(rs[2]), .ZN(n247) );
  INV_X1 U38 ( .A(n10), .ZN(n204) );
  INV_X1 U39 ( .A(rst), .ZN(n285) );
  INV_X1 U40 ( .A(rd[2]), .ZN(n201) );
  INV_X1 U41 ( .A(rs[2]), .ZN(n256) );
  INV_X1 U42 ( .A(rd[1]), .ZN(n200) );
  INV_X1 U43 ( .A(rs[1]), .ZN(n255) );
  OAI21_X1 U44 ( .B1(n273), .B2(n29), .A(n109), .ZN(n175) );
  NAND2_X1 U45 ( .A1(register_memory[0]), .A2(n101), .ZN(n109) );
  OAI21_X1 U46 ( .B1(n273), .B2(n27), .A(n108), .ZN(n174) );
  NAND2_X1 U47 ( .A1(register_memory[1]), .A2(n101), .ZN(n108) );
  OAI21_X1 U48 ( .B1(n273), .B2(n25), .A(n107), .ZN(n173) );
  NAND2_X1 U49 ( .A1(register_memory[2]), .A2(n101), .ZN(n107) );
  OAI21_X1 U50 ( .B1(n273), .B2(n23), .A(n106), .ZN(n172) );
  NAND2_X1 U51 ( .A1(register_memory[3]), .A2(n101), .ZN(n106) );
  OAI21_X1 U52 ( .B1(n273), .B2(n21), .A(n105), .ZN(n171) );
  NAND2_X1 U53 ( .A1(register_memory[4]), .A2(n101), .ZN(n105) );
  OAI21_X1 U54 ( .B1(n273), .B2(n19), .A(n104), .ZN(n170) );
  NAND2_X1 U55 ( .A1(register_memory[5]), .A2(n101), .ZN(n104) );
  OAI21_X1 U56 ( .B1(n273), .B2(n17), .A(n103), .ZN(n169) );
  NAND2_X1 U57 ( .A1(register_memory[6]), .A2(n101), .ZN(n103) );
  OAI21_X1 U58 ( .B1(n273), .B2(n14), .A(n100), .ZN(n168) );
  NAND2_X1 U59 ( .A1(register_memory[7]), .A2(n101), .ZN(n100) );
  OAI21_X1 U60 ( .B1(n274), .B2(n29), .A(n97), .ZN(n167) );
  NAND2_X1 U61 ( .A1(register_memory[8]), .A2(n90), .ZN(n97) );
  OAI21_X1 U62 ( .B1(n274), .B2(n27), .A(n96), .ZN(n166) );
  NAND2_X1 U63 ( .A1(register_memory[9]), .A2(n90), .ZN(n96) );
  OAI21_X1 U64 ( .B1(n274), .B2(n25), .A(n95), .ZN(n165) );
  NAND2_X1 U65 ( .A1(register_memory[10]), .A2(n90), .ZN(n95) );
  OAI21_X1 U66 ( .B1(n274), .B2(n23), .A(n94), .ZN(n164) );
  NAND2_X1 U67 ( .A1(register_memory[11]), .A2(n90), .ZN(n94) );
  OAI21_X1 U68 ( .B1(n274), .B2(n21), .A(n93), .ZN(n163) );
  NAND2_X1 U69 ( .A1(register_memory[12]), .A2(n90), .ZN(n93) );
  OAI21_X1 U70 ( .B1(n274), .B2(n19), .A(n92), .ZN(n162) );
  NAND2_X1 U71 ( .A1(register_memory[13]), .A2(n90), .ZN(n92) );
  OAI21_X1 U72 ( .B1(n274), .B2(n17), .A(n91), .ZN(n161) );
  NAND2_X1 U73 ( .A1(register_memory[14]), .A2(n90), .ZN(n91) );
  OAI21_X1 U74 ( .B1(n274), .B2(n14), .A(n89), .ZN(n160) );
  NAND2_X1 U75 ( .A1(register_memory[15]), .A2(n90), .ZN(n89) );
  OAI21_X1 U76 ( .B1(n275), .B2(n29), .A(n86), .ZN(n159) );
  NAND2_X1 U77 ( .A1(register_memory[16]), .A2(n79), .ZN(n86) );
  OAI21_X1 U78 ( .B1(n275), .B2(n27), .A(n85), .ZN(n158) );
  NAND2_X1 U79 ( .A1(register_memory[17]), .A2(n79), .ZN(n85) );
  OAI21_X1 U80 ( .B1(n275), .B2(n25), .A(n84), .ZN(n157) );
  NAND2_X1 U81 ( .A1(register_memory[18]), .A2(n79), .ZN(n84) );
  OAI21_X1 U82 ( .B1(n275), .B2(n23), .A(n83), .ZN(n156) );
  NAND2_X1 U83 ( .A1(register_memory[19]), .A2(n79), .ZN(n83) );
  OAI21_X1 U84 ( .B1(n275), .B2(n21), .A(n82), .ZN(n155) );
  NAND2_X1 U85 ( .A1(register_memory[20]), .A2(n79), .ZN(n82) );
  OAI21_X1 U86 ( .B1(n275), .B2(n19), .A(n81), .ZN(n154) );
  NAND2_X1 U87 ( .A1(register_memory[21]), .A2(n79), .ZN(n81) );
  OAI21_X1 U88 ( .B1(n275), .B2(n17), .A(n80), .ZN(n153) );
  NAND2_X1 U89 ( .A1(register_memory[22]), .A2(n79), .ZN(n80) );
  OAI21_X1 U90 ( .B1(n275), .B2(n14), .A(n78), .ZN(n152) );
  NAND2_X1 U91 ( .A1(register_memory[23]), .A2(n79), .ZN(n78) );
  OAI21_X1 U92 ( .B1(n276), .B2(n29), .A(n75), .ZN(n151) );
  NAND2_X1 U93 ( .A1(register_memory[24]), .A2(n68), .ZN(n75) );
  OAI21_X1 U94 ( .B1(n276), .B2(n27), .A(n74), .ZN(n150) );
  NAND2_X1 U95 ( .A1(register_memory[25]), .A2(n68), .ZN(n74) );
  OAI21_X1 U96 ( .B1(n276), .B2(n25), .A(n73), .ZN(n149) );
  NAND2_X1 U97 ( .A1(register_memory[26]), .A2(n68), .ZN(n73) );
  OAI21_X1 U98 ( .B1(n276), .B2(n23), .A(n72), .ZN(n148) );
  NAND2_X1 U99 ( .A1(register_memory[27]), .A2(n68), .ZN(n72) );
  OAI21_X1 U100 ( .B1(n276), .B2(n21), .A(n71), .ZN(n147) );
  NAND2_X1 U101 ( .A1(register_memory[28]), .A2(n68), .ZN(n71) );
  OAI21_X1 U102 ( .B1(n276), .B2(n19), .A(n70), .ZN(n146) );
  NAND2_X1 U103 ( .A1(register_memory[29]), .A2(n68), .ZN(n70) );
  OAI21_X1 U104 ( .B1(n276), .B2(n17), .A(n69), .ZN(n145) );
  NAND2_X1 U105 ( .A1(register_memory[30]), .A2(n68), .ZN(n69) );
  OAI21_X1 U106 ( .B1(n276), .B2(n14), .A(n67), .ZN(n144) );
  NAND2_X1 U107 ( .A1(register_memory[31]), .A2(n68), .ZN(n67) );
  OAI21_X1 U108 ( .B1(n281), .B2(n29), .A(n64), .ZN(n143) );
  NAND2_X1 U109 ( .A1(register_memory[32]), .A2(n57), .ZN(n64) );
  OAI21_X1 U110 ( .B1(n281), .B2(n27), .A(n63), .ZN(n142) );
  NAND2_X1 U111 ( .A1(register_memory[33]), .A2(n57), .ZN(n63) );
  OAI21_X1 U112 ( .B1(n281), .B2(n25), .A(n62), .ZN(n141) );
  NAND2_X1 U113 ( .A1(register_memory[34]), .A2(n57), .ZN(n62) );
  OAI21_X1 U114 ( .B1(n281), .B2(n23), .A(n61), .ZN(n140) );
  NAND2_X1 U115 ( .A1(register_memory[35]), .A2(n57), .ZN(n61) );
  OAI21_X1 U116 ( .B1(n281), .B2(n21), .A(n60), .ZN(n139) );
  NAND2_X1 U117 ( .A1(register_memory[36]), .A2(n57), .ZN(n60) );
  OAI21_X1 U118 ( .B1(n281), .B2(n19), .A(n59), .ZN(n138) );
  NAND2_X1 U119 ( .A1(register_memory[37]), .A2(n57), .ZN(n59) );
  OAI21_X1 U120 ( .B1(n281), .B2(n17), .A(n58), .ZN(n137) );
  NAND2_X1 U121 ( .A1(register_memory[38]), .A2(n57), .ZN(n58) );
  OAI21_X1 U122 ( .B1(n281), .B2(n14), .A(n56), .ZN(n136) );
  NAND2_X1 U123 ( .A1(register_memory[39]), .A2(n57), .ZN(n56) );
  OAI21_X1 U124 ( .B1(n280), .B2(n29), .A(n53), .ZN(n135) );
  NAND2_X1 U125 ( .A1(register_memory[40]), .A2(n46), .ZN(n53) );
  OAI21_X1 U126 ( .B1(n280), .B2(n27), .A(n52), .ZN(n134) );
  NAND2_X1 U127 ( .A1(register_memory[41]), .A2(n46), .ZN(n52) );
  OAI21_X1 U128 ( .B1(n280), .B2(n25), .A(n51), .ZN(n133) );
  NAND2_X1 U129 ( .A1(register_memory[42]), .A2(n46), .ZN(n51) );
  OAI21_X1 U130 ( .B1(n280), .B2(n23), .A(n50), .ZN(n132) );
  NAND2_X1 U131 ( .A1(register_memory[43]), .A2(n46), .ZN(n50) );
  OAI21_X1 U132 ( .B1(n280), .B2(n21), .A(n49), .ZN(n131) );
  NAND2_X1 U133 ( .A1(register_memory[44]), .A2(n46), .ZN(n49) );
  OAI21_X1 U134 ( .B1(n280), .B2(n19), .A(n48), .ZN(n130) );
  NAND2_X1 U135 ( .A1(register_memory[45]), .A2(n46), .ZN(n48) );
  OAI21_X1 U136 ( .B1(n280), .B2(n17), .A(n47), .ZN(n129) );
  NAND2_X1 U137 ( .A1(register_memory[46]), .A2(n46), .ZN(n47) );
  OAI21_X1 U138 ( .B1(n280), .B2(n14), .A(n45), .ZN(n128) );
  NAND2_X1 U139 ( .A1(register_memory[47]), .A2(n46), .ZN(n45) );
  OAI21_X1 U140 ( .B1(n279), .B2(n29), .A(n42), .ZN(n127) );
  NAND2_X1 U141 ( .A1(register_memory[48]), .A2(n35), .ZN(n42) );
  OAI21_X1 U142 ( .B1(n279), .B2(n27), .A(n41), .ZN(n126) );
  NAND2_X1 U143 ( .A1(register_memory[49]), .A2(n35), .ZN(n41) );
  OAI21_X1 U144 ( .B1(n279), .B2(n25), .A(n40), .ZN(n125) );
  NAND2_X1 U145 ( .A1(register_memory[50]), .A2(n35), .ZN(n40) );
  OAI21_X1 U146 ( .B1(n279), .B2(n23), .A(n39), .ZN(n124) );
  NAND2_X1 U147 ( .A1(register_memory[51]), .A2(n35), .ZN(n39) );
  OAI21_X1 U148 ( .B1(n279), .B2(n21), .A(n38), .ZN(n123) );
  NAND2_X1 U149 ( .A1(register_memory[52]), .A2(n35), .ZN(n38) );
  OAI21_X1 U150 ( .B1(n279), .B2(n19), .A(n37), .ZN(n122) );
  NAND2_X1 U151 ( .A1(register_memory[53]), .A2(n35), .ZN(n37) );
  OAI21_X1 U152 ( .B1(n279), .B2(n17), .A(n36), .ZN(n121) );
  NAND2_X1 U153 ( .A1(register_memory[54]), .A2(n35), .ZN(n36) );
  OAI21_X1 U154 ( .B1(n279), .B2(n14), .A(n34), .ZN(n120) );
  NAND2_X1 U155 ( .A1(register_memory[55]), .A2(n35), .ZN(n34) );
  OAI21_X1 U156 ( .B1(n278), .B2(n29), .A(n30), .ZN(n119) );
  NAND2_X1 U157 ( .A1(register_memory[56]), .A2(n16), .ZN(n30) );
  OAI21_X1 U158 ( .B1(n278), .B2(n27), .A(n28), .ZN(n118) );
  NAND2_X1 U159 ( .A1(register_memory[57]), .A2(n16), .ZN(n28) );
  OAI21_X1 U160 ( .B1(n278), .B2(n25), .A(n26), .ZN(n117) );
  NAND2_X1 U161 ( .A1(register_memory[58]), .A2(n16), .ZN(n26) );
  OAI21_X1 U162 ( .B1(n278), .B2(n23), .A(n24), .ZN(n116) );
  NAND2_X1 U163 ( .A1(register_memory[59]), .A2(n16), .ZN(n24) );
  OAI21_X1 U164 ( .B1(n278), .B2(n21), .A(n22), .ZN(n115) );
  NAND2_X1 U165 ( .A1(register_memory[60]), .A2(n16), .ZN(n22) );
  OAI21_X1 U166 ( .B1(n278), .B2(n19), .A(n20), .ZN(n114) );
  NAND2_X1 U167 ( .A1(register_memory[61]), .A2(n16), .ZN(n20) );
  OAI21_X1 U168 ( .B1(n278), .B2(n17), .A(n18), .ZN(n113) );
  NAND2_X1 U169 ( .A1(register_memory[62]), .A2(n16), .ZN(n18) );
  OAI21_X1 U178 ( .B1(n278), .B2(n14), .A(n15), .ZN(n112) );
  NAND2_X1 U179 ( .A1(register_memory[63]), .A2(n16), .ZN(n15) );
  NAND2_X1 U180 ( .A1(n99), .A2(n285), .ZN(n98) );
  NAND2_X1 U181 ( .A1(n88), .A2(n285), .ZN(n87) );
  NAND2_X1 U182 ( .A1(n77), .A2(n285), .ZN(n76) );
  NAND2_X1 U183 ( .A1(n66), .A2(n285), .ZN(n65) );
  NAND2_X1 U184 ( .A1(n55), .A2(n285), .ZN(n54) );
  NAND2_X1 U185 ( .A1(n44), .A2(n285), .ZN(n43) );
  NAND2_X1 U186 ( .A1(n33), .A2(n285), .ZN(n32) );
  INV_X1 U187 ( .A(write_address[2]), .ZN(n277) );
  INV_X1 U188 ( .A(write_address[1]), .ZN(n282) );
  INV_X1 U189 ( .A(write_address[0]), .ZN(n283) );
  INV_X1 U190 ( .A(regwrite), .ZN(n284) );
  INV_X1 U191 ( .A(n2), .ZN(n202) );
  INV_X1 U192 ( .A(n1), .ZN(n210) );
  INV_X1 U193 ( .A(n6), .ZN(n203) );
  INV_X1 U194 ( .A(n5), .ZN(n211) );
  INV_X1 U195 ( .A(n9), .ZN(n212) );
  INV_X1 U196 ( .A(n176), .ZN(n205) );
  INV_X1 U197 ( .A(n13), .ZN(n213) );
  INV_X1 U198 ( .A(n180), .ZN(n206) );
  INV_X1 U199 ( .A(n179), .ZN(n214) );
  INV_X1 U200 ( .A(n184), .ZN(n207) );
  INV_X1 U201 ( .A(n183), .ZN(n215) );
  INV_X1 U202 ( .A(n188), .ZN(n208) );
  INV_X1 U203 ( .A(n187), .ZN(n216) );
  INV_X1 U204 ( .A(n194), .ZN(n209) );
  INV_X1 U205 ( .A(n191), .ZN(n217) );
  INV_X1 U206 ( .A(n219), .ZN(n257) );
  INV_X1 U207 ( .A(n218), .ZN(n265) );
  INV_X1 U208 ( .A(n223), .ZN(n258) );
  INV_X1 U209 ( .A(n222), .ZN(n266) );
  INV_X1 U210 ( .A(n227), .ZN(n259) );
  INV_X1 U211 ( .A(n226), .ZN(n267) );
  INV_X1 U212 ( .A(n231), .ZN(n260) );
  INV_X1 U213 ( .A(n230), .ZN(n268) );
  INV_X1 U214 ( .A(n235), .ZN(n261) );
  INV_X1 U215 ( .A(n234), .ZN(n269) );
  INV_X1 U216 ( .A(n239), .ZN(n262) );
  INV_X1 U217 ( .A(n238), .ZN(n270) );
  INV_X1 U218 ( .A(n243), .ZN(n263) );
  INV_X1 U219 ( .A(n242), .ZN(n271) );
  INV_X1 U220 ( .A(n249), .ZN(n264) );
  INV_X1 U221 ( .A(n246), .ZN(n272) );
  INV_X1 U222 ( .A(rd[0]), .ZN(n199) );
  INV_X1 U223 ( .A(rs[0]), .ZN(n254) );
  AOI22_X1 U224 ( .A1(register_memory[8]), .A2(n193), .B1(register_memory[24]), 
        .B2(n192), .ZN(n1) );
  AOI221_X1 U225 ( .B1(register_memory[40]), .B2(n196), .C1(
        register_memory[56]), .C2(n195), .A(n210), .ZN(n4) );
  AOI22_X1 U226 ( .A1(register_memory[0]), .A2(n193), .B1(register_memory[16]), 
        .B2(n192), .ZN(n2) );
  AOI221_X1 U227 ( .B1(register_memory[32]), .B2(n196), .C1(
        register_memory[48]), .C2(n195), .A(n202), .ZN(n3) );
  OAI22_X1 U228 ( .A1(n199), .A2(n4), .B1(rd[0]), .B2(n3), .ZN(read_data_1[0])
         );
  AOI22_X1 U229 ( .A1(register_memory[9]), .A2(n193), .B1(register_memory[25]), 
        .B2(n192), .ZN(n5) );
  AOI221_X1 U230 ( .B1(register_memory[41]), .B2(n196), .C1(
        register_memory[57]), .C2(n195), .A(n211), .ZN(n8) );
  AOI22_X1 U231 ( .A1(register_memory[1]), .A2(n193), .B1(register_memory[17]), 
        .B2(n192), .ZN(n6) );
  AOI221_X1 U232 ( .B1(register_memory[33]), .B2(n196), .C1(
        register_memory[49]), .C2(n195), .A(n203), .ZN(n7) );
  OAI22_X1 U233 ( .A1(n199), .A2(n8), .B1(rd[0]), .B2(n7), .ZN(read_data_1[1])
         );
  AOI22_X1 U234 ( .A1(register_memory[10]), .A2(n193), .B1(register_memory[26]), .B2(n192), .ZN(n9) );
  AOI221_X1 U235 ( .B1(register_memory[42]), .B2(n196), .C1(
        register_memory[58]), .C2(n195), .A(n212), .ZN(n12) );
  AOI22_X1 U236 ( .A1(register_memory[2]), .A2(n193), .B1(register_memory[18]), 
        .B2(n192), .ZN(n10) );
  AOI221_X1 U237 ( .B1(register_memory[34]), .B2(n196), .C1(
        register_memory[50]), .C2(n195), .A(n204), .ZN(n11) );
  OAI22_X1 U238 ( .A1(n199), .A2(n12), .B1(rd[0]), .B2(n11), .ZN(
        read_data_1[2]) );
  AOI22_X1 U239 ( .A1(register_memory[11]), .A2(n193), .B1(register_memory[27]), .B2(n192), .ZN(n13) );
  AOI221_X1 U240 ( .B1(register_memory[43]), .B2(n196), .C1(
        register_memory[59]), .C2(n195), .A(n213), .ZN(n178) );
  AOI22_X1 U241 ( .A1(register_memory[3]), .A2(n193), .B1(register_memory[19]), 
        .B2(n192), .ZN(n176) );
  AOI221_X1 U242 ( .B1(register_memory[35]), .B2(n196), .C1(
        register_memory[51]), .C2(n195), .A(n205), .ZN(n177) );
  OAI22_X1 U243 ( .A1(n199), .A2(n178), .B1(rd[0]), .B2(n177), .ZN(
        read_data_1[3]) );
  AOI22_X1 U244 ( .A1(register_memory[12]), .A2(n193), .B1(register_memory[28]), .B2(n192), .ZN(n179) );
  AOI221_X1 U245 ( .B1(register_memory[44]), .B2(n196), .C1(
        register_memory[60]), .C2(n195), .A(n214), .ZN(n182) );
  AOI22_X1 U246 ( .A1(register_memory[4]), .A2(n193), .B1(register_memory[20]), 
        .B2(n192), .ZN(n180) );
  AOI221_X1 U247 ( .B1(register_memory[36]), .B2(n196), .C1(
        register_memory[52]), .C2(n195), .A(n206), .ZN(n181) );
  OAI22_X1 U248 ( .A1(n199), .A2(n182), .B1(rd[0]), .B2(n181), .ZN(
        read_data_1[4]) );
  AOI22_X1 U249 ( .A1(register_memory[13]), .A2(n193), .B1(register_memory[29]), .B2(n192), .ZN(n183) );
  AOI221_X1 U250 ( .B1(register_memory[45]), .B2(n196), .C1(
        register_memory[61]), .C2(n195), .A(n215), .ZN(n186) );
  AOI22_X1 U251 ( .A1(register_memory[5]), .A2(n193), .B1(register_memory[21]), 
        .B2(n192), .ZN(n184) );
  AOI221_X1 U252 ( .B1(register_memory[37]), .B2(n196), .C1(
        register_memory[53]), .C2(n195), .A(n207), .ZN(n185) );
  OAI22_X1 U253 ( .A1(n199), .A2(n186), .B1(rd[0]), .B2(n185), .ZN(
        read_data_1[5]) );
  AOI22_X1 U254 ( .A1(register_memory[14]), .A2(n193), .B1(register_memory[30]), .B2(n192), .ZN(n187) );
  AOI221_X1 U255 ( .B1(register_memory[46]), .B2(n196), .C1(
        register_memory[62]), .C2(n195), .A(n216), .ZN(n190) );
  AOI22_X1 U256 ( .A1(register_memory[6]), .A2(n193), .B1(register_memory[22]), 
        .B2(n192), .ZN(n188) );
  AOI221_X1 U257 ( .B1(register_memory[38]), .B2(n196), .C1(
        register_memory[54]), .C2(n195), .A(n208), .ZN(n189) );
  OAI22_X1 U258 ( .A1(n199), .A2(n190), .B1(rd[0]), .B2(n189), .ZN(
        read_data_1[6]) );
  AOI22_X1 U259 ( .A1(register_memory[15]), .A2(n193), .B1(register_memory[31]), .B2(n192), .ZN(n191) );
  AOI221_X1 U260 ( .B1(register_memory[47]), .B2(n196), .C1(
        register_memory[63]), .C2(n195), .A(n217), .ZN(n198) );
  AOI22_X1 U261 ( .A1(register_memory[7]), .A2(n193), .B1(register_memory[23]), 
        .B2(n192), .ZN(n194) );
  AOI221_X1 U262 ( .B1(register_memory[39]), .B2(n196), .C1(
        register_memory[55]), .C2(n195), .A(n209), .ZN(n197) );
  OAI22_X1 U263 ( .A1(n198), .A2(n199), .B1(rd[0]), .B2(n197), .ZN(
        read_data_1[7]) );
  AOI22_X1 U264 ( .A1(register_memory[8]), .A2(n248), .B1(register_memory[24]), 
        .B2(n247), .ZN(n218) );
  AOI221_X1 U265 ( .B1(register_memory[40]), .B2(n251), .C1(
        register_memory[56]), .C2(n250), .A(n265), .ZN(n221) );
  AOI22_X1 U266 ( .A1(register_memory[0]), .A2(n248), .B1(register_memory[16]), 
        .B2(n247), .ZN(n219) );
  AOI221_X1 U267 ( .B1(register_memory[32]), .B2(n251), .C1(
        register_memory[48]), .C2(n250), .A(n257), .ZN(n220) );
  OAI22_X1 U268 ( .A1(n254), .A2(n221), .B1(rs[0]), .B2(n220), .ZN(
        read_data_2[0]) );
  AOI22_X1 U269 ( .A1(register_memory[9]), .A2(n248), .B1(register_memory[25]), 
        .B2(n247), .ZN(n222) );
  AOI221_X1 U270 ( .B1(register_memory[41]), .B2(n251), .C1(
        register_memory[57]), .C2(n250), .A(n266), .ZN(n225) );
  AOI22_X1 U271 ( .A1(register_memory[1]), .A2(n248), .B1(register_memory[17]), 
        .B2(n247), .ZN(n223) );
  AOI221_X1 U272 ( .B1(register_memory[33]), .B2(n251), .C1(
        register_memory[49]), .C2(n250), .A(n258), .ZN(n224) );
  OAI22_X1 U273 ( .A1(n254), .A2(n225), .B1(rs[0]), .B2(n224), .ZN(
        read_data_2[1]) );
  AOI22_X1 U274 ( .A1(register_memory[10]), .A2(n248), .B1(register_memory[26]), .B2(n247), .ZN(n226) );
  AOI221_X1 U275 ( .B1(register_memory[42]), .B2(n251), .C1(
        register_memory[58]), .C2(n250), .A(n267), .ZN(n229) );
  AOI22_X1 U276 ( .A1(register_memory[2]), .A2(n248), .B1(register_memory[18]), 
        .B2(n247), .ZN(n227) );
  AOI221_X1 U277 ( .B1(register_memory[34]), .B2(n251), .C1(
        register_memory[50]), .C2(n250), .A(n259), .ZN(n228) );
  OAI22_X1 U278 ( .A1(n254), .A2(n229), .B1(rs[0]), .B2(n228), .ZN(
        read_data_2[2]) );
  AOI22_X1 U279 ( .A1(register_memory[11]), .A2(n248), .B1(register_memory[27]), .B2(n247), .ZN(n230) );
  AOI221_X1 U280 ( .B1(register_memory[43]), .B2(n251), .C1(
        register_memory[59]), .C2(n250), .A(n268), .ZN(n233) );
  AOI22_X1 U281 ( .A1(register_memory[3]), .A2(n248), .B1(register_memory[19]), 
        .B2(n247), .ZN(n231) );
  AOI221_X1 U282 ( .B1(register_memory[35]), .B2(n251), .C1(
        register_memory[51]), .C2(n250), .A(n260), .ZN(n232) );
  OAI22_X1 U283 ( .A1(n254), .A2(n233), .B1(rs[0]), .B2(n232), .ZN(
        read_data_2[3]) );
  AOI22_X1 U284 ( .A1(register_memory[12]), .A2(n248), .B1(register_memory[28]), .B2(n247), .ZN(n234) );
  AOI221_X1 U285 ( .B1(register_memory[44]), .B2(n251), .C1(
        register_memory[60]), .C2(n250), .A(n269), .ZN(n237) );
  AOI22_X1 U286 ( .A1(register_memory[4]), .A2(n248), .B1(register_memory[20]), 
        .B2(n247), .ZN(n235) );
  AOI221_X1 U287 ( .B1(register_memory[36]), .B2(n251), .C1(
        register_memory[52]), .C2(n250), .A(n261), .ZN(n236) );
  OAI22_X1 U288 ( .A1(n254), .A2(n237), .B1(rs[0]), .B2(n236), .ZN(
        read_data_2[4]) );
  AOI22_X1 U289 ( .A1(register_memory[13]), .A2(n248), .B1(register_memory[29]), .B2(n247), .ZN(n238) );
  AOI221_X1 U290 ( .B1(register_memory[45]), .B2(n251), .C1(
        register_memory[61]), .C2(n250), .A(n270), .ZN(n241) );
  AOI22_X1 U291 ( .A1(register_memory[5]), .A2(n248), .B1(register_memory[21]), 
        .B2(n247), .ZN(n239) );
  AOI221_X1 U292 ( .B1(register_memory[37]), .B2(n251), .C1(
        register_memory[53]), .C2(n250), .A(n262), .ZN(n240) );
  OAI22_X1 U293 ( .A1(n254), .A2(n241), .B1(rs[0]), .B2(n240), .ZN(
        read_data_2[5]) );
  AOI22_X1 U294 ( .A1(register_memory[14]), .A2(n248), .B1(register_memory[30]), .B2(n247), .ZN(n242) );
  AOI221_X1 U295 ( .B1(register_memory[46]), .B2(n251), .C1(
        register_memory[62]), .C2(n250), .A(n271), .ZN(n245) );
  AOI22_X1 U296 ( .A1(register_memory[6]), .A2(n248), .B1(register_memory[22]), 
        .B2(n247), .ZN(n243) );
  AOI221_X1 U297 ( .B1(register_memory[38]), .B2(n251), .C1(
        register_memory[54]), .C2(n250), .A(n263), .ZN(n244) );
  OAI22_X1 U298 ( .A1(n254), .A2(n245), .B1(rs[0]), .B2(n244), .ZN(
        read_data_2[6]) );
  AOI22_X1 U299 ( .A1(register_memory[15]), .A2(n248), .B1(register_memory[31]), .B2(n247), .ZN(n246) );
  AOI221_X1 U300 ( .B1(register_memory[47]), .B2(n251), .C1(
        register_memory[63]), .C2(n250), .A(n272), .ZN(n253) );
  AOI22_X1 U301 ( .A1(register_memory[7]), .A2(n248), .B1(register_memory[23]), 
        .B2(n247), .ZN(n249) );
  AOI221_X1 U302 ( .B1(register_memory[39]), .B2(n251), .C1(
        register_memory[55]), .C2(n250), .A(n264), .ZN(n252) );
  OAI22_X1 U303 ( .A1(n253), .A2(n254), .B1(rs[0]), .B2(n252), .ZN(
        read_data_2[7]) );
  AND2_X1 U14 ( .A1(rs[2]), .A2(rs[1]), .ZN(n250) );
  AND2_X1 U15 ( .A1(rd[2]), .A2(rd[1]), .ZN(n195) );
endmodule


module control ( regwrite, mem_read, mem_write, mem_to_reg, alu_src, 
        instruction, rst );
  input [4:0] instruction;
  input rst;
  output regwrite, mem_read, mem_write, mem_to_reg, alu_src;
  wire   n5, n6, n7, n8, n9, n2, n3, n4, n10;

  NOR4_X1 U3 ( .A1(instruction[0]), .A2(n6), .A3(n3), .A4(n7), .ZN(mem_write)
         );
  AOI21_X1 U4 ( .B1(n5), .B2(n2), .A(rst), .ZN(regwrite) );
  INV_X1 U5 ( .A(instruction[4]), .ZN(n2) );
  OAI21_X1 U6 ( .B1(instruction[0]), .B2(n6), .A(instruction[3]), .ZN(n5) );
  NOR2_X1 U7 ( .A1(n9), .A2(n7), .ZN(alu_src) );
  NOR4_X1 U8 ( .A1(instruction[3]), .A2(instruction[1]), .A3(n4), .A4(n10), 
        .ZN(n9) );
  NOR3_X1 U9 ( .A1(n8), .A2(n7), .A3(n10), .ZN(mem_read) );
  OR3_X1 U10 ( .A1(n4), .A2(instruction[1]), .A3(n3), .ZN(n8) );
  OR2_X1 U11 ( .A1(instruction[4]), .A2(rst), .ZN(n7) );
  NAND2_X1 U12 ( .A1(instruction[2]), .A2(instruction[1]), .ZN(n6) );
  INV_X1 U13 ( .A(instruction[0]), .ZN(n10) );
  INV_X1 U14 ( .A(instruction[3]), .ZN(n3) );
  INV_X1 U15 ( .A(instruction[2]), .ZN(n4) );
  CLKBUF_X1 U16 ( .A(mem_read), .Z(mem_to_reg) );
endmodule


module idex ( regwrite_idex_output, mem_read_idex_output, 
        mem_write_idex_output, mem_to_reg_idex_output, alu_src_idex_output, 
        read_data_1_idex_output, read_data_2_idex_output, 
        instruction_idex_output, regwrite_idex_input, mem_read_idex_input, 
        mem_write_idex_input, mem_to_reg_idex_input, alu_src_idex_input, 
        read_data_1_idex_input, read_data_2_idex_input, instruction_idex_input, 
        rst, clk );
  output [7:0] read_data_1_idex_output;
  output [7:0] read_data_2_idex_output;
  output [15:0] instruction_idex_output;
  input [7:0] read_data_1_idex_input;
  input [7:0] read_data_2_idex_input;
  input [15:0] instruction_idex_input;
  input regwrite_idex_input, mem_read_idex_input, mem_write_idex_input,
         mem_to_reg_idex_input, alu_src_idex_input, rst, clk;
  output regwrite_idex_output, mem_read_idex_output, mem_write_idex_output,
         mem_to_reg_idex_output, alu_src_idex_output;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, n1, n6;

  DFF_X1 read_data_2_idex_output_reg_7_ ( .D(N23), .CK(clk), .Q(
        read_data_2_idex_output[7]) );
  DFF_X1 read_data_2_idex_output_reg_6_ ( .D(N22), .CK(clk), .Q(
        read_data_2_idex_output[6]) );
  DFF_X1 read_data_2_idex_output_reg_5_ ( .D(N21), .CK(clk), .Q(
        read_data_2_idex_output[5]) );
  DFF_X1 read_data_2_idex_output_reg_4_ ( .D(N20), .CK(clk), .Q(
        read_data_2_idex_output[4]) );
  DFF_X1 read_data_2_idex_output_reg_3_ ( .D(N19), .CK(clk), .Q(
        read_data_2_idex_output[3]) );
  DFF_X1 read_data_2_idex_output_reg_2_ ( .D(N18), .CK(clk), .Q(
        read_data_2_idex_output[2]) );
  DFF_X1 read_data_2_idex_output_reg_1_ ( .D(N17), .CK(clk), .Q(
        read_data_2_idex_output[1]) );
  DFF_X1 read_data_2_idex_output_reg_0_ ( .D(N16), .CK(clk), .Q(
        read_data_2_idex_output[0]) );
  DFF_X1 instruction_idex_output_reg_15_ ( .D(N39), .CK(clk), .Q(
        instruction_idex_output[15]) );
  DFF_X1 instruction_idex_output_reg_14_ ( .D(N38), .CK(clk), .Q(
        instruction_idex_output[14]) );
  DFF_X1 instruction_idex_output_reg_13_ ( .D(N37), .CK(clk), .Q(
        instruction_idex_output[13]) );
  DFF_X1 instruction_idex_output_reg_12_ ( .D(N36), .CK(clk), .Q(
        instruction_idex_output[12]) );
  DFF_X1 instruction_idex_output_reg_11_ ( .D(N35), .CK(clk), .Q(
        instruction_idex_output[11]) );
  DFF_X1 instruction_idex_output_reg_10_ ( .D(N34), .CK(clk), .Q(
        instruction_idex_output[10]) );
  DFF_X1 instruction_idex_output_reg_9_ ( .D(N33), .CK(clk), .Q(
        instruction_idex_output[9]) );
  DFF_X1 instruction_idex_output_reg_8_ ( .D(N32), .CK(clk), .Q(
        instruction_idex_output[8]) );
  DFF_X1 instruction_idex_output_reg_7_ ( .D(N31), .CK(clk), .Q(
        instruction_idex_output[7]) );
  DFF_X1 instruction_idex_output_reg_6_ ( .D(N30), .CK(clk), .Q(
        instruction_idex_output[6]) );
  DFF_X1 instruction_idex_output_reg_5_ ( .D(N29), .CK(clk), .Q(
        instruction_idex_output[5]) );
  DFF_X1 instruction_idex_output_reg_4_ ( .D(N28), .CK(clk), .Q(
        instruction_idex_output[4]) );
  DFF_X1 instruction_idex_output_reg_3_ ( .D(N27), .CK(clk), .Q(
        instruction_idex_output[3]) );
  DFF_X1 instruction_idex_output_reg_2_ ( .D(N26), .CK(clk), .Q(
        instruction_idex_output[2]) );
  DFF_X1 instruction_idex_output_reg_1_ ( .D(N25), .CK(clk), .Q(
        instruction_idex_output[1]) );
  DFF_X1 instruction_idex_output_reg_0_ ( .D(N24), .CK(clk), .Q(
        instruction_idex_output[0]) );
  DFF_X1 regwrite_idex_output_reg ( .D(N3), .CK(clk), .Q(regwrite_idex_output)
         );
  DFF_X1 mem_read_idex_output_reg ( .D(N4), .CK(clk), .Q(mem_read_idex_output)
         );
  DFF_X1 mem_write_idex_output_reg ( .D(N5), .CK(clk), .Q(
        mem_write_idex_output) );
  DFF_X1 mem_to_reg_idex_output_reg ( .D(N6), .CK(clk), .Q(
        mem_to_reg_idex_output) );
  DFF_X1 alu_src_idex_output_reg ( .D(N7), .CK(clk), .Q(alu_src_idex_output)
         );
  DFF_X1 read_data_1_idex_output_reg_7_ ( .D(N15), .CK(clk), .Q(
        read_data_1_idex_output[7]) );
  DFF_X1 read_data_1_idex_output_reg_6_ ( .D(N14), .CK(clk), .Q(
        read_data_1_idex_output[6]) );
  DFF_X1 read_data_1_idex_output_reg_5_ ( .D(N13), .CK(clk), .Q(
        read_data_1_idex_output[5]) );
  DFF_X1 read_data_1_idex_output_reg_4_ ( .D(N12), .CK(clk), .Q(
        read_data_1_idex_output[4]) );
  DFF_X1 read_data_1_idex_output_reg_3_ ( .D(N11), .CK(clk), .Q(
        read_data_1_idex_output[3]) );
  DFF_X1 read_data_1_idex_output_reg_2_ ( .D(N10), .CK(clk), .Q(
        read_data_1_idex_output[2]) );
  DFF_X1 read_data_1_idex_output_reg_1_ ( .D(N9), .CK(clk), .Q(
        read_data_1_idex_output[1]) );
  DFF_X1 read_data_1_idex_output_reg_0_ ( .D(N8), .CK(clk), .Q(
        read_data_1_idex_output[0]) );
  AND2_X1 U6 ( .A1(mem_read_idex_input), .A2(n1), .ZN(N4) );
  AND2_X1 U7 ( .A1(mem_to_reg_idex_input), .A2(n1), .ZN(N6) );
  CLKBUF_X1 U8 ( .A(n6), .Z(n1) );
  AND2_X1 U11 ( .A1(instruction_idex_input[5]), .A2(n6), .ZN(N29) );
  AND2_X1 U12 ( .A1(instruction_idex_input[8]), .A2(n6), .ZN(N32) );
  AND2_X1 U13 ( .A1(instruction_idex_input[6]), .A2(n6), .ZN(N30) );
  AND2_X1 U14 ( .A1(instruction_idex_input[9]), .A2(n6), .ZN(N33) );
  AND2_X1 U15 ( .A1(instruction_idex_input[7]), .A2(n6), .ZN(N31) );
  AND2_X1 U16 ( .A1(instruction_idex_input[10]), .A2(n1), .ZN(N34) );
  AND2_X1 U17 ( .A1(instruction_idex_input[12]), .A2(n1), .ZN(N36) );
  AND2_X1 U18 ( .A1(instruction_idex_input[14]), .A2(n1), .ZN(N38) );
  AND2_X1 U19 ( .A1(instruction_idex_input[11]), .A2(n1), .ZN(N35) );
  AND2_X1 U20 ( .A1(mem_write_idex_input), .A2(n1), .ZN(N5) );
  AND2_X1 U21 ( .A1(read_data_1_idex_input[0]), .A2(n1), .ZN(N8) );
  AND2_X1 U22 ( .A1(read_data_1_idex_input[1]), .A2(n1), .ZN(N9) );
  AND2_X1 U23 ( .A1(read_data_1_idex_input[2]), .A2(n1), .ZN(N10) );
  AND2_X1 U24 ( .A1(read_data_1_idex_input[3]), .A2(n6), .ZN(N11) );
  AND2_X1 U25 ( .A1(read_data_1_idex_input[4]), .A2(n6), .ZN(N12) );
  AND2_X1 U26 ( .A1(read_data_1_idex_input[5]), .A2(n6), .ZN(N13) );
  AND2_X1 U27 ( .A1(read_data_1_idex_input[6]), .A2(n6), .ZN(N14) );
  AND2_X1 U28 ( .A1(read_data_1_idex_input[7]), .A2(n6), .ZN(N15) );
  AND2_X1 U29 ( .A1(read_data_2_idex_input[0]), .A2(n6), .ZN(N16) );
  AND2_X1 U30 ( .A1(read_data_2_idex_input[1]), .A2(n6), .ZN(N17) );
  AND2_X1 U31 ( .A1(read_data_2_idex_input[2]), .A2(n6), .ZN(N18) );
  AND2_X1 U32 ( .A1(read_data_2_idex_input[3]), .A2(n6), .ZN(N19) );
  AND2_X1 U33 ( .A1(read_data_2_idex_input[4]), .A2(n6), .ZN(N20) );
  AND2_X1 U34 ( .A1(read_data_2_idex_input[5]), .A2(n6), .ZN(N21) );
  AND2_X1 U35 ( .A1(read_data_2_idex_input[6]), .A2(n6), .ZN(N22) );
  AND2_X1 U36 ( .A1(read_data_2_idex_input[7]), .A2(n6), .ZN(N23) );
  AND2_X1 U37 ( .A1(instruction_idex_input[13]), .A2(n1), .ZN(N37) );
  AND2_X1 U38 ( .A1(instruction_idex_input[15]), .A2(n1), .ZN(N39) );
  AND2_X1 U39 ( .A1(regwrite_idex_input), .A2(n6), .ZN(N3) );
  AND2_X1 U40 ( .A1(alu_src_idex_input), .A2(n1), .ZN(N7) );
  AND2_X1 U41 ( .A1(instruction_idex_input[0]), .A2(n6), .ZN(N24) );
  AND2_X1 U42 ( .A1(instruction_idex_input[1]), .A2(n6), .ZN(N25) );
  AND2_X1 U43 ( .A1(instruction_idex_input[2]), .A2(n6), .ZN(N26) );
  AND2_X1 U44 ( .A1(instruction_idex_input[3]), .A2(n6), .ZN(N27) );
  AND2_X1 U45 ( .A1(instruction_idex_input[4]), .A2(n6), .ZN(N28) );
  INV_X1 U3 ( .A(rst), .ZN(n6) );
endmodule


module id ( regwrite_out, mem_read, mem_write, mem_to_reg, alu_src, rd_data, 
        rs_data, instruction_output, instruction_input, rst, rst_registerfile, 
        regwrite, write_data, write_addr, clk );
  output [7:0] rd_data;
  output [7:0] rs_data;
  output [15:0] instruction_output;
  input [15:0] instruction_input;
  input [7:0] write_data;
  input [2:0] write_addr;
  input rst, rst_registerfile, regwrite, clk;
  output regwrite_out, mem_read, mem_write, mem_to_reg, alu_src;
  wire   regwrite_from_control, mem_read_from_control, mem_write_from_control,
         mem_to_reg_from_control, alu_src_from_control;
  wire   [15:0] instruction_from_ifid;
  wire   [7:0] rd;
  wire   [7:0] rs;

  ifid ifid1 ( .instruction_ifid_output(instruction_from_ifid), 
        .instruction_ifid_input(instruction_input), .rst(rst), .clk(clk) );
  registerfile registerfile1 ( .read_data_1(rd), .read_data_2(rs), .rd(
        instruction_from_ifid[10:8]), .rs(instruction_from_ifid[7:5]), 
        .write_address(write_addr), .write_data(write_data), .regwrite(
        regwrite), .clk(clk), .rst(rst_registerfile) );
  control control1 ( .regwrite(regwrite_from_control), .mem_read(
        mem_read_from_control), .mem_write(mem_write_from_control), 
        .mem_to_reg(mem_to_reg_from_control), .alu_src(alu_src_from_control), 
        .instruction(instruction_from_ifid[15:11]), .rst(rst) );
  idex idex1 ( .regwrite_idex_output(regwrite_out), .mem_read_idex_output(
        mem_read), .mem_write_idex_output(mem_write), .mem_to_reg_idex_output(
        mem_to_reg), .alu_src_idex_output(alu_src), .read_data_1_idex_output(
        rd_data), .read_data_2_idex_output(rs_data), .instruction_idex_output(
        instruction_output), .regwrite_idex_input(regwrite_from_control), 
        .mem_read_idex_input(mem_read_from_control), .mem_write_idex_input(
        mem_write_from_control), .mem_to_reg_idex_input(
        mem_to_reg_from_control), .alu_src_idex_input(alu_src_from_control), 
        .read_data_1_idex_input(rd), .read_data_2_idex_input(rs), 
        .instruction_idex_input(instruction_from_ifid), .rst(rst), .clk(clk)
         );
endmodule


module alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:1] carry;

  FA_X1 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .S(DIFF[7]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA_X1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA_X1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INV_X1 U2 ( .A(B[7]), .ZN(n2) );
  INV_X1 U3 ( .A(B[1]), .ZN(n8) );
  NAND2_X1 U4 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  INV_X1 U5 ( .A(A[0]), .ZN(n1) );
  INV_X1 U6 ( .A(B[2]), .ZN(n7) );
  INV_X1 U7 ( .A(B[3]), .ZN(n6) );
  INV_X1 U8 ( .A(B[4]), .ZN(n5) );
  INV_X1 U9 ( .A(B[5]), .ZN(n4) );
  INV_X1 U10 ( .A(B[6]), .ZN(n3) );
  XOR2_X1 U1 ( .A(A[0]), .B(B[0]), .Z(DIFF[0]) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2_X1 U1 ( .A1(B[0]), .A2(A[0]), .ZN(n1) );
  XOR2_X1 U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module alu ( alu_result, instruction, alu_src, read_data_1, read_data_2, rst
 );
  output [7:0] alu_result;
  input [15:0] instruction;
  input [7:0] read_data_1;
  input [7:0] read_data_2;
  input alu_src, rst;
  wire   N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n1, n2, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  NAND4_X1 U103 ( .A1(instruction[15]), .A2(instruction[13]), .A3(n93), .A4(
        n10), .ZN(n42) );
  NAND3_X1 U104 ( .A1(instruction[13]), .A2(n97), .A3(n98), .ZN(n96) );
  alu_DW01_sub_0 r368 ( .A(read_data_1), .B({n22, n23, n24, n25, n26, n27, n28, 
        n29}), .CI(1'b0), .DIFF({N121, N120, N119, N118, N117, N116, N115, 
        N114}) );
  alu_DW01_add_0 r367 ( .A(read_data_1), .B({n22, n23, n24, n25, n26, n27, n28, 
        n29}), .CI(1'b0), .SUM({N113, N112, N111, N110, N109, N108, N107, N106}) );
  INV_X1 U4 ( .A(n41), .ZN(n4) );
  INV_X1 U5 ( .A(n44), .ZN(n5) );
  INV_X1 U6 ( .A(n90), .ZN(n29) );
  INV_X1 U7 ( .A(n83), .ZN(n28) );
  INV_X1 U8 ( .A(n77), .ZN(n27) );
  INV_X1 U9 ( .A(n71), .ZN(n26) );
  INV_X1 U10 ( .A(n65), .ZN(n25) );
  INV_X1 U11 ( .A(n42), .ZN(n9) );
  INV_X1 U12 ( .A(n43), .ZN(n2) );
  AND2_X1 U13 ( .A1(n98), .A2(n11), .ZN(n91) );
  INV_X1 U14 ( .A(n40), .ZN(n22) );
  INV_X1 U15 ( .A(n59), .ZN(n24) );
  INV_X1 U16 ( .A(n52), .ZN(n23) );
  NOR3_X1 U17 ( .A1(n6), .A2(n11), .A3(n10), .ZN(n85) );
  INV_X1 U18 ( .A(n99), .ZN(n1) );
  OAI21_X1 U19 ( .B1(n91), .B2(n92), .A(n84), .ZN(n99) );
  OAI21_X1 U20 ( .B1(n91), .B2(n92), .A(n93), .ZN(n41) );
  OAI221_X1 U21 ( .B1(n90), .B2(n41), .C1(n29), .C2(n42), .A(n43), .ZN(n89) );
  OAI221_X1 U22 ( .B1(n40), .B2(n41), .C1(n22), .C2(n42), .A(n43), .ZN(n39) );
  INV_X1 U23 ( .A(n95), .ZN(n3) );
  OAI21_X1 U24 ( .B1(n91), .B2(n92), .A(n94), .ZN(n95) );
  AND2_X1 U25 ( .A1(n85), .A2(n93), .ZN(n53) );
  AND2_X1 U26 ( .A1(n84), .A2(n85), .ZN(n45) );
  OAI21_X1 U27 ( .B1(n90), .B2(n42), .A(n44), .ZN(n88) );
  OAI21_X1 U28 ( .B1(n40), .B2(n42), .A(n44), .ZN(n38) );
  NAND2_X1 U29 ( .A1(n85), .A2(n94), .ZN(n44) );
  AOI22_X1 U30 ( .A1(read_data_2[0]), .A2(n13), .B1(instruction[0]), .B2(
        alu_src), .ZN(n90) );
  INV_X1 U31 ( .A(alu_src), .ZN(n13) );
  AOI21_X1 U32 ( .B1(n36), .B2(n37), .A(rst), .ZN(alu_result[7]) );
  AOI222_X1 U33 ( .A1(read_data_1[6]), .A2(n45), .B1(N121), .B2(n1), .C1(n46), 
        .C2(n22), .ZN(n36) );
  AOI222_X1 U34 ( .A1(N113), .A2(n3), .B1(n38), .B2(n14), .C1(read_data_1[7]), 
        .C2(n39), .ZN(n37) );
  AOI22_X1 U35 ( .A1(read_data_2[1]), .A2(n13), .B1(instruction[1]), .B2(
        alu_src), .ZN(n83) );
  AOI22_X1 U36 ( .A1(read_data_2[2]), .A2(n13), .B1(instruction[2]), .B2(
        alu_src), .ZN(n77) );
  AOI22_X1 U37 ( .A1(read_data_2[3]), .A2(n13), .B1(instruction[3]), .B2(
        alu_src), .ZN(n71) );
  AOI22_X1 U38 ( .A1(read_data_2[4]), .A2(n13), .B1(instruction[4]), .B2(
        alu_src), .ZN(n65) );
  AOI21_X1 U39 ( .B1(n60), .B2(n61), .A(rst), .ZN(alu_result[4]) );
  AOI222_X1 U40 ( .A1(read_data_1[3]), .A2(n45), .B1(n25), .B2(n46), .C1(
        read_data_1[5]), .C2(n53), .ZN(n60) );
  AOI221_X1 U41 ( .B1(N110), .B2(n3), .C1(N118), .C2(n1), .A(n62), .ZN(n61) );
  AOI21_X1 U42 ( .B1(n54), .B2(n55), .A(rst), .ZN(alu_result[5]) );
  AOI222_X1 U43 ( .A1(read_data_1[4]), .A2(n45), .B1(n24), .B2(n46), .C1(n53), 
        .C2(read_data_1[6]), .ZN(n54) );
  AOI221_X1 U44 ( .B1(N111), .B2(n3), .C1(N119), .C2(n1), .A(n56), .ZN(n55) );
  AOI21_X1 U45 ( .B1(n47), .B2(n48), .A(rst), .ZN(alu_result[6]) );
  AOI222_X1 U46 ( .A1(read_data_1[5]), .A2(n45), .B1(n23), .B2(n46), .C1(n53), 
        .C2(read_data_1[7]), .ZN(n47) );
  AOI221_X1 U47 ( .B1(N112), .B2(n3), .C1(N120), .C2(n1), .A(n49), .ZN(n48) );
  AOI22_X1 U48 ( .A1(read_data_2[7]), .A2(n13), .B1(instruction[7]), .B2(
        alu_src), .ZN(n40) );
  OAI211_X1 U49 ( .C1(n91), .C2(n92), .A(instruction[12]), .B(instruction[11]), 
        .ZN(n43) );
  OAI22_X1 U50 ( .A1(n81), .A2(n20), .B1(read_data_1[1]), .B2(n82), .ZN(n80)
         );
  INV_X1 U51 ( .A(read_data_1[1]), .ZN(n20) );
  AOI21_X1 U52 ( .B1(n9), .B2(n28), .A(n5), .ZN(n82) );
  AOI221_X1 U53 ( .B1(n9), .B2(n83), .C1(n4), .C2(n28), .A(n2), .ZN(n81) );
  OAI22_X1 U54 ( .A1(n75), .A2(n19), .B1(read_data_1[2]), .B2(n76), .ZN(n74)
         );
  INV_X1 U55 ( .A(read_data_1[2]), .ZN(n19) );
  AOI21_X1 U56 ( .B1(n9), .B2(n27), .A(n5), .ZN(n76) );
  AOI221_X1 U57 ( .B1(n9), .B2(n77), .C1(n4), .C2(n27), .A(n2), .ZN(n75) );
  OAI22_X1 U58 ( .A1(n69), .A2(n18), .B1(read_data_1[3]), .B2(n70), .ZN(n68)
         );
  INV_X1 U59 ( .A(read_data_1[3]), .ZN(n18) );
  AOI21_X1 U60 ( .B1(n9), .B2(n26), .A(n5), .ZN(n70) );
  AOI221_X1 U61 ( .B1(n9), .B2(n71), .C1(n4), .C2(n26), .A(n2), .ZN(n69) );
  OAI22_X1 U62 ( .A1(n63), .A2(n17), .B1(read_data_1[4]), .B2(n64), .ZN(n62)
         );
  INV_X1 U63 ( .A(read_data_1[4]), .ZN(n17) );
  AOI21_X1 U64 ( .B1(n9), .B2(n25), .A(n5), .ZN(n64) );
  AOI221_X1 U65 ( .B1(n9), .B2(n65), .C1(n4), .C2(n25), .A(n2), .ZN(n63) );
  OAI22_X1 U66 ( .A1(n57), .A2(n16), .B1(read_data_1[5]), .B2(n58), .ZN(n56)
         );
  INV_X1 U67 ( .A(read_data_1[5]), .ZN(n16) );
  AOI21_X1 U68 ( .B1(n9), .B2(n24), .A(n5), .ZN(n58) );
  AOI221_X1 U69 ( .B1(n9), .B2(n59), .C1(n4), .C2(n24), .A(n2), .ZN(n57) );
  OAI22_X1 U70 ( .A1(n50), .A2(n15), .B1(read_data_1[6]), .B2(n51), .ZN(n49)
         );
  INV_X1 U71 ( .A(read_data_1[6]), .ZN(n15) );
  AOI21_X1 U72 ( .B1(n9), .B2(n23), .A(n5), .ZN(n51) );
  AOI221_X1 U73 ( .B1(n9), .B2(n52), .C1(n4), .C2(n23), .A(n2), .ZN(n50) );
  AOI22_X1 U74 ( .A1(read_data_2[5]), .A2(n13), .B1(instruction[5]), .B2(
        alu_src), .ZN(n59) );
  AOI22_X1 U75 ( .A1(read_data_2[6]), .A2(n13), .B1(instruction[6]), .B2(
        alu_src), .ZN(n52) );
  NOR2_X1 U76 ( .A1(n12), .A2(instruction[11]), .ZN(n93) );
  NOR2_X1 U77 ( .A1(n10), .A2(instruction[15]), .ZN(n98) );
  INV_X1 U78 ( .A(instruction[14]), .ZN(n10) );
  INV_X1 U79 ( .A(instruction[13]), .ZN(n11) );
  AOI21_X1 U80 ( .B1(n86), .B2(n87), .A(rst), .ZN(alu_result[0]) );
  AOI222_X1 U81 ( .A1(N106), .A2(n3), .B1(n88), .B2(n21), .C1(read_data_1[0]), 
        .C2(n89), .ZN(n87) );
  AOI222_X1 U82 ( .A1(read_data_1[1]), .A2(n53), .B1(N114), .B2(n1), .C1(n29), 
        .C2(n46), .ZN(n86) );
  AOI21_X1 U83 ( .B1(n78), .B2(n79), .A(rst), .ZN(alu_result[1]) );
  AOI222_X1 U84 ( .A1(read_data_1[0]), .A2(n45), .B1(n28), .B2(n46), .C1(
        read_data_1[2]), .C2(n53), .ZN(n78) );
  AOI221_X1 U85 ( .B1(N107), .B2(n3), .C1(N115), .C2(n1), .A(n80), .ZN(n79) );
  AOI21_X1 U86 ( .B1(n72), .B2(n73), .A(rst), .ZN(alu_result[2]) );
  AOI222_X1 U87 ( .A1(read_data_1[1]), .A2(n45), .B1(n27), .B2(n46), .C1(
        read_data_1[3]), .C2(n53), .ZN(n72) );
  AOI221_X1 U88 ( .B1(N108), .B2(n3), .C1(N116), .C2(n1), .A(n74), .ZN(n73) );
  AOI21_X1 U89 ( .B1(n66), .B2(n67), .A(rst), .ZN(alu_result[3]) );
  AOI222_X1 U90 ( .A1(read_data_1[2]), .A2(n45), .B1(n26), .B2(n46), .C1(
        read_data_1[4]), .C2(n53), .ZN(n66) );
  AOI221_X1 U91 ( .B1(N109), .B2(n3), .C1(N117), .C2(n1), .A(n68), .ZN(n67) );
  NOR3_X1 U92 ( .A1(instruction[13]), .A2(instruction[14]), .A3(n6), .ZN(n92)
         );
  NAND2_X1 U93 ( .A1(n43), .A2(n96), .ZN(n46) );
  OR3_X1 U94 ( .A1(n93), .A2(n84), .A3(n94), .ZN(n97) );
  NOR2_X1 U95 ( .A1(instruction[12]), .A2(instruction[11]), .ZN(n94) );
  INV_X1 U96 ( .A(read_data_1[0]), .ZN(n21) );
  AND2_X1 U97 ( .A1(instruction[11]), .A2(n12), .ZN(n84) );
  INV_X1 U98 ( .A(instruction[15]), .ZN(n6) );
  INV_X1 U99 ( .A(read_data_1[7]), .ZN(n14) );
  INV_X1 U100 ( .A(instruction[12]), .ZN(n12) );
endmodule


module exmem ( regwrite_exmem_output, memread_exmem_output, 
        memwrite_exmem_output, mem_to_reg_exmem_output, 
        alu_result_exmem_output, write_data_exmem_output, rd_exmem_output, 
        regwrite_exmem_input, memread_exmem_input, memwrite_exmem_input, 
        mem_to_reg_exmem_input, alu_result_exmem_input, write_data_exmem_input, 
        rd_exmem_input, rst, clk );
  output [7:0] alu_result_exmem_output;
  output [7:0] write_data_exmem_output;
  output [2:0] rd_exmem_output;
  input [7:0] alu_result_exmem_input;
  input [7:0] write_data_exmem_input;
  input [2:0] rd_exmem_input;
  input regwrite_exmem_input, memread_exmem_input, memwrite_exmem_input,
         mem_to_reg_exmem_input, rst, clk;
  output regwrite_exmem_output, memread_exmem_output, memwrite_exmem_output,
         mem_to_reg_exmem_output;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, n1;

  DFF_X1 regwrite_exmem_output_reg ( .D(N24), .CK(clk), .Q(
        regwrite_exmem_output) );
  DFF_X1 mem_to_reg_exmem_output_reg ( .D(N25), .CK(clk), .Q(
        mem_to_reg_exmem_output) );
  DFF_X1 alu_result_exmem_output_reg_7_ ( .D(N10), .CK(clk), .Q(
        alu_result_exmem_output[7]) );
  DFF_X1 alu_result_exmem_output_reg_6_ ( .D(N9), .CK(clk), .Q(
        alu_result_exmem_output[6]) );
  DFF_X1 alu_result_exmem_output_reg_5_ ( .D(N8), .CK(clk), .Q(
        alu_result_exmem_output[5]) );
  DFF_X1 alu_result_exmem_output_reg_4_ ( .D(N7), .CK(clk), .Q(
        alu_result_exmem_output[4]) );
  DFF_X1 alu_result_exmem_output_reg_3_ ( .D(N6), .CK(clk), .Q(
        alu_result_exmem_output[3]) );
  DFF_X1 alu_result_exmem_output_reg_2_ ( .D(N5), .CK(clk), .Q(
        alu_result_exmem_output[2]) );
  DFF_X1 alu_result_exmem_output_reg_1_ ( .D(N4), .CK(clk), .Q(
        alu_result_exmem_output[1]) );
  DFF_X1 alu_result_exmem_output_reg_0_ ( .D(N3), .CK(clk), .Q(
        alu_result_exmem_output[0]) );
  DFF_X1 rd_exmem_output_reg_2_ ( .D(N13), .CK(clk), .Q(rd_exmem_output[2]) );
  DFF_X1 rd_exmem_output_reg_1_ ( .D(N12), .CK(clk), .Q(rd_exmem_output[1]) );
  DFF_X1 rd_exmem_output_reg_0_ ( .D(N11), .CK(clk), .Q(rd_exmem_output[0]) );
  DFF_X1 write_data_exmem_output_reg_7_ ( .D(N21), .CK(clk), .Q(
        write_data_exmem_output[7]) );
  DFF_X1 write_data_exmem_output_reg_6_ ( .D(N20), .CK(clk), .Q(
        write_data_exmem_output[6]) );
  DFF_X1 write_data_exmem_output_reg_5_ ( .D(N19), .CK(clk), .Q(
        write_data_exmem_output[5]) );
  DFF_X1 write_data_exmem_output_reg_4_ ( .D(N18), .CK(clk), .Q(
        write_data_exmem_output[4]) );
  DFF_X1 write_data_exmem_output_reg_3_ ( .D(N17), .CK(clk), .Q(
        write_data_exmem_output[3]) );
  DFF_X1 write_data_exmem_output_reg_2_ ( .D(N16), .CK(clk), .Q(
        write_data_exmem_output[2]) );
  DFF_X1 write_data_exmem_output_reg_1_ ( .D(N15), .CK(clk), .Q(
        write_data_exmem_output[1]) );
  DFF_X1 write_data_exmem_output_reg_0_ ( .D(N14), .CK(clk), .Q(
        write_data_exmem_output[0]) );
  DFF_X1 memwrite_exmem_output_reg ( .D(N22), .CK(clk), .Q(
        memwrite_exmem_output) );
  DFF_X1 memread_exmem_output_reg ( .D(N23), .CK(clk), .Q(memread_exmem_output) );
  AND2_X1 U3 ( .A1(alu_result_exmem_input[7]), .A2(n1), .ZN(N10) );
  AND2_X1 U4 ( .A1(alu_result_exmem_input[4]), .A2(n1), .ZN(N7) );
  AND2_X1 U5 ( .A1(alu_result_exmem_input[5]), .A2(n1), .ZN(N8) );
  AND2_X1 U6 ( .A1(alu_result_exmem_input[6]), .A2(n1), .ZN(N9) );
  AND2_X1 U7 ( .A1(alu_result_exmem_input[0]), .A2(n1), .ZN(N3) );
  AND2_X1 U8 ( .A1(alu_result_exmem_input[1]), .A2(n1), .ZN(N4) );
  AND2_X1 U9 ( .A1(alu_result_exmem_input[2]), .A2(n1), .ZN(N5) );
  AND2_X1 U10 ( .A1(alu_result_exmem_input[3]), .A2(n1), .ZN(N6) );
  INV_X1 U11 ( .A(rst), .ZN(n1) );
  AND2_X1 U12 ( .A1(write_data_exmem_input[0]), .A2(n1), .ZN(N14) );
  AND2_X1 U13 ( .A1(write_data_exmem_input[6]), .A2(n1), .ZN(N20) );
  AND2_X1 U14 ( .A1(write_data_exmem_input[1]), .A2(n1), .ZN(N15) );
  AND2_X1 U15 ( .A1(write_data_exmem_input[2]), .A2(n1), .ZN(N16) );
  AND2_X1 U16 ( .A1(write_data_exmem_input[3]), .A2(n1), .ZN(N17) );
  AND2_X1 U17 ( .A1(write_data_exmem_input[4]), .A2(n1), .ZN(N18) );
  AND2_X1 U18 ( .A1(write_data_exmem_input[5]), .A2(n1), .ZN(N19) );
  AND2_X1 U19 ( .A1(write_data_exmem_input[7]), .A2(n1), .ZN(N21) );
  AND2_X1 U20 ( .A1(memread_exmem_input), .A2(n1), .ZN(N23) );
  AND2_X1 U21 ( .A1(memwrite_exmem_input), .A2(n1), .ZN(N22) );
  AND2_X1 U22 ( .A1(rd_exmem_input[0]), .A2(n1), .ZN(N11) );
  AND2_X1 U23 ( .A1(rd_exmem_input[1]), .A2(n1), .ZN(N12) );
  AND2_X1 U24 ( .A1(rd_exmem_input[2]), .A2(n1), .ZN(N13) );
  AND2_X1 U25 ( .A1(mem_to_reg_exmem_input), .A2(n1), .ZN(N25) );
  AND2_X1 U26 ( .A1(regwrite_exmem_input), .A2(n1), .ZN(N24) );
endmodule


module id_and_ex ( regwrite_out, mem_read_out, mem_write_out, mem_to_reg_out, 
        alu_result, write_data_to_memory, rd_address, instruction_input, rst, 
        rst_registerfile, regwrite, write_data, write_addr, clk );
  output [7:0] alu_result;
  output [7:0] write_data_to_memory;
  output [2:0] rd_address;
  input [15:0] instruction_input;
  input [7:0] write_data;
  input [2:0] write_addr;
  input rst, rst_registerfile, regwrite, clk;
  output regwrite_out, mem_read_out, mem_write_out, mem_to_reg_out;
  wire   regwrite_from_id, mem_read_from_id, mem_write_from_id,
         mem_to_reg_from_id, alu_src_from_id;
  wire   [7:0] rd_data_from_id;
  wire   [7:0] rs_data_from_id;
  wire   [15:0] instruction_from_id;
  wire   [7:0] alu_result_from_alu;

  id id1 ( .regwrite_out(regwrite_from_id), .mem_read(mem_read_from_id), 
        .mem_write(mem_write_from_id), .mem_to_reg(mem_to_reg_from_id), 
        .alu_src(alu_src_from_id), .rd_data(rd_data_from_id), .rs_data(
        rs_data_from_id), .instruction_output(instruction_from_id), 
        .instruction_input(instruction_input), .rst(rst), .rst_registerfile(
        rst_registerfile), .regwrite(regwrite), .write_data(write_data), 
        .write_addr(write_addr), .clk(clk) );
  alu alu1 ( .alu_result(alu_result_from_alu), .instruction({
        instruction_from_id[15:11], 1'b0, 1'b0, 1'b0, instruction_from_id[7:0]}), .alu_src(alu_src_from_id), .read_data_1(rd_data_from_id), .read_data_2(
        rs_data_from_id), .rst(rst) );
  exmem exmem1 ( .regwrite_exmem_output(regwrite_out), .memread_exmem_output(
        mem_read_out), .memwrite_exmem_output(mem_write_out), 
        .mem_to_reg_exmem_output(mem_to_reg_out), .alu_result_exmem_output(
        alu_result), .write_data_exmem_output(write_data_to_memory), 
        .rd_exmem_output(rd_address), .regwrite_exmem_input(regwrite_from_id), 
        .memread_exmem_input(mem_read_from_id), .memwrite_exmem_input(
        mem_write_from_id), .mem_to_reg_exmem_input(mem_to_reg_from_id), 
        .alu_result_exmem_input(alu_result_from_alu), .write_data_exmem_input(
        rd_data_from_id), .rd_exmem_input(instruction_from_id[10:8]), .rst(rst), .clk(clk) );
endmodule


module memwb ( regwire_memwb_output, rd_memwb_output, wb_data, 
        regwire_memwb_input, mem_to_reg_memwb_input, read_ram_data_memwb_input, 
        alu_result_memwb_input, rd_memwb_input, rst, clk );
  output [2:0] rd_memwb_output;
  output [7:0] wb_data;
  input [7:0] read_ram_data_memwb_input;
  input [7:0] alu_result_memwb_input;
  input [2:0] rd_memwb_input;
  input regwire_memwb_input, mem_to_reg_memwb_input, rst, clk;
  output regwire_memwb_output;
  wire   mem_to_reg_memwb_output, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, n1, n3, n4, n6,
         n7, n9, n10, n12, n13, n15, n16, n18, n19, n21, n22, n24, n25, n26;

  DFF_X1 rd_memwb_output_reg_2_ ( .D(N25), .CK(clk), .Q(rd_memwb_output[2]) );
  DFF_X1 rd_memwb_output_reg_1_ ( .D(N24), .CK(clk), .Q(rd_memwb_output[1]) );
  DFF_X1 rd_memwb_output_reg_0_ ( .D(N23), .CK(clk), .Q(rd_memwb_output[0]) );
  DFF_X1 mem_to_reg_memwb_output_reg ( .D(N26), .CK(clk), .Q(
        mem_to_reg_memwb_output), .QN(n1) );
  DFF_X1 regwire_memwb_output_reg ( .D(N6), .CK(clk), .Q(regwire_memwb_output)
         );
  DFF_X1 read_ram_data_memwb_output_reg_7_ ( .D(N14), .CK(clk), .QN(n25) );
  DFF_X1 read_ram_data_memwb_output_reg_6_ ( .D(N13), .CK(clk), .QN(n22) );
  DFF_X1 read_ram_data_memwb_output_reg_5_ ( .D(N12), .CK(clk), .QN(n19) );
  DFF_X1 read_ram_data_memwb_output_reg_4_ ( .D(N11), .CK(clk), .QN(n16) );
  DFF_X1 read_ram_data_memwb_output_reg_3_ ( .D(N10), .CK(clk), .QN(n13) );
  DFF_X1 read_ram_data_memwb_output_reg_2_ ( .D(N9), .CK(clk), .QN(n10) );
  DFF_X1 read_ram_data_memwb_output_reg_1_ ( .D(N8), .CK(clk), .QN(n7) );
  DFF_X1 read_ram_data_memwb_output_reg_0_ ( .D(N7), .CK(clk), .QN(n4) );
  DFF_X1 alu_result_memwb_output_reg_7_ ( .D(N22), .CK(clk), .QN(n24) );
  DFF_X1 alu_result_memwb_output_reg_6_ ( .D(N21), .CK(clk), .QN(n21) );
  DFF_X1 alu_result_memwb_output_reg_5_ ( .D(N20), .CK(clk), .QN(n18) );
  DFF_X1 alu_result_memwb_output_reg_4_ ( .D(N19), .CK(clk), .QN(n15) );
  DFF_X1 alu_result_memwb_output_reg_3_ ( .D(N18), .CK(clk), .QN(n12) );
  DFF_X1 alu_result_memwb_output_reg_2_ ( .D(N17), .CK(clk), .QN(n9) );
  DFF_X1 alu_result_memwb_output_reg_1_ ( .D(N16), .CK(clk), .QN(n6) );
  DFF_X1 alu_result_memwb_output_reg_0_ ( .D(N15), .CK(clk), .QN(n3) );
  OAI22_X1 U3 ( .A1(n3), .A2(mem_to_reg_memwb_output), .B1(n4), .B2(n1), .ZN(
        wb_data[0]) );
  OAI22_X1 U4 ( .A1(n6), .A2(mem_to_reg_memwb_output), .B1(n7), .B2(n1), .ZN(
        wb_data[1]) );
  OAI22_X1 U5 ( .A1(n9), .A2(mem_to_reg_memwb_output), .B1(n10), .B2(n1), .ZN(
        wb_data[2]) );
  OAI22_X1 U6 ( .A1(n12), .A2(mem_to_reg_memwb_output), .B1(n13), .B2(n1), 
        .ZN(wb_data[3]) );
  OAI22_X1 U7 ( .A1(n15), .A2(mem_to_reg_memwb_output), .B1(n16), .B2(n1), 
        .ZN(wb_data[4]) );
  OAI22_X1 U8 ( .A1(n18), .A2(mem_to_reg_memwb_output), .B1(n19), .B2(n1), 
        .ZN(wb_data[5]) );
  OAI22_X1 U9 ( .A1(n21), .A2(mem_to_reg_memwb_output), .B1(n22), .B2(n1), 
        .ZN(wb_data[6]) );
  OAI22_X1 U10 ( .A1(n24), .A2(mem_to_reg_memwb_output), .B1(n25), .B2(n1), 
        .ZN(wb_data[7]) );
  INV_X1 U11 ( .A(rst), .ZN(n26) );
  AND2_X1 U12 ( .A1(read_ram_data_memwb_input[0]), .A2(n26), .ZN(N7) );
  AND2_X1 U13 ( .A1(read_ram_data_memwb_input[1]), .A2(n26), .ZN(N8) );
  AND2_X1 U14 ( .A1(read_ram_data_memwb_input[2]), .A2(n26), .ZN(N9) );
  AND2_X1 U15 ( .A1(read_ram_data_memwb_input[3]), .A2(n26), .ZN(N10) );
  AND2_X1 U16 ( .A1(read_ram_data_memwb_input[4]), .A2(n26), .ZN(N11) );
  AND2_X1 U17 ( .A1(read_ram_data_memwb_input[5]), .A2(n26), .ZN(N12) );
  AND2_X1 U18 ( .A1(read_ram_data_memwb_input[6]), .A2(n26), .ZN(N13) );
  AND2_X1 U19 ( .A1(read_ram_data_memwb_input[7]), .A2(n26), .ZN(N14) );
  AND2_X1 U20 ( .A1(alu_result_memwb_input[0]), .A2(n26), .ZN(N15) );
  AND2_X1 U21 ( .A1(alu_result_memwb_input[1]), .A2(n26), .ZN(N16) );
  AND2_X1 U22 ( .A1(alu_result_memwb_input[2]), .A2(n26), .ZN(N17) );
  AND2_X1 U23 ( .A1(alu_result_memwb_input[3]), .A2(n26), .ZN(N18) );
  AND2_X1 U24 ( .A1(alu_result_memwb_input[4]), .A2(n26), .ZN(N19) );
  AND2_X1 U25 ( .A1(alu_result_memwb_input[5]), .A2(n26), .ZN(N20) );
  AND2_X1 U26 ( .A1(alu_result_memwb_input[6]), .A2(n26), .ZN(N21) );
  AND2_X1 U27 ( .A1(alu_result_memwb_input[7]), .A2(n26), .ZN(N22) );
  AND2_X1 U28 ( .A1(regwire_memwb_input), .A2(n26), .ZN(N6) );
  AND2_X1 U29 ( .A1(mem_to_reg_memwb_input), .A2(n26), .ZN(N26) );
  AND2_X1 U30 ( .A1(rd_memwb_input[0]), .A2(n26), .ZN(N23) );
  AND2_X1 U31 ( .A1(rd_memwb_input[1]), .A2(n26), .ZN(N24) );
  AND2_X1 U32 ( .A1(rd_memwb_input[2]), .A2(n26), .ZN(N25) );
endmodule


module id_to_wb ( data_from_ram, mem_read_from_idandex, mem_write_from_idandex, 
        alu_result_from_idandex, write_data_to_memory, ram_data, 
        instruction_input, rst, rst_registerfile, clk );
  output [7:0] data_from_ram;
  output [7:0] alu_result_from_idandex;
  output [7:0] write_data_to_memory;
  input [7:0] ram_data;
  input [15:0] instruction_input;
  input rst, rst_registerfile, clk;
  output mem_read_from_idandex, mem_write_from_idandex;
  wire   regwrite_from_idandex, mem_to_reg_from_idandex, regwrite_from_wb;
  wire   [2:0] instruction_from_idandex;
  wire   [7:0] wb_data;
  wire   [2:0] wb_address;

  id_and_ex id_and_ex1 ( .regwrite_out(regwrite_from_idandex), .mem_read_out(
        mem_read_from_idandex), .mem_write_out(mem_write_from_idandex), 
        .mem_to_reg_out(mem_to_reg_from_idandex), .alu_result(
        alu_result_from_idandex), .write_data_to_memory(write_data_to_memory), 
        .rd_address(instruction_from_idandex), .instruction_input(
        instruction_input), .rst(rst), .rst_registerfile(rst_registerfile), 
        .regwrite(regwrite_from_wb), .write_data(wb_data), .write_addr(
        wb_address), .clk(clk) );
  memwb memwb1 ( .regwire_memwb_output(regwrite_from_wb), .rd_memwb_output(
        wb_address), .wb_data(wb_data), .regwire_memwb_input(
        regwrite_from_idandex), .mem_to_reg_memwb_input(
        mem_to_reg_from_idandex), .read_ram_data_memwb_input(ram_data), 
        .alu_result_memwb_input(alu_result_from_idandex), .rd_memwb_input(
        instruction_from_idandex), .rst(rst), .clk(clk) );
  CLKBUF_X1 U1 ( .A(ram_data[7]), .Z(data_from_ram[7]) );
  CLKBUF_X1 U2 ( .A(ram_data[6]), .Z(data_from_ram[6]) );
  CLKBUF_X1 U3 ( .A(ram_data[5]), .Z(data_from_ram[5]) );
  CLKBUF_X1 U4 ( .A(ram_data[4]), .Z(data_from_ram[4]) );
  CLKBUF_X1 U5 ( .A(ram_data[3]), .Z(data_from_ram[3]) );
  CLKBUF_X1 U6 ( .A(ram_data[2]), .Z(data_from_ram[2]) );
  CLKBUF_X1 U7 ( .A(ram_data[1]), .Z(data_from_ram[1]) );
  CLKBUF_X1 U8 ( .A(ram_data[0]), .Z(data_from_ram[0]) );
endmodule

