/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Sun May 29 21:54:32 2022
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283;
  wire   [63:0] register_memory;

  DFF_X1 register_memory_reg_6__7_ ( .D(n118), .CK(clk), .Q(
        register_memory[55]), .QN(n1) );
  DFF_X1 register_memory_reg_6__6_ ( .D(n119), .CK(clk), .Q(
        register_memory[54]), .QN(n2) );
  DFF_X1 register_memory_reg_6__5_ ( .D(n120), .CK(clk), .Q(
        register_memory[53]), .QN(n3) );
  DFF_X1 register_memory_reg_6__4_ ( .D(n121), .CK(clk), .Q(
        register_memory[52]), .QN(n4) );
  DFF_X1 register_memory_reg_6__3_ ( .D(n122), .CK(clk), .Q(
        register_memory[51]), .QN(n5) );
  DFF_X1 register_memory_reg_6__2_ ( .D(n123), .CK(clk), .Q(
        register_memory[50]), .QN(n6) );
  DFF_X1 register_memory_reg_6__1_ ( .D(n124), .CK(clk), .Q(
        register_memory[49]), .QN(n7) );
  DFF_X1 register_memory_reg_6__0_ ( .D(n125), .CK(clk), .Q(
        register_memory[48]), .QN(n8) );
  DFF_X1 register_memory_reg_5__7_ ( .D(n126), .CK(clk), .Q(
        register_memory[47]), .QN(n9) );
  DFF_X1 register_memory_reg_5__6_ ( .D(n127), .CK(clk), .Q(
        register_memory[46]), .QN(n10) );
  DFF_X1 register_memory_reg_5__5_ ( .D(n128), .CK(clk), .Q(
        register_memory[45]), .QN(n11) );
  DFF_X1 register_memory_reg_5__4_ ( .D(n129), .CK(clk), .Q(
        register_memory[44]), .QN(n12) );
  DFF_X1 register_memory_reg_5__3_ ( .D(n130), .CK(clk), .Q(
        register_memory[43]), .QN(n13) );
  DFF_X1 register_memory_reg_5__2_ ( .D(n131), .CK(clk), .Q(
        register_memory[42]), .QN(n14) );
  DFF_X1 register_memory_reg_5__1_ ( .D(n132), .CK(clk), .Q(
        register_memory[41]), .QN(n15) );
  DFF_X1 register_memory_reg_5__0_ ( .D(n133), .CK(clk), .Q(
        register_memory[40]), .QN(n16) );
  DFF_X1 register_memory_reg_4__7_ ( .D(n134), .CK(clk), .Q(
        register_memory[39]), .QN(n17) );
  DFF_X1 register_memory_reg_4__6_ ( .D(n135), .CK(clk), .Q(
        register_memory[38]), .QN(n18) );
  DFF_X1 register_memory_reg_4__5_ ( .D(n136), .CK(clk), .Q(
        register_memory[37]), .QN(n19) );
  DFF_X1 register_memory_reg_4__4_ ( .D(n137), .CK(clk), .Q(
        register_memory[36]), .QN(n20) );
  DFF_X1 register_memory_reg_4__3_ ( .D(n138), .CK(clk), .Q(
        register_memory[35]), .QN(n21) );
  DFF_X1 register_memory_reg_4__2_ ( .D(n139), .CK(clk), .Q(
        register_memory[34]), .QN(n22) );
  DFF_X1 register_memory_reg_4__1_ ( .D(n140), .CK(clk), .Q(
        register_memory[33]), .QN(n23) );
  DFF_X1 register_memory_reg_4__0_ ( .D(n141), .CK(clk), .Q(
        register_memory[32]), .QN(n24) );
  DFF_X1 register_memory_reg_3__7_ ( .D(n142), .CK(clk), .Q(
        register_memory[31]), .QN(n25) );
  DFF_X1 register_memory_reg_3__6_ ( .D(n143), .CK(clk), .Q(
        register_memory[30]), .QN(n26) );
  DFF_X1 register_memory_reg_3__5_ ( .D(n144), .CK(clk), .Q(
        register_memory[29]), .QN(n27) );
  DFF_X1 register_memory_reg_3__4_ ( .D(n145), .CK(clk), .Q(
        register_memory[28]), .QN(n28) );
  DFF_X1 register_memory_reg_3__3_ ( .D(n146), .CK(clk), .Q(
        register_memory[27]), .QN(n29) );
  DFF_X1 register_memory_reg_3__2_ ( .D(n147), .CK(clk), .Q(
        register_memory[26]), .QN(n30) );
  DFF_X1 register_memory_reg_3__1_ ( .D(n148), .CK(clk), .Q(
        register_memory[25]), .QN(n31) );
  DFF_X1 register_memory_reg_3__0_ ( .D(n149), .CK(clk), .Q(
        register_memory[24]), .QN(n32) );
  DFF_X1 register_memory_reg_2__7_ ( .D(n150), .CK(clk), .Q(
        register_memory[23]), .QN(n33) );
  DFF_X1 register_memory_reg_2__6_ ( .D(n151), .CK(clk), .Q(
        register_memory[22]), .QN(n34) );
  DFF_X1 register_memory_reg_2__5_ ( .D(n152), .CK(clk), .Q(
        register_memory[21]), .QN(n35) );
  DFF_X1 register_memory_reg_2__4_ ( .D(n153), .CK(clk), .Q(
        register_memory[20]), .QN(n36) );
  DFF_X1 register_memory_reg_2__3_ ( .D(n154), .CK(clk), .Q(
        register_memory[19]), .QN(n37) );
  DFF_X1 register_memory_reg_2__2_ ( .D(n155), .CK(clk), .Q(
        register_memory[18]), .QN(n38) );
  DFF_X1 register_memory_reg_2__1_ ( .D(n156), .CK(clk), .Q(
        register_memory[17]), .QN(n39) );
  DFF_X1 register_memory_reg_2__0_ ( .D(n157), .CK(clk), .Q(
        register_memory[16]), .QN(n40) );
  DFF_X1 register_memory_reg_1__7_ ( .D(n158), .CK(clk), .Q(
        register_memory[15]), .QN(n41) );
  DFF_X1 register_memory_reg_1__6_ ( .D(n159), .CK(clk), .Q(
        register_memory[14]), .QN(n42) );
  DFF_X1 register_memory_reg_1__5_ ( .D(n160), .CK(clk), .Q(
        register_memory[13]), .QN(n43) );
  DFF_X1 register_memory_reg_1__4_ ( .D(n161), .CK(clk), .Q(
        register_memory[12]), .QN(n44) );
  DFF_X1 register_memory_reg_1__3_ ( .D(n162), .CK(clk), .Q(
        register_memory[11]), .QN(n45) );
  DFF_X1 register_memory_reg_1__2_ ( .D(n163), .CK(clk), .Q(
        register_memory[10]), .QN(n46) );
  DFF_X1 register_memory_reg_1__1_ ( .D(n164), .CK(clk), .Q(register_memory[9]), .QN(n47) );
  DFF_X1 register_memory_reg_1__0_ ( .D(n165), .CK(clk), .Q(register_memory[8]), .QN(n48) );
  DFF_X1 register_memory_reg_0__7_ ( .D(n166), .CK(clk), .Q(register_memory[7]), .QN(n49) );
  DFF_X1 register_memory_reg_7__7_ ( .D(n110), .CK(clk), .Q(
        register_memory[63]) );
  DFF_X1 register_memory_reg_0__6_ ( .D(n167), .CK(clk), .Q(register_memory[6]), .QN(n50) );
  DFF_X1 register_memory_reg_7__6_ ( .D(n111), .CK(clk), .Q(
        register_memory[62]) );
  DFF_X1 register_memory_reg_0__5_ ( .D(n168), .CK(clk), .Q(register_memory[5]), .QN(n51) );
  DFF_X1 register_memory_reg_7__5_ ( .D(n112), .CK(clk), .Q(
        register_memory[61]) );
  DFF_X1 register_memory_reg_0__4_ ( .D(n169), .CK(clk), .Q(register_memory[4]), .QN(n52) );
  DFF_X1 register_memory_reg_7__4_ ( .D(n113), .CK(clk), .Q(
        register_memory[60]) );
  DFF_X1 register_memory_reg_0__3_ ( .D(n170), .CK(clk), .Q(register_memory[3]), .QN(n53) );
  DFF_X1 register_memory_reg_7__3_ ( .D(n114), .CK(clk), .Q(
        register_memory[59]) );
  DFF_X1 register_memory_reg_0__2_ ( .D(n171), .CK(clk), .Q(register_memory[2]), .QN(n54) );
  DFF_X1 register_memory_reg_7__2_ ( .D(n115), .CK(clk), .Q(
        register_memory[58]) );
  DFF_X1 register_memory_reg_0__1_ ( .D(n172), .CK(clk), .Q(register_memory[1]), .QN(n55) );
  DFF_X1 register_memory_reg_7__1_ ( .D(n116), .CK(clk), .Q(
        register_memory[57]) );
  DFF_X1 register_memory_reg_0__0_ ( .D(n173), .CK(clk), .Q(register_memory[0]), .QN(n56) );
  DFF_X1 register_memory_reg_7__0_ ( .D(n117), .CK(clk), .Q(
        register_memory[56]) );
  NAND3_X1 U112 ( .A1(write_address[1]), .A2(write_address[0]), .A3(
        write_address[2]), .ZN(n87) );
  NAND3_X1 U113 ( .A1(write_address[1]), .A2(n282), .A3(write_address[2]), 
        .ZN(n90) );
  NAND3_X1 U114 ( .A1(write_address[0]), .A2(n281), .A3(write_address[2]), 
        .ZN(n93) );
  NAND3_X1 U115 ( .A1(n282), .A2(n281), .A3(write_address[2]), .ZN(n96) );
  NAND3_X1 U116 ( .A1(write_address[0]), .A2(n277), .A3(write_address[1]), 
        .ZN(n99) );
  NAND3_X1 U117 ( .A1(n282), .A2(n277), .A3(write_address[1]), .ZN(n102) );
  NAND3_X1 U118 ( .A1(n281), .A2(n277), .A3(write_address[0]), .ZN(n105) );
  NAND3_X1 U119 ( .A1(n281), .A2(n277), .A3(n282), .ZN(n109) );
  NAND2_X1 U3 ( .A1(write_data[0]), .A2(n107), .ZN(n84) );
  NAND2_X1 U4 ( .A1(write_data[1]), .A2(n107), .ZN(n82) );
  NAND2_X1 U5 ( .A1(write_data[2]), .A2(n107), .ZN(n80) );
  NAND2_X1 U6 ( .A1(write_data[3]), .A2(n107), .ZN(n78) );
  NAND2_X1 U7 ( .A1(write_data[4]), .A2(n107), .ZN(n76) );
  NAND2_X1 U8 ( .A1(write_data[5]), .A2(n107), .ZN(n74) );
  NAND2_X1 U9 ( .A1(write_data[6]), .A2(n107), .ZN(n72) );
  NAND2_X1 U10 ( .A1(write_data[7]), .A2(n107), .ZN(n70) );
  INV_X1 U11 ( .A(n108), .ZN(n273) );
  AND2_X1 U12 ( .A1(n68), .A2(n108), .ZN(n106) );
  AND2_X1 U13 ( .A1(n68), .A2(n104), .ZN(n103) );
  AND2_X1 U14 ( .A1(n68), .A2(n101), .ZN(n100) );
  AND2_X1 U15 ( .A1(n68), .A2(n98), .ZN(n97) );
  AND2_X1 U16 ( .A1(n68), .A2(n95), .ZN(n94) );
  AND2_X1 U17 ( .A1(n68), .A2(n92), .ZN(n91) );
  AND2_X1 U18 ( .A1(n68), .A2(n89), .ZN(n88) );
  AND2_X1 U19 ( .A1(n283), .A2(n68), .ZN(n86) );
  INV_X1 U20 ( .A(n104), .ZN(n274) );
  INV_X1 U21 ( .A(n101), .ZN(n275) );
  INV_X1 U22 ( .A(n98), .ZN(n276) );
  INV_X1 U23 ( .A(n95), .ZN(n280) );
  INV_X1 U24 ( .A(n92), .ZN(n279) );
  INV_X1 U25 ( .A(n89), .ZN(n278) );
  NAND2_X1 U26 ( .A1(n86), .A2(n109), .ZN(n108) );
  AND2_X1 U29 ( .A1(n86), .A2(n87), .ZN(n69) );
  OR2_X1 U30 ( .A1(regwrite), .A2(rst), .ZN(n68) );
  OAI221_X1 U31 ( .B1(n68), .B2(n56), .C1(n69), .C2(n84), .A(n85), .ZN(n117)
         );
  NAND2_X1 U32 ( .A1(register_memory[56]), .A2(n69), .ZN(n85) );
  OAI221_X1 U33 ( .B1(n68), .B2(n55), .C1(n69), .C2(n82), .A(n83), .ZN(n116)
         );
  NAND2_X1 U34 ( .A1(register_memory[57]), .A2(n69), .ZN(n83) );
  OAI221_X1 U35 ( .B1(n68), .B2(n54), .C1(n69), .C2(n80), .A(n81), .ZN(n115)
         );
  NAND2_X1 U36 ( .A1(register_memory[58]), .A2(n69), .ZN(n81) );
  OAI221_X1 U37 ( .B1(n68), .B2(n53), .C1(n69), .C2(n78), .A(n79), .ZN(n114)
         );
  NAND2_X1 U38 ( .A1(register_memory[59]), .A2(n69), .ZN(n79) );
  OAI221_X1 U39 ( .B1(n68), .B2(n52), .C1(n69), .C2(n76), .A(n77), .ZN(n113)
         );
  NAND2_X1 U40 ( .A1(register_memory[60]), .A2(n69), .ZN(n77) );
  OAI221_X1 U41 ( .B1(n68), .B2(n51), .C1(n69), .C2(n74), .A(n75), .ZN(n112)
         );
  NAND2_X1 U42 ( .A1(register_memory[61]), .A2(n69), .ZN(n75) );
  OAI221_X1 U43 ( .B1(n68), .B2(n50), .C1(n69), .C2(n72), .A(n73), .ZN(n111)
         );
  NAND2_X1 U44 ( .A1(register_memory[62]), .A2(n69), .ZN(n73) );
  OAI221_X1 U45 ( .B1(n68), .B2(n49), .C1(n69), .C2(n70), .A(n71), .ZN(n110)
         );
  NAND2_X1 U46 ( .A1(register_memory[63]), .A2(n69), .ZN(n71) );
  OAI22_X1 U47 ( .A1(n106), .A2(n56), .B1(n273), .B2(n84), .ZN(n173) );
  OAI22_X1 U48 ( .A1(n106), .A2(n55), .B1(n273), .B2(n82), .ZN(n172) );
  OAI22_X1 U49 ( .A1(n106), .A2(n54), .B1(n273), .B2(n80), .ZN(n171) );
  OAI22_X1 U50 ( .A1(n106), .A2(n53), .B1(n273), .B2(n78), .ZN(n170) );
  OAI22_X1 U51 ( .A1(n106), .A2(n52), .B1(n273), .B2(n76), .ZN(n169) );
  OAI22_X1 U52 ( .A1(n106), .A2(n51), .B1(n273), .B2(n74), .ZN(n168) );
  OAI22_X1 U53 ( .A1(n106), .A2(n50), .B1(n273), .B2(n72), .ZN(n167) );
  OAI22_X1 U54 ( .A1(n106), .A2(n49), .B1(n273), .B2(n70), .ZN(n166) );
  OAI22_X1 U55 ( .A1(n103), .A2(n48), .B1(n274), .B2(n84), .ZN(n165) );
  OAI22_X1 U56 ( .A1(n103), .A2(n47), .B1(n274), .B2(n82), .ZN(n164) );
  OAI22_X1 U57 ( .A1(n103), .A2(n46), .B1(n274), .B2(n80), .ZN(n163) );
  OAI22_X1 U58 ( .A1(n103), .A2(n45), .B1(n274), .B2(n78), .ZN(n162) );
  OAI22_X1 U59 ( .A1(n103), .A2(n44), .B1(n274), .B2(n76), .ZN(n161) );
  OAI22_X1 U60 ( .A1(n103), .A2(n43), .B1(n274), .B2(n74), .ZN(n160) );
  OAI22_X1 U61 ( .A1(n103), .A2(n42), .B1(n274), .B2(n72), .ZN(n159) );
  OAI22_X1 U62 ( .A1(n103), .A2(n41), .B1(n274), .B2(n70), .ZN(n158) );
  OAI22_X1 U63 ( .A1(n100), .A2(n40), .B1(n275), .B2(n84), .ZN(n157) );
  OAI22_X1 U64 ( .A1(n100), .A2(n39), .B1(n275), .B2(n82), .ZN(n156) );
  OAI22_X1 U65 ( .A1(n100), .A2(n38), .B1(n275), .B2(n80), .ZN(n155) );
  OAI22_X1 U66 ( .A1(n100), .A2(n37), .B1(n275), .B2(n78), .ZN(n154) );
  OAI22_X1 U67 ( .A1(n100), .A2(n36), .B1(n275), .B2(n76), .ZN(n153) );
  OAI22_X1 U68 ( .A1(n100), .A2(n35), .B1(n275), .B2(n74), .ZN(n152) );
  OAI22_X1 U69 ( .A1(n100), .A2(n34), .B1(n275), .B2(n72), .ZN(n151) );
  OAI22_X1 U70 ( .A1(n100), .A2(n33), .B1(n275), .B2(n70), .ZN(n150) );
  OAI22_X1 U71 ( .A1(n97), .A2(n32), .B1(n276), .B2(n84), .ZN(n149) );
  OAI22_X1 U72 ( .A1(n97), .A2(n31), .B1(n276), .B2(n82), .ZN(n148) );
  OAI22_X1 U73 ( .A1(n97), .A2(n30), .B1(n276), .B2(n80), .ZN(n147) );
  OAI22_X1 U74 ( .A1(n97), .A2(n29), .B1(n276), .B2(n78), .ZN(n146) );
  OAI22_X1 U75 ( .A1(n97), .A2(n28), .B1(n276), .B2(n76), .ZN(n145) );
  OAI22_X1 U76 ( .A1(n97), .A2(n27), .B1(n276), .B2(n74), .ZN(n144) );
  OAI22_X1 U77 ( .A1(n97), .A2(n26), .B1(n276), .B2(n72), .ZN(n143) );
  OAI22_X1 U78 ( .A1(n97), .A2(n25), .B1(n276), .B2(n70), .ZN(n142) );
  OAI22_X1 U79 ( .A1(n94), .A2(n24), .B1(n280), .B2(n84), .ZN(n141) );
  OAI22_X1 U80 ( .A1(n94), .A2(n23), .B1(n280), .B2(n82), .ZN(n140) );
  OAI22_X1 U81 ( .A1(n94), .A2(n22), .B1(n280), .B2(n80), .ZN(n139) );
  OAI22_X1 U82 ( .A1(n94), .A2(n21), .B1(n280), .B2(n78), .ZN(n138) );
  OAI22_X1 U83 ( .A1(n94), .A2(n20), .B1(n280), .B2(n76), .ZN(n137) );
  OAI22_X1 U84 ( .A1(n94), .A2(n19), .B1(n280), .B2(n74), .ZN(n136) );
  OAI22_X1 U85 ( .A1(n94), .A2(n18), .B1(n280), .B2(n72), .ZN(n135) );
  OAI22_X1 U86 ( .A1(n94), .A2(n17), .B1(n280), .B2(n70), .ZN(n134) );
  OAI22_X1 U87 ( .A1(n91), .A2(n16), .B1(n279), .B2(n84), .ZN(n133) );
  OAI22_X1 U88 ( .A1(n91), .A2(n15), .B1(n279), .B2(n82), .ZN(n132) );
  OAI22_X1 U89 ( .A1(n91), .A2(n14), .B1(n279), .B2(n80), .ZN(n131) );
  OAI22_X1 U90 ( .A1(n91), .A2(n13), .B1(n279), .B2(n78), .ZN(n130) );
  OAI22_X1 U91 ( .A1(n91), .A2(n12), .B1(n279), .B2(n76), .ZN(n129) );
  OAI22_X1 U92 ( .A1(n91), .A2(n11), .B1(n279), .B2(n74), .ZN(n128) );
  OAI22_X1 U93 ( .A1(n91), .A2(n10), .B1(n279), .B2(n72), .ZN(n127) );
  OAI22_X1 U94 ( .A1(n91), .A2(n9), .B1(n279), .B2(n70), .ZN(n126) );
  OAI22_X1 U95 ( .A1(n88), .A2(n8), .B1(n278), .B2(n84), .ZN(n125) );
  OAI22_X1 U96 ( .A1(n88), .A2(n7), .B1(n278), .B2(n82), .ZN(n124) );
  OAI22_X1 U97 ( .A1(n88), .A2(n6), .B1(n278), .B2(n80), .ZN(n123) );
  OAI22_X1 U98 ( .A1(n88), .A2(n5), .B1(n278), .B2(n78), .ZN(n122) );
  OAI22_X1 U99 ( .A1(n88), .A2(n4), .B1(n278), .B2(n76), .ZN(n121) );
  OAI22_X1 U100 ( .A1(n88), .A2(n3), .B1(n278), .B2(n74), .ZN(n120) );
  OAI22_X1 U101 ( .A1(n88), .A2(n2), .B1(n278), .B2(n72), .ZN(n119) );
  OAI22_X1 U102 ( .A1(n88), .A2(n1), .B1(n278), .B2(n70), .ZN(n118) );
  NAND2_X1 U103 ( .A1(n86), .A2(n99), .ZN(n98) );
  NAND2_X1 U104 ( .A1(n86), .A2(n93), .ZN(n92) );
  NAND2_X1 U105 ( .A1(n86), .A2(n90), .ZN(n89) );
  NAND2_X1 U106 ( .A1(n86), .A2(n105), .ZN(n104) );
  NAND2_X1 U107 ( .A1(n86), .A2(n102), .ZN(n101) );
  NAND2_X1 U108 ( .A1(n86), .A2(n96), .ZN(n95) );
  NOR2_X2 U109 ( .A1(rd[1]), .A2(rd[2]), .ZN(n193) );
  NOR2_X2 U110 ( .A1(rs[1]), .A2(rs[2]), .ZN(n248) );
  NOR2_X2 U111 ( .A1(n201), .A2(rd[1]), .ZN(n196) );
  NOR2_X2 U120 ( .A1(n256), .A2(rs[1]), .ZN(n251) );
  NOR2_X2 U121 ( .A1(n200), .A2(rd[2]), .ZN(n192) );
  NOR2_X2 U122 ( .A1(n255), .A2(rs[2]), .ZN(n247) );
  INV_X1 U123 ( .A(n66), .ZN(n204) );
  AND2_X1 U124 ( .A1(regwrite), .A2(n283), .ZN(n107) );
  INV_X1 U125 ( .A(rd[2]), .ZN(n201) );
  INV_X1 U126 ( .A(rs[2]), .ZN(n256) );
  INV_X1 U127 ( .A(rd[1]), .ZN(n200) );
  INV_X1 U128 ( .A(rs[1]), .ZN(n255) );
  INV_X1 U129 ( .A(write_address[2]), .ZN(n277) );
  INV_X1 U130 ( .A(write_address[1]), .ZN(n281) );
  INV_X1 U131 ( .A(write_address[0]), .ZN(n282) );
  INV_X1 U132 ( .A(rst), .ZN(n283) );
  INV_X1 U133 ( .A(n58), .ZN(n202) );
  INV_X1 U134 ( .A(n57), .ZN(n210) );
  INV_X1 U135 ( .A(n62), .ZN(n203) );
  INV_X1 U136 ( .A(n61), .ZN(n211) );
  INV_X1 U137 ( .A(n65), .ZN(n212) );
  INV_X1 U138 ( .A(n176), .ZN(n205) );
  INV_X1 U139 ( .A(n175), .ZN(n213) );
  INV_X1 U140 ( .A(n180), .ZN(n206) );
  INV_X1 U141 ( .A(n179), .ZN(n214) );
  INV_X1 U142 ( .A(n184), .ZN(n207) );
  INV_X1 U143 ( .A(n183), .ZN(n215) );
  INV_X1 U144 ( .A(n188), .ZN(n208) );
  INV_X1 U145 ( .A(n187), .ZN(n216) );
  INV_X1 U146 ( .A(n194), .ZN(n209) );
  INV_X1 U147 ( .A(n191), .ZN(n217) );
  INV_X1 U148 ( .A(n219), .ZN(n257) );
  INV_X1 U149 ( .A(n218), .ZN(n265) );
  INV_X1 U150 ( .A(n223), .ZN(n258) );
  INV_X1 U151 ( .A(n222), .ZN(n266) );
  INV_X1 U152 ( .A(n227), .ZN(n259) );
  INV_X1 U153 ( .A(n226), .ZN(n267) );
  INV_X1 U154 ( .A(n231), .ZN(n260) );
  INV_X1 U155 ( .A(n230), .ZN(n268) );
  INV_X1 U156 ( .A(n235), .ZN(n261) );
  INV_X1 U157 ( .A(n234), .ZN(n269) );
  INV_X1 U158 ( .A(n239), .ZN(n262) );
  INV_X1 U159 ( .A(n238), .ZN(n270) );
  INV_X1 U160 ( .A(n243), .ZN(n263) );
  INV_X1 U161 ( .A(n242), .ZN(n271) );
  INV_X1 U162 ( .A(n249), .ZN(n264) );
  INV_X1 U163 ( .A(n246), .ZN(n272) );
  INV_X1 U164 ( .A(rd[0]), .ZN(n199) );
  INV_X1 U165 ( .A(rs[0]), .ZN(n254) );
  AOI22_X1 U166 ( .A1(register_memory[8]), .A2(n193), .B1(register_memory[24]), 
        .B2(n192), .ZN(n57) );
  AOI221_X1 U167 ( .B1(register_memory[40]), .B2(n196), .C1(
        register_memory[56]), .C2(n195), .A(n210), .ZN(n60) );
  AOI22_X1 U168 ( .A1(register_memory[0]), .A2(n193), .B1(register_memory[16]), 
        .B2(n192), .ZN(n58) );
  AOI221_X1 U169 ( .B1(register_memory[32]), .B2(n196), .C1(
        register_memory[48]), .C2(n195), .A(n202), .ZN(n59) );
  OAI22_X1 U170 ( .A1(n199), .A2(n60), .B1(rd[0]), .B2(n59), .ZN(
        read_data_1[0]) );
  AOI22_X1 U171 ( .A1(register_memory[9]), .A2(n193), .B1(register_memory[25]), 
        .B2(n192), .ZN(n61) );
  AOI221_X1 U172 ( .B1(register_memory[41]), .B2(n196), .C1(
        register_memory[57]), .C2(n195), .A(n211), .ZN(n64) );
  AOI22_X1 U173 ( .A1(register_memory[1]), .A2(n193), .B1(register_memory[17]), 
        .B2(n192), .ZN(n62) );
  AOI221_X1 U174 ( .B1(register_memory[33]), .B2(n196), .C1(
        register_memory[49]), .C2(n195), .A(n203), .ZN(n63) );
  OAI22_X1 U175 ( .A1(n199), .A2(n64), .B1(rd[0]), .B2(n63), .ZN(
        read_data_1[1]) );
  AOI22_X1 U176 ( .A1(register_memory[10]), .A2(n193), .B1(register_memory[26]), .B2(n192), .ZN(n65) );
  AOI221_X1 U177 ( .B1(register_memory[42]), .B2(n196), .C1(
        register_memory[58]), .C2(n195), .A(n212), .ZN(n174) );
  AOI22_X1 U178 ( .A1(register_memory[2]), .A2(n193), .B1(register_memory[18]), 
        .B2(n192), .ZN(n66) );
  AOI221_X1 U179 ( .B1(register_memory[34]), .B2(n196), .C1(
        register_memory[50]), .C2(n195), .A(n204), .ZN(n67) );
  OAI22_X1 U180 ( .A1(n199), .A2(n174), .B1(rd[0]), .B2(n67), .ZN(
        read_data_1[2]) );
  AOI22_X1 U181 ( .A1(register_memory[11]), .A2(n193), .B1(register_memory[27]), .B2(n192), .ZN(n175) );
  AOI221_X1 U182 ( .B1(register_memory[43]), .B2(n196), .C1(
        register_memory[59]), .C2(n195), .A(n213), .ZN(n178) );
  AOI22_X1 U183 ( .A1(register_memory[3]), .A2(n193), .B1(register_memory[19]), 
        .B2(n192), .ZN(n176) );
  AOI221_X1 U184 ( .B1(register_memory[35]), .B2(n196), .C1(
        register_memory[51]), .C2(n195), .A(n205), .ZN(n177) );
  OAI22_X1 U185 ( .A1(n199), .A2(n178), .B1(rd[0]), .B2(n177), .ZN(
        read_data_1[3]) );
  AOI22_X1 U186 ( .A1(register_memory[12]), .A2(n193), .B1(register_memory[28]), .B2(n192), .ZN(n179) );
  AOI221_X1 U187 ( .B1(register_memory[44]), .B2(n196), .C1(
        register_memory[60]), .C2(n195), .A(n214), .ZN(n182) );
  AOI22_X1 U188 ( .A1(register_memory[4]), .A2(n193), .B1(register_memory[20]), 
        .B2(n192), .ZN(n180) );
  AOI221_X1 U189 ( .B1(register_memory[36]), .B2(n196), .C1(
        register_memory[52]), .C2(n195), .A(n206), .ZN(n181) );
  OAI22_X1 U190 ( .A1(n199), .A2(n182), .B1(rd[0]), .B2(n181), .ZN(
        read_data_1[4]) );
  AOI22_X1 U191 ( .A1(register_memory[13]), .A2(n193), .B1(register_memory[29]), .B2(n192), .ZN(n183) );
  AOI221_X1 U192 ( .B1(register_memory[45]), .B2(n196), .C1(
        register_memory[61]), .C2(n195), .A(n215), .ZN(n186) );
  AOI22_X1 U193 ( .A1(register_memory[5]), .A2(n193), .B1(register_memory[21]), 
        .B2(n192), .ZN(n184) );
  AOI221_X1 U194 ( .B1(register_memory[37]), .B2(n196), .C1(
        register_memory[53]), .C2(n195), .A(n207), .ZN(n185) );
  OAI22_X1 U195 ( .A1(n199), .A2(n186), .B1(rd[0]), .B2(n185), .ZN(
        read_data_1[5]) );
  AOI22_X1 U196 ( .A1(register_memory[14]), .A2(n193), .B1(register_memory[30]), .B2(n192), .ZN(n187) );
  AOI221_X1 U197 ( .B1(register_memory[46]), .B2(n196), .C1(
        register_memory[62]), .C2(n195), .A(n216), .ZN(n190) );
  AOI22_X1 U198 ( .A1(register_memory[6]), .A2(n193), .B1(register_memory[22]), 
        .B2(n192), .ZN(n188) );
  AOI221_X1 U199 ( .B1(register_memory[38]), .B2(n196), .C1(
        register_memory[54]), .C2(n195), .A(n208), .ZN(n189) );
  OAI22_X1 U200 ( .A1(n199), .A2(n190), .B1(rd[0]), .B2(n189), .ZN(
        read_data_1[6]) );
  AOI22_X1 U201 ( .A1(register_memory[15]), .A2(n193), .B1(register_memory[31]), .B2(n192), .ZN(n191) );
  AOI221_X1 U202 ( .B1(register_memory[47]), .B2(n196), .C1(
        register_memory[63]), .C2(n195), .A(n217), .ZN(n198) );
  AOI22_X1 U203 ( .A1(register_memory[7]), .A2(n193), .B1(register_memory[23]), 
        .B2(n192), .ZN(n194) );
  AOI221_X1 U204 ( .B1(register_memory[39]), .B2(n196), .C1(
        register_memory[55]), .C2(n195), .A(n209), .ZN(n197) );
  OAI22_X1 U205 ( .A1(n198), .A2(n199), .B1(rd[0]), .B2(n197), .ZN(
        read_data_1[7]) );
  AOI22_X1 U206 ( .A1(register_memory[8]), .A2(n248), .B1(register_memory[24]), 
        .B2(n247), .ZN(n218) );
  AOI221_X1 U207 ( .B1(register_memory[40]), .B2(n251), .C1(
        register_memory[56]), .C2(n250), .A(n265), .ZN(n221) );
  AOI22_X1 U208 ( .A1(register_memory[0]), .A2(n248), .B1(register_memory[16]), 
        .B2(n247), .ZN(n219) );
  AOI221_X1 U209 ( .B1(register_memory[32]), .B2(n251), .C1(
        register_memory[48]), .C2(n250), .A(n257), .ZN(n220) );
  OAI22_X1 U210 ( .A1(n254), .A2(n221), .B1(rs[0]), .B2(n220), .ZN(
        read_data_2[0]) );
  AOI22_X1 U211 ( .A1(register_memory[9]), .A2(n248), .B1(register_memory[25]), 
        .B2(n247), .ZN(n222) );
  AOI221_X1 U212 ( .B1(register_memory[41]), .B2(n251), .C1(
        register_memory[57]), .C2(n250), .A(n266), .ZN(n225) );
  AOI22_X1 U213 ( .A1(register_memory[1]), .A2(n248), .B1(register_memory[17]), 
        .B2(n247), .ZN(n223) );
  AOI221_X1 U214 ( .B1(register_memory[33]), .B2(n251), .C1(
        register_memory[49]), .C2(n250), .A(n258), .ZN(n224) );
  OAI22_X1 U215 ( .A1(n254), .A2(n225), .B1(rs[0]), .B2(n224), .ZN(
        read_data_2[1]) );
  AOI22_X1 U216 ( .A1(register_memory[10]), .A2(n248), .B1(register_memory[26]), .B2(n247), .ZN(n226) );
  AOI221_X1 U217 ( .B1(register_memory[42]), .B2(n251), .C1(
        register_memory[58]), .C2(n250), .A(n267), .ZN(n229) );
  AOI22_X1 U218 ( .A1(register_memory[2]), .A2(n248), .B1(register_memory[18]), 
        .B2(n247), .ZN(n227) );
  AOI221_X1 U219 ( .B1(register_memory[34]), .B2(n251), .C1(
        register_memory[50]), .C2(n250), .A(n259), .ZN(n228) );
  OAI22_X1 U220 ( .A1(n254), .A2(n229), .B1(rs[0]), .B2(n228), .ZN(
        read_data_2[2]) );
  AOI22_X1 U221 ( .A1(register_memory[11]), .A2(n248), .B1(register_memory[27]), .B2(n247), .ZN(n230) );
  AOI221_X1 U222 ( .B1(register_memory[43]), .B2(n251), .C1(
        register_memory[59]), .C2(n250), .A(n268), .ZN(n233) );
  AOI22_X1 U223 ( .A1(register_memory[3]), .A2(n248), .B1(register_memory[19]), 
        .B2(n247), .ZN(n231) );
  AOI221_X1 U224 ( .B1(register_memory[35]), .B2(n251), .C1(
        register_memory[51]), .C2(n250), .A(n260), .ZN(n232) );
  OAI22_X1 U225 ( .A1(n254), .A2(n233), .B1(rs[0]), .B2(n232), .ZN(
        read_data_2[3]) );
  AOI22_X1 U226 ( .A1(register_memory[12]), .A2(n248), .B1(register_memory[28]), .B2(n247), .ZN(n234) );
  AOI221_X1 U227 ( .B1(register_memory[44]), .B2(n251), .C1(
        register_memory[60]), .C2(n250), .A(n269), .ZN(n237) );
  AOI22_X1 U228 ( .A1(register_memory[4]), .A2(n248), .B1(register_memory[20]), 
        .B2(n247), .ZN(n235) );
  AOI221_X1 U229 ( .B1(register_memory[36]), .B2(n251), .C1(
        register_memory[52]), .C2(n250), .A(n261), .ZN(n236) );
  OAI22_X1 U230 ( .A1(n254), .A2(n237), .B1(rs[0]), .B2(n236), .ZN(
        read_data_2[4]) );
  AOI22_X1 U231 ( .A1(register_memory[13]), .A2(n248), .B1(register_memory[29]), .B2(n247), .ZN(n238) );
  AOI221_X1 U232 ( .B1(register_memory[45]), .B2(n251), .C1(
        register_memory[61]), .C2(n250), .A(n270), .ZN(n241) );
  AOI22_X1 U233 ( .A1(register_memory[5]), .A2(n248), .B1(register_memory[21]), 
        .B2(n247), .ZN(n239) );
  AOI221_X1 U234 ( .B1(register_memory[37]), .B2(n251), .C1(
        register_memory[53]), .C2(n250), .A(n262), .ZN(n240) );
  OAI22_X1 U235 ( .A1(n254), .A2(n241), .B1(rs[0]), .B2(n240), .ZN(
        read_data_2[5]) );
  AOI22_X1 U236 ( .A1(register_memory[14]), .A2(n248), .B1(register_memory[30]), .B2(n247), .ZN(n242) );
  AOI221_X1 U237 ( .B1(register_memory[46]), .B2(n251), .C1(
        register_memory[62]), .C2(n250), .A(n271), .ZN(n245) );
  AOI22_X1 U238 ( .A1(register_memory[6]), .A2(n248), .B1(register_memory[22]), 
        .B2(n247), .ZN(n243) );
  AOI221_X1 U239 ( .B1(register_memory[38]), .B2(n251), .C1(
        register_memory[54]), .C2(n250), .A(n263), .ZN(n244) );
  OAI22_X1 U240 ( .A1(n254), .A2(n245), .B1(rs[0]), .B2(n244), .ZN(
        read_data_2[6]) );
  AOI22_X1 U241 ( .A1(register_memory[15]), .A2(n248), .B1(register_memory[31]), .B2(n247), .ZN(n246) );
  AOI221_X1 U242 ( .B1(register_memory[47]), .B2(n251), .C1(
        register_memory[63]), .C2(n250), .A(n272), .ZN(n253) );
  AOI22_X1 U243 ( .A1(register_memory[7]), .A2(n248), .B1(register_memory[23]), 
        .B2(n247), .ZN(n249) );
  AOI221_X1 U244 ( .B1(register_memory[39]), .B2(n251), .C1(
        register_memory[55]), .C2(n250), .A(n264), .ZN(n252) );
  OAI22_X1 U245 ( .A1(n253), .A2(n254), .B1(rs[0]), .B2(n252), .ZN(
        read_data_2[7]) );
  AND2_X1 U27 ( .A1(rs[2]), .A2(rs[1]), .ZN(n250) );
  AND2_X1 U28 ( .A1(rd[2]), .A2(rd[1]), .ZN(n195) );
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


module pc_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module pc ( pc_increment_address, clk, rst );
  output [7:0] pc_increment_address;
  input clk, rst;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n1;

  DFF_X1 pc_increment_address_reg_0_ ( .D(N11), .CK(clk), .Q(
        pc_increment_address[0]) );
  DFF_X1 pc_increment_address_reg_1_ ( .D(N12), .CK(clk), .Q(
        pc_increment_address[1]) );
  DFF_X1 pc_increment_address_reg_2_ ( .D(N13), .CK(clk), .Q(
        pc_increment_address[2]) );
  DFF_X1 pc_increment_address_reg_3_ ( .D(N14), .CK(clk), .Q(
        pc_increment_address[3]) );
  DFF_X1 pc_increment_address_reg_4_ ( .D(N15), .CK(clk), .Q(
        pc_increment_address[4]) );
  DFF_X1 pc_increment_address_reg_5_ ( .D(N16), .CK(clk), .Q(
        pc_increment_address[5]) );
  DFF_X1 pc_increment_address_reg_6_ ( .D(N17), .CK(clk), .Q(
        pc_increment_address[6]) );
  DFF_X1 pc_increment_address_reg_7_ ( .D(N18), .CK(clk), .Q(
        pc_increment_address[7]) );
  pc_DW01_inc_0 add_20 ( .A(pc_increment_address), .SUM({N10, N9, N8, N7, N6, 
        N5, N4, N3}) );
  AND2_X1 U3 ( .A1(N9), .A2(n1), .ZN(N17) );
  AND2_X1 U4 ( .A1(N8), .A2(n1), .ZN(N16) );
  AND2_X1 U5 ( .A1(N7), .A2(n1), .ZN(N15) );
  AND2_X1 U6 ( .A1(N6), .A2(n1), .ZN(N14) );
  AND2_X1 U7 ( .A1(N5), .A2(n1), .ZN(N13) );
  AND2_X1 U8 ( .A1(N4), .A2(n1), .ZN(N12) );
  AND2_X1 U9 ( .A1(N10), .A2(n1), .ZN(N18) );
  INV_X1 U10 ( .A(rst), .ZN(n1) );
  AND2_X1 U11 ( .A1(N3), .A2(n1), .ZN(N11) );
endmodule


module riscv8bit ( data_from_ram, mem_read_from_idandex, 
        mem_write_from_idandex, alu_result_from_idandex, write_data_to_memory, 
        ram_data, pc_increment_address, instruction_input, rst, 
        rst_registerfile, clk );
  output [7:0] data_from_ram;
  output [7:0] alu_result_from_idandex;
  output [7:0] write_data_to_memory;
  input [7:0] ram_data;
  output [7:0] pc_increment_address;
  input [15:0] instruction_input;
  input rst, rst_registerfile, clk;
  output mem_read_from_idandex, mem_write_from_idandex;


  id_to_wb id_to_wb1 ( .data_from_ram(data_from_ram), .mem_read_from_idandex(
        mem_read_from_idandex), .mem_write_from_idandex(mem_write_from_idandex), .alu_result_from_idandex(alu_result_from_idandex), .write_data_to_memory(
        write_data_to_memory), .ram_data(ram_data), .instruction_input(
        instruction_input), .rst(rst), .rst_registerfile(rst_registerfile), 
        .clk(clk) );
  pc pc1 ( .pc_increment_address(pc_increment_address), .clk(clk), .rst(rst)
         );
endmodule

