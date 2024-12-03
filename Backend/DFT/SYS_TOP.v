/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Oct 15 02:44:48 2022
/////////////////////////////////////////////////////////////


module RegFile_test_1 ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so1;
  wire   MEM_15__7_, MEM_15__6_, MEM_15__5_, MEM_15__4_, MEM_15__3_,
         MEM_15__2_, MEM_15__1_, MEM_15__0_, MEM_14__7_, MEM_14__6_,
         MEM_14__5_, MEM_14__4_, MEM_14__2_, MEM_14__1_, MEM_14__0_,
         MEM_13__7_, MEM_13__6_, MEM_13__5_, MEM_13__4_, MEM_13__3_,
         MEM_13__2_, MEM_13__1_, MEM_13__0_, MEM_12__7_, MEM_12__6_,
         MEM_12__5_, MEM_12__4_, MEM_12__3_, MEM_12__2_, MEM_12__1_,
         MEM_12__0_, MEM_11__7_, MEM_11__6_, MEM_11__5_, MEM_11__4_,
         MEM_11__3_, MEM_11__2_, MEM_11__1_, MEM_11__0_, MEM_10__7_,
         MEM_10__6_, MEM_10__5_, MEM_10__4_, MEM_10__3_, MEM_10__2_,
         MEM_10__1_, MEM_10__0_, MEM_9__7_, MEM_9__6_, MEM_9__5_, MEM_9__4_,
         MEM_9__3_, MEM_9__2_, MEM_9__1_, MEM_9__0_, MEM_8__7_, MEM_8__6_,
         MEM_8__5_, MEM_8__4_, MEM_8__3_, MEM_8__2_, MEM_8__1_, MEM_8__0_,
         MEM_7__7_, MEM_7__6_, MEM_7__5_, MEM_7__4_, MEM_7__3_, MEM_7__2_,
         MEM_7__1_, MEM_7__0_, MEM_6__7_, MEM_6__6_, MEM_6__5_, MEM_6__4_,
         MEM_6__3_, MEM_6__2_, MEM_6__1_, MEM_6__0_, MEM_5__7_, MEM_5__6_,
         MEM_5__5_, MEM_5__4_, MEM_5__3_, MEM_5__2_, MEM_5__1_, MEM_5__0_,
         MEM_4__7_, MEM_4__6_, MEM_4__5_, MEM_4__4_, MEM_4__3_, MEM_4__2_,
         MEM_4__1_, MEM_4__0_, N36, N37, N38, N39, N40, N41, N42, N43, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367;

  SDFFRQX2M RdData_reg_7_ ( .D(n186), .SI(RdData[6]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[7]) );
  SDFFRQX2M RdData_reg_6_ ( .D(n185), .SI(RdData[5]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[6]) );
  SDFFRQX2M RdData_reg_5_ ( .D(n184), .SI(RdData[4]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[5]) );
  SDFFRQX2M RdData_reg_4_ ( .D(n183), .SI(RdData[3]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[4]) );
  SDFFRQX2M RdData_reg_3_ ( .D(n182), .SI(RdData[2]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[3]) );
  SDFFRQX2M RdData_reg_2_ ( .D(n181), .SI(RdData[1]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[2]) );
  SDFFRQX2M RdData_reg_1_ ( .D(n180), .SI(RdData[0]), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(RdData[1]) );
  SDFFRQX2M RdData_reg_0_ ( .D(n179), .SI(RdData_Valid), .SE(test_se), .CK(CLK), .RN(n341), .Q(RdData[0]) );
  SDFFRQX2M MEM_reg_13__7_ ( .D(n298), .SI(MEM_13__6_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__7_) );
  SDFFRQX2M MEM_reg_13__6_ ( .D(n297), .SI(MEM_13__5_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__6_) );
  SDFFRQX2M MEM_reg_13__5_ ( .D(n296), .SI(MEM_13__4_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__5_) );
  SDFFRQX2M MEM_reg_13__4_ ( .D(n295), .SI(MEM_13__3_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__4_) );
  SDFFRQX2M MEM_reg_13__3_ ( .D(n294), .SI(MEM_13__2_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__3_) );
  SDFFRQX2M MEM_reg_13__2_ ( .D(n293), .SI(MEM_13__1_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__2_) );
  SDFFRQX2M MEM_reg_13__1_ ( .D(n292), .SI(MEM_13__0_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__1_) );
  SDFFRQX2M MEM_reg_13__0_ ( .D(n291), .SI(MEM_12__7_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_13__0_) );
  SDFFRQX2M MEM_reg_9__7_ ( .D(n266), .SI(MEM_9__6_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__7_) );
  SDFFRQX2M MEM_reg_9__6_ ( .D(n265), .SI(MEM_9__5_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__6_) );
  SDFFRQX2M MEM_reg_9__5_ ( .D(n264), .SI(MEM_9__4_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__5_) );
  SDFFRQX2M MEM_reg_9__4_ ( .D(n263), .SI(MEM_9__3_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__4_) );
  SDFFRQX2M MEM_reg_9__3_ ( .D(n262), .SI(MEM_9__2_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__3_) );
  SDFFRQX2M MEM_reg_9__2_ ( .D(n261), .SI(MEM_9__1_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__2_) );
  SDFFRQX2M MEM_reg_9__1_ ( .D(n260), .SI(MEM_9__0_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_9__1_) );
  SDFFRQX2M MEM_reg_9__0_ ( .D(n259), .SI(MEM_8__7_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_9__0_) );
  SDFFRQX2M MEM_reg_5__7_ ( .D(n234), .SI(MEM_5__6_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_5__7_) );
  SDFFRQX2M MEM_reg_5__6_ ( .D(n233), .SI(MEM_5__5_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_5__6_) );
  SDFFRQX2M MEM_reg_5__5_ ( .D(n232), .SI(MEM_5__4_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__5_) );
  SDFFRQX2M MEM_reg_5__4_ ( .D(n231), .SI(MEM_5__3_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__4_) );
  SDFFRQX2M MEM_reg_5__3_ ( .D(n230), .SI(MEM_5__2_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__3_) );
  SDFFRQX2M MEM_reg_5__2_ ( .D(n229), .SI(MEM_5__1_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__2_) );
  SDFFRQX2M MEM_reg_5__1_ ( .D(n228), .SI(MEM_5__0_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__1_) );
  SDFFRQX2M MEM_reg_5__0_ ( .D(n227), .SI(MEM_4__7_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_5__0_) );
  SDFFRQX2M MEM_reg_15__7_ ( .D(n314), .SI(MEM_15__6_), .SE(test_se), .CK(CLK), 
        .RN(n341), .Q(MEM_15__7_) );
  SDFFRQX2M MEM_reg_15__6_ ( .D(n313), .SI(MEM_15__5_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__6_) );
  SDFFRQX2M MEM_reg_15__5_ ( .D(n312), .SI(MEM_15__4_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__5_) );
  SDFFRQX2M MEM_reg_15__4_ ( .D(n311), .SI(MEM_15__3_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__4_) );
  SDFFRQX2M MEM_reg_15__3_ ( .D(n310), .SI(MEM_15__2_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__3_) );
  SDFFRQX2M MEM_reg_15__2_ ( .D(n309), .SI(MEM_15__1_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__2_) );
  SDFFRQX2M MEM_reg_15__1_ ( .D(n308), .SI(MEM_15__0_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__1_) );
  SDFFRQX2M MEM_reg_15__0_ ( .D(n307), .SI(MEM_14__7_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_15__0_) );
  SDFFRQX2M MEM_reg_11__7_ ( .D(n282), .SI(MEM_11__6_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__7_) );
  SDFFRQX2M MEM_reg_11__6_ ( .D(n281), .SI(MEM_11__5_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__6_) );
  SDFFRQX2M MEM_reg_11__5_ ( .D(n280), .SI(MEM_11__4_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__5_) );
  SDFFRQX2M MEM_reg_11__4_ ( .D(n279), .SI(MEM_11__3_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__4_) );
  SDFFRQX2M MEM_reg_11__3_ ( .D(n278), .SI(MEM_11__2_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__3_) );
  SDFFRQX2M MEM_reg_11__2_ ( .D(n277), .SI(MEM_11__1_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__2_) );
  SDFFRQX2M MEM_reg_11__1_ ( .D(n276), .SI(MEM_11__0_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__1_) );
  SDFFRQX2M MEM_reg_11__0_ ( .D(n275), .SI(MEM_10__7_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_11__0_) );
  SDFFRQX2M MEM_reg_7__7_ ( .D(n250), .SI(MEM_7__6_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_7__7_) );
  SDFFRQX2M MEM_reg_7__6_ ( .D(n249), .SI(MEM_7__5_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_7__6_) );
  SDFFRQX2M MEM_reg_7__5_ ( .D(n248), .SI(MEM_7__4_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_7__5_) );
  SDFFRQX2M MEM_reg_7__4_ ( .D(n247), .SI(MEM_7__3_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_7__4_) );
  SDFFRQX2M MEM_reg_7__3_ ( .D(n246), .SI(MEM_7__2_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_7__3_) );
  SDFFRQX2M MEM_reg_7__2_ ( .D(n245), .SI(MEM_7__1_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_7__2_) );
  SDFFRQX2M MEM_reg_7__1_ ( .D(n244), .SI(MEM_7__0_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_7__1_) );
  SDFFRQX2M MEM_reg_7__0_ ( .D(n243), .SI(MEM_6__7_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_7__0_) );
  SDFFRQX2M MEM_reg_3__7_ ( .D(n218), .SI(REG3[6]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[7]) );
  SDFFRQX2M MEM_reg_3__6_ ( .D(n217), .SI(REG3[5]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[6]) );
  SDFFRQX2M MEM_reg_3__5_ ( .D(n216), .SI(REG3[4]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[5]) );
  SDFFRQX2M MEM_reg_3__4_ ( .D(n215), .SI(REG3[3]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[4]) );
  SDFFRQX2M MEM_reg_14__7_ ( .D(n306), .SI(MEM_14__6_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_14__7_) );
  SDFFRQX2M MEM_reg_14__6_ ( .D(n305), .SI(MEM_14__5_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_14__6_) );
  SDFFRQX2M MEM_reg_14__5_ ( .D(n304), .SI(MEM_14__4_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_14__5_) );
  SDFFRQX2M MEM_reg_14__4_ ( .D(n303), .SI(test_si3), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(MEM_14__4_) );
  SDFFRQX2M MEM_reg_14__3_ ( .D(n302), .SI(MEM_14__2_), .SE(test_se), .CK(CLK), 
        .RN(n350), .Q(test_so1) );
  SDFFRQX2M MEM_reg_14__2_ ( .D(n301), .SI(MEM_14__1_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_14__2_) );
  SDFFRQX2M MEM_reg_14__1_ ( .D(n300), .SI(MEM_14__0_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_14__1_) );
  SDFFRQX2M MEM_reg_14__0_ ( .D(n299), .SI(MEM_13__7_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_14__0_) );
  SDFFRQX2M MEM_reg_10__7_ ( .D(n274), .SI(MEM_10__6_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_10__7_) );
  SDFFRQX2M MEM_reg_10__6_ ( .D(n273), .SI(MEM_10__5_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__6_) );
  SDFFRQX2M MEM_reg_10__5_ ( .D(n272), .SI(MEM_10__4_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__5_) );
  SDFFRQX2M MEM_reg_10__4_ ( .D(n271), .SI(MEM_10__3_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__4_) );
  SDFFRQX2M MEM_reg_10__3_ ( .D(n270), .SI(MEM_10__2_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__3_) );
  SDFFRQX2M MEM_reg_10__2_ ( .D(n269), .SI(MEM_10__1_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__2_) );
  SDFFRQX2M MEM_reg_10__1_ ( .D(n268), .SI(MEM_10__0_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__1_) );
  SDFFRQX2M MEM_reg_10__0_ ( .D(n267), .SI(MEM_9__7_), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(MEM_10__0_) );
  SDFFRQX2M MEM_reg_6__7_ ( .D(n242), .SI(MEM_6__6_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__7_) );
  SDFFRQX2M MEM_reg_6__6_ ( .D(n241), .SI(MEM_6__5_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__6_) );
  SDFFRQX2M MEM_reg_6__5_ ( .D(n240), .SI(MEM_6__4_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__5_) );
  SDFFRQX2M MEM_reg_6__4_ ( .D(n239), .SI(MEM_6__3_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__4_) );
  SDFFRQX2M MEM_reg_6__3_ ( .D(n238), .SI(MEM_6__2_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__3_) );
  SDFFRQX2M MEM_reg_6__2_ ( .D(n237), .SI(MEM_6__1_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__2_) );
  SDFFRQX2M MEM_reg_6__1_ ( .D(n236), .SI(MEM_6__0_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__1_) );
  SDFFRQX2M MEM_reg_6__0_ ( .D(n235), .SI(MEM_5__7_), .SE(test_se), .CK(CLK), 
        .RN(n345), .Q(MEM_6__0_) );
  SDFFRQX2M MEM_reg_2__7_ ( .D(n210), .SI(REG2[6]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG2[7]) );
  SDFFRQX2M MEM_reg_2__2_ ( .D(n205), .SI(REG2[1]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG2[2]) );
  SDFFRQX2M MEM_reg_12__7_ ( .D(n290), .SI(MEM_12__6_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_12__7_) );
  SDFFRQX2M MEM_reg_12__6_ ( .D(n289), .SI(MEM_12__5_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_12__6_) );
  SDFFRQX2M MEM_reg_12__5_ ( .D(n288), .SI(MEM_12__4_), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(MEM_12__5_) );
  SDFFRQX2M MEM_reg_12__4_ ( .D(n287), .SI(MEM_12__3_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_12__4_) );
  SDFFRQX2M MEM_reg_12__3_ ( .D(n286), .SI(MEM_12__2_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_12__3_) );
  SDFFRQX2M MEM_reg_12__2_ ( .D(n285), .SI(MEM_12__1_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_12__2_) );
  SDFFRQX2M MEM_reg_12__1_ ( .D(n284), .SI(MEM_12__0_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_12__1_) );
  SDFFRQX2M MEM_reg_12__0_ ( .D(n283), .SI(MEM_11__7_), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(MEM_12__0_) );
  SDFFRQX2M MEM_reg_8__7_ ( .D(n258), .SI(MEM_8__6_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__7_) );
  SDFFRQX2M MEM_reg_8__6_ ( .D(n257), .SI(MEM_8__5_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__6_) );
  SDFFRQX2M MEM_reg_8__5_ ( .D(n256), .SI(MEM_8__4_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__5_) );
  SDFFRQX2M MEM_reg_8__4_ ( .D(n255), .SI(MEM_8__3_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__4_) );
  SDFFRQX2M MEM_reg_8__3_ ( .D(n254), .SI(MEM_8__2_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__3_) );
  SDFFRQX2M MEM_reg_8__2_ ( .D(n253), .SI(MEM_8__1_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__2_) );
  SDFFRQX2M MEM_reg_8__1_ ( .D(n252), .SI(MEM_8__0_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__1_) );
  SDFFRQX2M MEM_reg_8__0_ ( .D(n251), .SI(MEM_7__7_), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(MEM_8__0_) );
  SDFFRQX2M MEM_reg_4__7_ ( .D(n226), .SI(MEM_4__6_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__7_) );
  SDFFRQX2M MEM_reg_4__6_ ( .D(n225), .SI(MEM_4__5_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__6_) );
  SDFFRQX2M MEM_reg_4__5_ ( .D(n224), .SI(MEM_4__4_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__5_) );
  SDFFRQX2M MEM_reg_4__4_ ( .D(n223), .SI(MEM_4__3_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__4_) );
  SDFFRQX2M MEM_reg_4__3_ ( .D(n222), .SI(MEM_4__2_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__3_) );
  SDFFRQX2M MEM_reg_4__2_ ( .D(n221), .SI(MEM_4__1_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__2_) );
  SDFFRQX2M MEM_reg_4__1_ ( .D(n220), .SI(MEM_4__0_), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__1_) );
  SDFFRQX2M MEM_reg_4__0_ ( .D(n219), .SI(test_si2), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(MEM_4__0_) );
  SDFFSQX2M MEM_reg_2__1_ ( .D(n204), .SI(REG2[0]), .SE(test_se), .CK(CLK), 
        .SN(n341), .Q(REG2[1]) );
  SDFFRQX2M MEM_reg_2__6_ ( .D(n209), .SI(REG2[5]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG2[6]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n178), .SI(MEM_15__7_), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(RdData_Valid) );
  SDFFSQX2M MEM_reg_3__3_ ( .D(n214), .SI(REG3[2]), .SE(test_se), .CK(CLK), 
        .SN(n341), .Q(REG3[3]) );
  SDFFRQX2M MEM_reg_2__4_ ( .D(n207), .SI(REG2[3]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG2[4]) );
  SDFFSQX2M MEM_reg_2__0_ ( .D(n203), .SI(REG1[7]), .SE(test_se), .CK(CLK), 
        .SN(n341), .Q(REG2[0]) );
  SDFFRQX2M MEM_reg_3__0_ ( .D(n211), .SI(REG2[7]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[0]) );
  SDFFRQX2M MEM_reg_3__2_ ( .D(n213), .SI(REG3[1]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[2]) );
  SDFFRQX2M MEM_reg_3__1_ ( .D(n212), .SI(REG3[0]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG3[1]) );
  SDFFRQX2M MEM_reg_2__3_ ( .D(n206), .SI(REG2[2]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG2[3]) );
  SDFFRQX2M MEM_reg_0__1_ ( .D(n188), .SI(REG0[0]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M MEM_reg_0__0_ ( .D(n187), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M MEM_reg_0__2_ ( .D(n189), .SI(REG0[1]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[2]) );
  SDFFRQX2M MEM_reg_0__3_ ( .D(n190), .SI(REG0[2]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[3]) );
  SDFFRQX2M MEM_reg_0__4_ ( .D(n191), .SI(REG0[3]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[4]) );
  SDFFRQX2M MEM_reg_0__5_ ( .D(n192), .SI(REG0[4]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[5]) );
  SDFFRQX2M MEM_reg_0__6_ ( .D(n193), .SI(REG0[5]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[6]) );
  SDFFRQX2M MEM_reg_1__6_ ( .D(n201), .SI(REG1[5]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M MEM_reg_0__7_ ( .D(n194), .SI(REG0[6]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG0[7]) );
  SDFFRQX2M MEM_reg_1__1_ ( .D(n196), .SI(REG1[0]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[1]) );
  SDFFRQX2M MEM_reg_1__5_ ( .D(n200), .SI(REG1[4]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[5]) );
  SDFFRQX2M MEM_reg_1__4_ ( .D(n199), .SI(REG1[3]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[4]) );
  SDFFRQX2M MEM_reg_1__7_ ( .D(n202), .SI(REG1[6]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M MEM_reg_1__3_ ( .D(n198), .SI(REG1[2]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[3]) );
  SDFFRQX2M MEM_reg_1__2_ ( .D(n197), .SI(REG1[1]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[2]) );
  SDFFRQX2M MEM_reg_1__0_ ( .D(n195), .SI(REG0[7]), .SE(test_se), .CK(CLK), 
        .RN(n342), .Q(REG1[0]) );
  SDFFSQX1M MEM_reg_2__5_ ( .D(n208), .SI(REG2[4]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(REG2[5]) );
  NOR2X2M U141 ( .A(n357), .B(Address[2]), .Y(n158) );
  NOR2X2M U142 ( .A(Address[1]), .B(Address[2]), .Y(n153) );
  INVX2M U143 ( .A(n338), .Y(n339) );
  INVX2M U144 ( .A(n336), .Y(n337) );
  INVX2M U145 ( .A(n151), .Y(n358) );
  INVX2M U146 ( .A(n338), .Y(n340) );
  BUFX2M U147 ( .A(n356), .Y(n338) );
  BUFX2M U148 ( .A(n357), .Y(n336) );
  NAND2X2M U149 ( .A(RdEn), .B(n363), .Y(n151) );
  NOR2X2M U150 ( .A(n363), .B(RdEn), .Y(n150) );
  INVX2M U151 ( .A(WrEn), .Y(n363) );
  BUFX2M U152 ( .A(n355), .Y(n342) );
  BUFX2M U153 ( .A(n354), .Y(n343) );
  BUFX2M U154 ( .A(n354), .Y(n344) );
  BUFX2M U155 ( .A(n353), .Y(n345) );
  BUFX2M U156 ( .A(n353), .Y(n346) );
  BUFX2M U157 ( .A(n352), .Y(n347) );
  BUFX2M U158 ( .A(n352), .Y(n348) );
  BUFX2M U159 ( .A(n351), .Y(n349) );
  BUFX2M U160 ( .A(n355), .Y(n341) );
  BUFX2M U161 ( .A(n351), .Y(n350) );
  NAND2X2M U162 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U163 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U164 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U165 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U166 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U167 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U168 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U169 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U170 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U171 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U172 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U173 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U174 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U175 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U176 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U177 ( .A(n153), .B(n154), .Y(n152) );
  INVX2M U178 ( .A(WrData[0]), .Y(n359) );
  INVX2M U179 ( .A(WrData[1]), .Y(n360) );
  INVX2M U180 ( .A(WrData[2]), .Y(n361) );
  INVX2M U181 ( .A(WrData[3]), .Y(n362) );
  INVX2M U182 ( .A(WrData[4]), .Y(n367) );
  INVX2M U183 ( .A(WrData[5]), .Y(n366) );
  INVX2M U184 ( .A(WrData[6]), .Y(n365) );
  AND2X2M U185 ( .A(n165), .B(n356), .Y(n154) );
  AND2X2M U186 ( .A(n165), .B(Address[0]), .Y(n156) );
  AND2X2M U187 ( .A(n176), .B(n356), .Y(n168) );
  AND2X2M U188 ( .A(n176), .B(Address[0]), .Y(n170) );
  BUFX2M U189 ( .A(RST), .Y(n354) );
  BUFX2M U190 ( .A(RST), .Y(n353) );
  BUFX2M U191 ( .A(RST), .Y(n352) );
  BUFX2M U192 ( .A(RST), .Y(n351) );
  BUFX2M U193 ( .A(RST), .Y(n355) );
  INVX2M U194 ( .A(WrData[7]), .Y(n364) );
  OAI2BB2X1M U195 ( .B0(n152), .B1(n359), .A0N(REG0[0]), .A1N(n152), .Y(n187)
         );
  OAI2BB2X1M U196 ( .B0(n152), .B1(n360), .A0N(REG0[1]), .A1N(n152), .Y(n188)
         );
  OAI2BB2X1M U197 ( .B0(n152), .B1(n361), .A0N(REG0[2]), .A1N(n152), .Y(n189)
         );
  OAI2BB2X1M U198 ( .B0(n152), .B1(n362), .A0N(REG0[3]), .A1N(n152), .Y(n190)
         );
  OAI2BB2X1M U199 ( .B0(n152), .B1(n367), .A0N(REG0[4]), .A1N(n152), .Y(n191)
         );
  OAI2BB2X1M U200 ( .B0(n152), .B1(n366), .A0N(REG0[5]), .A1N(n152), .Y(n192)
         );
  OAI2BB2X1M U201 ( .B0(n152), .B1(n365), .A0N(REG0[6]), .A1N(n152), .Y(n193)
         );
  OAI2BB2X1M U202 ( .B0(n152), .B1(n364), .A0N(REG0[7]), .A1N(n152), .Y(n194)
         );
  OAI2BB2X1M U203 ( .B0(n361), .B1(n157), .A0N(REG2[2]), .A1N(n157), .Y(n205)
         );
  OAI2BB2X1M U204 ( .B0(n362), .B1(n157), .A0N(REG2[3]), .A1N(n157), .Y(n206)
         );
  OAI2BB2X1M U205 ( .B0(n367), .B1(n157), .A0N(REG2[4]), .A1N(n157), .Y(n207)
         );
  OAI2BB2X1M U206 ( .B0(n365), .B1(n157), .A0N(REG2[6]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U207 ( .B0(n364), .B1(n157), .A0N(REG2[7]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U208 ( .B0(n359), .B1(n159), .A0N(REG3[0]), .A1N(n159), .Y(n211)
         );
  OAI2BB2X1M U209 ( .B0(n360), .B1(n159), .A0N(REG3[1]), .A1N(n159), .Y(n212)
         );
  OAI2BB2X1M U210 ( .B0(n361), .B1(n159), .A0N(REG3[2]), .A1N(n159), .Y(n213)
         );
  OAI2BB2X1M U211 ( .B0(n367), .B1(n159), .A0N(REG3[4]), .A1N(n159), .Y(n215)
         );
  OAI2BB2X1M U212 ( .B0(n366), .B1(n159), .A0N(REG3[5]), .A1N(n159), .Y(n216)
         );
  OAI2BB2X1M U213 ( .B0(n365), .B1(n159), .A0N(REG3[6]), .A1N(n159), .Y(n217)
         );
  OAI2BB2X1M U214 ( .B0(n364), .B1(n159), .A0N(REG3[7]), .A1N(n159), .Y(n218)
         );
  OAI2BB2X1M U215 ( .B0(n359), .B1(n155), .A0N(REG1[0]), .A1N(n155), .Y(n195)
         );
  OAI2BB2X1M U216 ( .B0(n360), .B1(n155), .A0N(REG1[1]), .A1N(n155), .Y(n196)
         );
  OAI2BB2X1M U217 ( .B0(n361), .B1(n155), .A0N(REG1[2]), .A1N(n155), .Y(n197)
         );
  OAI2BB2X1M U218 ( .B0(n362), .B1(n155), .A0N(REG1[3]), .A1N(n155), .Y(n198)
         );
  OAI2BB2X1M U219 ( .B0(n367), .B1(n155), .A0N(REG1[4]), .A1N(n155), .Y(n199)
         );
  OAI2BB2X1M U220 ( .B0(n366), .B1(n155), .A0N(REG1[5]), .A1N(n155), .Y(n200)
         );
  OAI2BB2X1M U221 ( .B0(n365), .B1(n155), .A0N(REG1[6]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U222 ( .B0(n364), .B1(n155), .A0N(REG1[7]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U223 ( .B0(n359), .B1(n167), .A0N(MEM_8__0_), .A1N(n167), .Y(n251) );
  OAI2BB2X1M U224 ( .B0(n360), .B1(n167), .A0N(MEM_8__1_), .A1N(n167), .Y(n252) );
  OAI2BB2X1M U225 ( .B0(n361), .B1(n167), .A0N(MEM_8__2_), .A1N(n167), .Y(n253) );
  OAI2BB2X1M U226 ( .B0(n362), .B1(n167), .A0N(MEM_8__3_), .A1N(n167), .Y(n254) );
  OAI2BB2X1M U227 ( .B0(n367), .B1(n167), .A0N(MEM_8__4_), .A1N(n167), .Y(n255) );
  OAI2BB2X1M U228 ( .B0(n366), .B1(n167), .A0N(MEM_8__5_), .A1N(n167), .Y(n256) );
  OAI2BB2X1M U229 ( .B0(n365), .B1(n167), .A0N(MEM_8__6_), .A1N(n167), .Y(n257) );
  OAI2BB2X1M U230 ( .B0(n364), .B1(n167), .A0N(MEM_8__7_), .A1N(n167), .Y(n258) );
  OAI2BB2X1M U231 ( .B0(n359), .B1(n169), .A0N(MEM_9__0_), .A1N(n169), .Y(n259) );
  OAI2BB2X1M U232 ( .B0(n360), .B1(n169), .A0N(MEM_9__1_), .A1N(n169), .Y(n260) );
  OAI2BB2X1M U233 ( .B0(n361), .B1(n169), .A0N(MEM_9__2_), .A1N(n169), .Y(n261) );
  OAI2BB2X1M U234 ( .B0(n362), .B1(n169), .A0N(MEM_9__3_), .A1N(n169), .Y(n262) );
  OAI2BB2X1M U235 ( .B0(n367), .B1(n169), .A0N(MEM_9__4_), .A1N(n169), .Y(n263) );
  OAI2BB2X1M U236 ( .B0(n366), .B1(n169), .A0N(MEM_9__5_), .A1N(n169), .Y(n264) );
  OAI2BB2X1M U237 ( .B0(n365), .B1(n169), .A0N(MEM_9__6_), .A1N(n169), .Y(n265) );
  OAI2BB2X1M U238 ( .B0(n364), .B1(n169), .A0N(MEM_9__7_), .A1N(n169), .Y(n266) );
  OAI2BB2X1M U239 ( .B0(n359), .B1(n171), .A0N(MEM_10__0_), .A1N(n171), .Y(
        n267) );
  OAI2BB2X1M U240 ( .B0(n360), .B1(n171), .A0N(MEM_10__1_), .A1N(n171), .Y(
        n268) );
  OAI2BB2X1M U241 ( .B0(n361), .B1(n171), .A0N(MEM_10__2_), .A1N(n171), .Y(
        n269) );
  OAI2BB2X1M U242 ( .B0(n362), .B1(n171), .A0N(MEM_10__3_), .A1N(n171), .Y(
        n270) );
  OAI2BB2X1M U243 ( .B0(n367), .B1(n171), .A0N(MEM_10__4_), .A1N(n171), .Y(
        n271) );
  OAI2BB2X1M U244 ( .B0(n366), .B1(n171), .A0N(MEM_10__5_), .A1N(n171), .Y(
        n272) );
  OAI2BB2X1M U245 ( .B0(n365), .B1(n171), .A0N(MEM_10__6_), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U246 ( .B0(n364), .B1(n171), .A0N(MEM_10__7_), .A1N(n171), .Y(
        n274) );
  OAI2BB2X1M U247 ( .B0(n359), .B1(n172), .A0N(MEM_11__0_), .A1N(n172), .Y(
        n275) );
  OAI2BB2X1M U248 ( .B0(n360), .B1(n172), .A0N(MEM_11__1_), .A1N(n172), .Y(
        n276) );
  OAI2BB2X1M U249 ( .B0(n361), .B1(n172), .A0N(MEM_11__2_), .A1N(n172), .Y(
        n277) );
  OAI2BB2X1M U250 ( .B0(n362), .B1(n172), .A0N(MEM_11__3_), .A1N(n172), .Y(
        n278) );
  OAI2BB2X1M U251 ( .B0(n367), .B1(n172), .A0N(MEM_11__4_), .A1N(n172), .Y(
        n279) );
  OAI2BB2X1M U252 ( .B0(n366), .B1(n172), .A0N(MEM_11__5_), .A1N(n172), .Y(
        n280) );
  OAI2BB2X1M U253 ( .B0(n365), .B1(n172), .A0N(MEM_11__6_), .A1N(n172), .Y(
        n281) );
  OAI2BB2X1M U254 ( .B0(n364), .B1(n172), .A0N(MEM_11__7_), .A1N(n172), .Y(
        n282) );
  OAI2BB2X1M U255 ( .B0(n359), .B1(n157), .A0N(REG2[0]), .A1N(n157), .Y(n203)
         );
  OAI2BB2X1M U256 ( .B0(n360), .B1(n157), .A0N(REG2[1]), .A1N(n157), .Y(n204)
         );
  OAI2BB2X1M U257 ( .B0(n366), .B1(n157), .A0N(REG2[5]), .A1N(n157), .Y(n208)
         );
  OAI2BB2X1M U258 ( .B0(n362), .B1(n159), .A0N(REG3[3]), .A1N(n159), .Y(n214)
         );
  OAI2BB2X1M U259 ( .B0(n359), .B1(n160), .A0N(MEM_4__0_), .A1N(n160), .Y(n219) );
  OAI2BB2X1M U260 ( .B0(n360), .B1(n160), .A0N(MEM_4__1_), .A1N(n160), .Y(n220) );
  OAI2BB2X1M U261 ( .B0(n361), .B1(n160), .A0N(MEM_4__2_), .A1N(n160), .Y(n221) );
  OAI2BB2X1M U262 ( .B0(n362), .B1(n160), .A0N(MEM_4__3_), .A1N(n160), .Y(n222) );
  OAI2BB2X1M U263 ( .B0(n367), .B1(n160), .A0N(MEM_4__4_), .A1N(n160), .Y(n223) );
  OAI2BB2X1M U264 ( .B0(n366), .B1(n160), .A0N(MEM_4__5_), .A1N(n160), .Y(n224) );
  OAI2BB2X1M U265 ( .B0(n365), .B1(n160), .A0N(MEM_4__6_), .A1N(n160), .Y(n225) );
  OAI2BB2X1M U266 ( .B0(n364), .B1(n160), .A0N(MEM_4__7_), .A1N(n160), .Y(n226) );
  OAI2BB2X1M U267 ( .B0(n359), .B1(n162), .A0N(MEM_5__0_), .A1N(n162), .Y(n227) );
  OAI2BB2X1M U268 ( .B0(n360), .B1(n162), .A0N(MEM_5__1_), .A1N(n162), .Y(n228) );
  OAI2BB2X1M U269 ( .B0(n361), .B1(n162), .A0N(MEM_5__2_), .A1N(n162), .Y(n229) );
  OAI2BB2X1M U270 ( .B0(n362), .B1(n162), .A0N(MEM_5__3_), .A1N(n162), .Y(n230) );
  OAI2BB2X1M U271 ( .B0(n367), .B1(n162), .A0N(MEM_5__4_), .A1N(n162), .Y(n231) );
  OAI2BB2X1M U272 ( .B0(n366), .B1(n162), .A0N(MEM_5__5_), .A1N(n162), .Y(n232) );
  OAI2BB2X1M U273 ( .B0(n365), .B1(n162), .A0N(MEM_5__6_), .A1N(n162), .Y(n233) );
  OAI2BB2X1M U274 ( .B0(n364), .B1(n162), .A0N(MEM_5__7_), .A1N(n162), .Y(n234) );
  OAI2BB2X1M U275 ( .B0(n359), .B1(n163), .A0N(MEM_6__0_), .A1N(n163), .Y(n235) );
  OAI2BB2X1M U276 ( .B0(n360), .B1(n163), .A0N(MEM_6__1_), .A1N(n163), .Y(n236) );
  OAI2BB2X1M U277 ( .B0(n361), .B1(n163), .A0N(MEM_6__2_), .A1N(n163), .Y(n237) );
  OAI2BB2X1M U278 ( .B0(n362), .B1(n163), .A0N(MEM_6__3_), .A1N(n163), .Y(n238) );
  OAI2BB2X1M U279 ( .B0(n367), .B1(n163), .A0N(MEM_6__4_), .A1N(n163), .Y(n239) );
  OAI2BB2X1M U280 ( .B0(n366), .B1(n163), .A0N(MEM_6__5_), .A1N(n163), .Y(n240) );
  OAI2BB2X1M U281 ( .B0(n365), .B1(n163), .A0N(MEM_6__6_), .A1N(n163), .Y(n241) );
  OAI2BB2X1M U282 ( .B0(n364), .B1(n163), .A0N(MEM_6__7_), .A1N(n163), .Y(n242) );
  OAI2BB2X1M U283 ( .B0(n359), .B1(n166), .A0N(MEM_7__0_), .A1N(n166), .Y(n243) );
  OAI2BB2X1M U284 ( .B0(n360), .B1(n166), .A0N(MEM_7__1_), .A1N(n166), .Y(n244) );
  OAI2BB2X1M U285 ( .B0(n361), .B1(n166), .A0N(MEM_7__2_), .A1N(n166), .Y(n245) );
  OAI2BB2X1M U286 ( .B0(n362), .B1(n166), .A0N(MEM_7__3_), .A1N(n166), .Y(n246) );
  OAI2BB2X1M U287 ( .B0(n367), .B1(n166), .A0N(MEM_7__4_), .A1N(n166), .Y(n247) );
  OAI2BB2X1M U288 ( .B0(n366), .B1(n166), .A0N(MEM_7__5_), .A1N(n166), .Y(n248) );
  OAI2BB2X1M U289 ( .B0(n365), .B1(n166), .A0N(MEM_7__6_), .A1N(n166), .Y(n249) );
  OAI2BB2X1M U290 ( .B0(n364), .B1(n166), .A0N(MEM_7__7_), .A1N(n166), .Y(n250) );
  OAI2BB2X1M U291 ( .B0(n359), .B1(n173), .A0N(MEM_12__0_), .A1N(n173), .Y(
        n283) );
  OAI2BB2X1M U292 ( .B0(n360), .B1(n173), .A0N(MEM_12__1_), .A1N(n173), .Y(
        n284) );
  OAI2BB2X1M U293 ( .B0(n361), .B1(n173), .A0N(MEM_12__2_), .A1N(n173), .Y(
        n285) );
  OAI2BB2X1M U294 ( .B0(n362), .B1(n173), .A0N(MEM_12__3_), .A1N(n173), .Y(
        n286) );
  OAI2BB2X1M U295 ( .B0(n367), .B1(n173), .A0N(MEM_12__4_), .A1N(n173), .Y(
        n287) );
  OAI2BB2X1M U296 ( .B0(n366), .B1(n173), .A0N(MEM_12__5_), .A1N(n173), .Y(
        n288) );
  OAI2BB2X1M U297 ( .B0(n365), .B1(n173), .A0N(MEM_12__6_), .A1N(n173), .Y(
        n289) );
  OAI2BB2X1M U298 ( .B0(n364), .B1(n173), .A0N(MEM_12__7_), .A1N(n173), .Y(
        n290) );
  OAI2BB2X1M U299 ( .B0(n359), .B1(n174), .A0N(MEM_13__0_), .A1N(n174), .Y(
        n291) );
  OAI2BB2X1M U300 ( .B0(n360), .B1(n174), .A0N(MEM_13__1_), .A1N(n174), .Y(
        n292) );
  OAI2BB2X1M U301 ( .B0(n361), .B1(n174), .A0N(MEM_13__2_), .A1N(n174), .Y(
        n293) );
  OAI2BB2X1M U302 ( .B0(n362), .B1(n174), .A0N(MEM_13__3_), .A1N(n174), .Y(
        n294) );
  OAI2BB2X1M U303 ( .B0(n367), .B1(n174), .A0N(MEM_13__4_), .A1N(n174), .Y(
        n295) );
  OAI2BB2X1M U304 ( .B0(n366), .B1(n174), .A0N(MEM_13__5_), .A1N(n174), .Y(
        n296) );
  OAI2BB2X1M U305 ( .B0(n365), .B1(n174), .A0N(MEM_13__6_), .A1N(n174), .Y(
        n297) );
  OAI2BB2X1M U306 ( .B0(n364), .B1(n174), .A0N(MEM_13__7_), .A1N(n174), .Y(
        n298) );
  OAI2BB2X1M U307 ( .B0(n359), .B1(n175), .A0N(MEM_14__0_), .A1N(n175), .Y(
        n299) );
  OAI2BB2X1M U308 ( .B0(n360), .B1(n175), .A0N(MEM_14__1_), .A1N(n175), .Y(
        n300) );
  OAI2BB2X1M U309 ( .B0(n361), .B1(n175), .A0N(MEM_14__2_), .A1N(n175), .Y(
        n301) );
  OAI2BB2X1M U310 ( .B0(n362), .B1(n175), .A0N(test_so1), .A1N(n175), .Y(n302)
         );
  OAI2BB2X1M U311 ( .B0(n367), .B1(n175), .A0N(MEM_14__4_), .A1N(n175), .Y(
        n303) );
  OAI2BB2X1M U312 ( .B0(n366), .B1(n175), .A0N(MEM_14__5_), .A1N(n175), .Y(
        n304) );
  OAI2BB2X1M U313 ( .B0(n365), .B1(n175), .A0N(MEM_14__6_), .A1N(n175), .Y(
        n305) );
  OAI2BB2X1M U314 ( .B0(n364), .B1(n175), .A0N(MEM_14__7_), .A1N(n175), .Y(
        n306) );
  OAI2BB2X1M U315 ( .B0(n359), .B1(n177), .A0N(MEM_15__0_), .A1N(n177), .Y(
        n307) );
  OAI2BB2X1M U316 ( .B0(n360), .B1(n177), .A0N(MEM_15__1_), .A1N(n177), .Y(
        n308) );
  OAI2BB2X1M U317 ( .B0(n361), .B1(n177), .A0N(MEM_15__2_), .A1N(n177), .Y(
        n309) );
  OAI2BB2X1M U318 ( .B0(n362), .B1(n177), .A0N(MEM_15__3_), .A1N(n177), .Y(
        n310) );
  OAI2BB2X1M U319 ( .B0(n367), .B1(n177), .A0N(MEM_15__4_), .A1N(n177), .Y(
        n311) );
  OAI2BB2X1M U320 ( .B0(n366), .B1(n177), .A0N(MEM_15__5_), .A1N(n177), .Y(
        n312) );
  OAI2BB2X1M U321 ( .B0(n365), .B1(n177), .A0N(MEM_15__6_), .A1N(n177), .Y(
        n313) );
  OAI2BB2X1M U322 ( .B0(n364), .B1(n177), .A0N(MEM_15__7_), .A1N(n177), .Y(
        n314) );
  NOR2BX2M U323 ( .AN(n150), .B(Address[3]), .Y(n165) );
  MX4X1M U324 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(Address[1]), .Y(n146) );
  MX4X1M U325 ( .A(MEM_4__0_), .B(MEM_5__0_), .C(MEM_6__0_), .D(MEM_7__0_), 
        .S0(Address[0]), .S1(Address[1]), .Y(n141) );
  MX4X1M U326 ( .A(MEM_4__1_), .B(MEM_5__1_), .C(MEM_6__1_), .D(MEM_7__1_), 
        .S0(n339), .S1(Address[1]), .Y(n145) );
  MX4X1M U327 ( .A(MEM_4__2_), .B(MEM_5__2_), .C(MEM_6__2_), .D(MEM_7__2_), 
        .S0(n339), .S1(n337), .Y(n149) );
  MX4X1M U328 ( .A(MEM_4__3_), .B(MEM_5__3_), .C(MEM_6__3_), .D(MEM_7__3_), 
        .S0(n339), .S1(n337), .Y(n318) );
  MX4X1M U329 ( .A(MEM_4__4_), .B(MEM_5__4_), .C(MEM_6__4_), .D(MEM_7__4_), 
        .S0(n339), .S1(n337), .Y(n322) );
  MX4X1M U330 ( .A(MEM_4__5_), .B(MEM_5__5_), .C(MEM_6__5_), .D(MEM_7__5_), 
        .S0(n340), .S1(Address[1]), .Y(n326) );
  MX4X1M U331 ( .A(MEM_4__6_), .B(MEM_5__6_), .C(MEM_6__6_), .D(MEM_7__6_), 
        .S0(n340), .S1(Address[1]), .Y(n330) );
  MX4X1M U332 ( .A(MEM_4__7_), .B(MEM_5__7_), .C(MEM_6__7_), .D(MEM_7__7_), 
        .S0(n340), .S1(Address[1]), .Y(n334) );
  MX4X1M U333 ( .A(MEM_12__0_), .B(MEM_13__0_), .C(MEM_14__0_), .D(MEM_15__0_), 
        .S0(n340), .S1(n337), .Y(n139) );
  MX4X1M U334 ( .A(MEM_12__2_), .B(MEM_13__2_), .C(MEM_14__2_), .D(MEM_15__2_), 
        .S0(n339), .S1(n337), .Y(n147) );
  MX4X1M U335 ( .A(MEM_12__3_), .B(MEM_13__3_), .C(test_so1), .D(MEM_15__3_), 
        .S0(n339), .S1(n337), .Y(n316) );
  MX4X1M U336 ( .A(MEM_12__4_), .B(MEM_13__4_), .C(MEM_14__4_), .D(MEM_15__4_), 
        .S0(n339), .S1(n337), .Y(n320) );
  MX4X1M U337 ( .A(MEM_12__5_), .B(MEM_13__5_), .C(MEM_14__5_), .D(MEM_15__5_), 
        .S0(n340), .S1(Address[1]), .Y(n324) );
  MX4X1M U338 ( .A(MEM_12__6_), .B(MEM_13__6_), .C(MEM_14__6_), .D(MEM_15__6_), 
        .S0(n340), .S1(Address[1]), .Y(n328) );
  MX4X1M U339 ( .A(MEM_12__7_), .B(MEM_13__7_), .C(MEM_14__7_), .D(MEM_15__7_), 
        .S0(n340), .S1(Address[1]), .Y(n332) );
  AND2X2M U340 ( .A(Address[3]), .B(n150), .Y(n176) );
  AO22X1M U341 ( .A0(N43), .A1(n358), .B0(RdData[0]), .B1(n151), .Y(n179) );
  MX4X1M U342 ( .A(n142), .B(n140), .C(n141), .D(n139), .S0(Address[3]), .S1(
        Address[2]), .Y(N43) );
  MX4X1M U343 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(
        Address[0]), .S1(Address[1]), .Y(n142) );
  MX4X1M U344 ( .A(MEM_8__0_), .B(MEM_9__0_), .C(MEM_10__0_), .D(MEM_11__0_), 
        .S0(Address[0]), .S1(Address[1]), .Y(n140) );
  AO22X1M U345 ( .A0(N42), .A1(n358), .B0(RdData[1]), .B1(n151), .Y(n180) );
  MX4X1M U346 ( .A(n146), .B(n144), .C(n145), .D(n143), .S0(Address[3]), .S1(
        Address[2]), .Y(N42) );
  MX4X1M U347 ( .A(MEM_8__1_), .B(MEM_9__1_), .C(MEM_10__1_), .D(MEM_11__1_), 
        .S0(Address[0]), .S1(Address[1]), .Y(n144) );
  MX4X1M U348 ( .A(MEM_12__1_), .B(MEM_13__1_), .C(MEM_14__1_), .D(MEM_15__1_), 
        .S0(n339), .S1(n337), .Y(n143) );
  AO22X1M U349 ( .A0(N41), .A1(n358), .B0(RdData[2]), .B1(n151), .Y(n181) );
  MX4X1M U350 ( .A(n315), .B(n148), .C(n149), .D(n147), .S0(Address[3]), .S1(
        Address[2]), .Y(N41) );
  MX4X1M U351 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(n337), .Y(n315) );
  MX4X1M U352 ( .A(MEM_8__2_), .B(MEM_9__2_), .C(MEM_10__2_), .D(MEM_11__2_), 
        .S0(n339), .S1(n337), .Y(n148) );
  AO22X1M U353 ( .A0(N40), .A1(n358), .B0(RdData[3]), .B1(n151), .Y(n182) );
  MX4X1M U354 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(Address[3]), .S1(
        Address[2]), .Y(N40) );
  MX4X1M U355 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(n337), .Y(n319) );
  MX4X1M U356 ( .A(MEM_8__3_), .B(MEM_9__3_), .C(MEM_10__3_), .D(MEM_11__3_), 
        .S0(n339), .S1(n337), .Y(n317) );
  AO22X1M U357 ( .A0(N39), .A1(n358), .B0(RdData[4]), .B1(n151), .Y(n183) );
  MX4X1M U358 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(Address[3]), .S1(
        Address[2]), .Y(N39) );
  MX4X1M U359 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n340), 
        .S1(n337), .Y(n323) );
  MX4X1M U360 ( .A(MEM_8__4_), .B(MEM_9__4_), .C(MEM_10__4_), .D(MEM_11__4_), 
        .S0(n339), .S1(n337), .Y(n321) );
  AO22X1M U361 ( .A0(N38), .A1(n358), .B0(RdData[5]), .B1(n151), .Y(n184) );
  MX4X1M U362 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(Address[3]), .S1(
        Address[2]), .Y(N38) );
  MX4X1M U363 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n340), 
        .S1(Address[1]), .Y(n327) );
  MX4X1M U364 ( .A(MEM_8__5_), .B(MEM_9__5_), .C(MEM_10__5_), .D(MEM_11__5_), 
        .S0(n340), .S1(Address[1]), .Y(n325) );
  AO22X1M U365 ( .A0(N37), .A1(n358), .B0(RdData[6]), .B1(n151), .Y(n185) );
  MX4X1M U366 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(Address[3]), .S1(
        Address[2]), .Y(N37) );
  MX4X1M U367 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n340), 
        .S1(Address[1]), .Y(n331) );
  MX4X1M U368 ( .A(MEM_8__6_), .B(MEM_9__6_), .C(MEM_10__6_), .D(MEM_11__6_), 
        .S0(n340), .S1(Address[1]), .Y(n329) );
  AO22X1M U369 ( .A0(N36), .A1(n358), .B0(RdData[7]), .B1(n151), .Y(n186) );
  MX4X1M U370 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(Address[3]), .S1(
        Address[2]), .Y(N36) );
  MX4X1M U371 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n340), 
        .S1(Address[1]), .Y(n335) );
  MX4X1M U372 ( .A(MEM_8__7_), .B(MEM_9__7_), .C(MEM_10__7_), .D(MEM_11__7_), 
        .S0(n340), .S1(Address[1]), .Y(n333) );
  INVX2M U373 ( .A(Address[0]), .Y(n356) );
  INVX2M U374 ( .A(Address[1]), .Y(n357) );
  AO21XLM U375 ( .A0(RdData_Valid), .A1(n150), .B0(n358), .Y(n178) );
  AND2X2M U376 ( .A(Address[2]), .B(n357), .Y(n161) );
  AND2X2M U377 ( .A(Address[2]), .B(Address[1]), .Y(n164) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_se );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk;
  wire   N5, N6, N7, N8, N12, Flag, N24, N25, N26, N27, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6,
         n7, n14, n15, n16, n17, n18, n19, n20;
  wire   [3:0] counter;

  SDFFRQX2M o_div_clk_reg ( .D(n33), .SI(n19), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(o_div_clk) );
  SDFFRQX2M counter_reg_3_ ( .D(N27), .SI(n18), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M Flag_reg ( .D(n34), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Flag) );
  SDFFRQX2M counter_reg_1_ ( .D(N25), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M counter_reg_2_ ( .D(N26), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M counter_reg_0_ ( .D(N24), .SI(Flag), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[0]) );
  INVX2M U5 ( .A(N8), .Y(n17) );
  INVX2M U6 ( .A(n29), .Y(n14) );
  OAI22X1M U11 ( .A0(n25), .A1(n16), .B0(n15), .B1(n23), .Y(n34) );
  NOR3X2M U12 ( .A(n15), .B(n20), .C(n17), .Y(n25) );
  XNOR2X2M U13 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n3) );
  OAI33X2M U14 ( .A0(n15), .A1(i_div_ratio[0]), .A2(n17), .B0(n15), .B1(n32), 
        .B2(n20), .Y(n29) );
  AOI22X1M U15 ( .A0(N12), .A1(n16), .B0(Flag), .B1(N8), .Y(n32) );
  OAI32X1M U16 ( .A0(n18), .A1(counter[3]), .A2(n27), .B0(n28), .B1(n19), .Y(
        N27) );
  INVX2M U17 ( .A(counter[3]), .Y(n19) );
  OA21X2M U18 ( .A0(n29), .A1(counter[2]), .B0(n30), .Y(n28) );
  XNOR2X2M U19 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N5) );
  NAND2BX2M U20 ( .AN(N7), .B(n26), .Y(N6) );
  OAI21X2M U21 ( .A0(i_div_ratio[2]), .A1(i_div_ratio[1]), .B0(i_div_ratio[3]), 
        .Y(n26) );
  NOR2X2M U22 ( .A(n29), .B(counter[0]), .Y(N24) );
  NAND3X2M U23 ( .A(i_div_ratio[0]), .B(n16), .C(N12), .Y(n23) );
  OAI22X1M U24 ( .A0(n30), .A1(n18), .B0(counter[2]), .B1(n27), .Y(N26) );
  AOI2B1X1M U25 ( .A1N(counter[1]), .A0(n14), .B0(N24), .Y(n30) );
  NOR2X2M U26 ( .A(n31), .B(n29), .Y(N25) );
  XNOR2X2M U27 ( .A(counter[0]), .B(counter[1]), .Y(n31) );
  NAND3X2M U28 ( .A(counter[0]), .B(n14), .C(counter[1]), .Y(n27) );
  INVX2M U29 ( .A(Flag), .Y(n16) );
  INVX2M U30 ( .A(counter[2]), .Y(n18) );
  CLKXOR2X2M U31 ( .A(o_div_clk), .B(n22), .Y(n33) );
  AOI21X2M U32 ( .A0(n23), .A1(n24), .B0(n15), .Y(n22) );
  OAI21X2M U33 ( .A0(Flag), .A1(n20), .B0(N8), .Y(n24) );
  NOR3X2M U34 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[2]), 
        .Y(N7) );
  INVX2M U35 ( .A(i_div_ratio[0]), .Y(n20) );
  INVX2M U36 ( .A(i_clk_en), .Y(n15) );
  XNOR2X1M U37 ( .A(N6), .B(counter[2]), .Y(n2) );
  XNOR2X1M U38 ( .A(N5), .B(counter[1]), .Y(n1) );
  CLKNAND2X2M U39 ( .A(n2), .B(n1), .Y(n4) );
  NOR4X1M U40 ( .A(n4), .B(n3), .C(N7), .D(counter[3]), .Y(N8) );
  CLKXOR2X2M U41 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n7) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n6) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n5) );
  NOR4X1M U44 ( .A(counter[3]), .B(n7), .C(n6), .D(n5), .Y(N12) );
endmodule


module Clock_Gating ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX8M TLATNCAX8M_I0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module BIT_SYNC_test_1 ( ASYNC, CLK, RST, SYNC, test_si, test_so, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;


  SDFFRQX2M SYNC_reg_0_ ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
endmodule


module Multi_Flip_Flop_test_0 ( ASYNC, CLK, RST, SYNC, test_si, test_so, 
        test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;


  SDFFRQX2M SYNC_reg_0_ ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
endmodule


module DATA_SYNC_test_0 ( Unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   pulse_Gen_Q, Sync_enable, n12, n11, n13;
  wire   [7:0] mux_out;

  SDFFRQX2M pulse_Gen_Q_reg ( .D(Sync_enable), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(pulse_Gen_Q) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(mux_out[7]), .SI(sync_bus[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(mux_out[3]), .SI(sync_bus[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(mux_out[5]), .SI(sync_bus[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(mux_out[6]), .SI(sync_bus[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(mux_out[0]), .SI(pulse_Gen_Q), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(mux_out[1]), .SI(sync_bus[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(mux_out[4]), .SI(sync_bus[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(mux_out[2]), .SI(sync_bus[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M enable_pulse_reg ( .D(n11), .SI(n13), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(enable_pulse) );
  INVX2M U13 ( .A(n12), .Y(n11) );
  NAND2BX2M U14 ( .AN(pulse_Gen_Q), .B(Sync_enable), .Y(n12) );
  AO22X1M U15 ( .A0(Unsync_bus[0]), .A1(n11), .B0(sync_bus[0]), .B1(n12), .Y(
        mux_out[0]) );
  AO22X1M U16 ( .A0(Unsync_bus[1]), .A1(n11), .B0(sync_bus[1]), .B1(n12), .Y(
        mux_out[1]) );
  AO22X1M U17 ( .A0(Unsync_bus[2]), .A1(n11), .B0(sync_bus[2]), .B1(n12), .Y(
        mux_out[2]) );
  AO22X1M U18 ( .A0(Unsync_bus[3]), .A1(n11), .B0(sync_bus[3]), .B1(n12), .Y(
        mux_out[3]) );
  AO22X1M U19 ( .A0(Unsync_bus[4]), .A1(n11), .B0(sync_bus[4]), .B1(n12), .Y(
        mux_out[4]) );
  AO22X1M U20 ( .A0(Unsync_bus[5]), .A1(n11), .B0(sync_bus[5]), .B1(n12), .Y(
        mux_out[5]) );
  AO22X1M U21 ( .A0(Unsync_bus[6]), .A1(n11), .B0(sync_bus[6]), .B1(n12), .Y(
        mux_out[6]) );
  AO22X1M U22 ( .A0(Unsync_bus[7]), .A1(n11), .B0(sync_bus[7]), .B1(n12), .Y(
        mux_out[7]) );
  Multi_Flip_Flop_test_0 MultiFlipFlop ( .ASYNC(bus_enable), .CLK(CLK), .RST(
        RST), .SYNC(Sync_enable), .test_si(test_si), .test_so(n13), .test_se(
        test_se) );
endmodule


module Multi_Flip_Flop_test_1 ( ASYNC, CLK, RST, SYNC, test_si, test_so, 
        test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;


  SDFFRQX2M SYNC_reg_0_ ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
endmodule


module DATA_SYNC_test_1 ( Unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   pulse_Gen_Q, Sync_enable, n11, n13, n24;
  wire   [7:0] mux_out;

  SDFFRQX2M pulse_Gen_Q_reg ( .D(Sync_enable), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(pulse_Gen_Q) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(mux_out[7]), .SI(sync_bus[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(mux_out[6]), .SI(sync_bus[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(mux_out[5]), .SI(sync_bus[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(mux_out[4]), .SI(sync_bus[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(mux_out[3]), .SI(sync_bus[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(mux_out[2]), .SI(sync_bus[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(mux_out[1]), .SI(sync_bus[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(mux_out[0]), .SI(pulse_Gen_Q), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n11), .SI(n24), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(enable_pulse) );
  INVX2M U13 ( .A(n13), .Y(n11) );
  NAND2BX2M U14 ( .AN(pulse_Gen_Q), .B(Sync_enable), .Y(n13) );
  AO22X1M U15 ( .A0(Unsync_bus[0]), .A1(n11), .B0(sync_bus[0]), .B1(n13), .Y(
        mux_out[0]) );
  AO22X1M U16 ( .A0(Unsync_bus[1]), .A1(n11), .B0(sync_bus[1]), .B1(n13), .Y(
        mux_out[1]) );
  AO22X1M U17 ( .A0(Unsync_bus[2]), .A1(n11), .B0(sync_bus[2]), .B1(n13), .Y(
        mux_out[2]) );
  AO22X1M U18 ( .A0(Unsync_bus[3]), .A1(n11), .B0(sync_bus[3]), .B1(n13), .Y(
        mux_out[3]) );
  AO22X1M U19 ( .A0(Unsync_bus[4]), .A1(n11), .B0(sync_bus[4]), .B1(n13), .Y(
        mux_out[4]) );
  AO22X1M U20 ( .A0(Unsync_bus[5]), .A1(n11), .B0(sync_bus[5]), .B1(n13), .Y(
        mux_out[5]) );
  AO22X1M U21 ( .A0(Unsync_bus[6]), .A1(n11), .B0(sync_bus[6]), .B1(n13), .Y(
        mux_out[6]) );
  AO22X1M U22 ( .A0(Unsync_bus[7]), .A1(n11), .B0(sync_bus[7]), .B1(n13), .Y(
        mux_out[7]) );
  Multi_Flip_Flop_test_1 MultiFlipFlop ( .ASYNC(bus_enable), .CLK(CLK), .RST(
        RST), .SYNC(Sync_enable), .test_si(test_si), .test_so(n24), .test_se(
        test_se) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_so, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST, test_so;


  SDFFRQX2M Sync_flops_reg_0_ ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(CLK), .RN(RST), .Q(test_so) );
  SDFFRQX1M SYNC_RST_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_so, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST, test_so;


  SDFFRQX2M Sync_flops_reg_0_ ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(CLK), .RN(RST), .Q(test_so) );
  SDFFRQX1M SYNC_RST_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(SYNC_RST) );
endmodule


module SYS_CTRL_RX_test_1 ( RX_P_DATA, RX_D_VLD, CLK, RST, EN, ALU_FUN, CLK_EN, 
        Address, WrEn, RdEn, WrData, test_si, test_so, test_se );
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input RX_D_VLD, CLK, RST, test_si, test_se;
  output EN, CLK_EN, WrEn, RdEn, test_so;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23, n24, n25, n26,
         n27, n28;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  SDFFRQX2M Address_reg_2_ ( .D(n70), .SI(Address[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[2]) );
  SDFFRQX2M Address_reg_3_ ( .D(n71), .SI(Address[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[3]) );
  SDFFRQX2M Address_reg_1_ ( .D(n69), .SI(Address[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[1]) );
  SDFFRQX2M ALU_FUN_reg_3_ ( .D(n67), .SI(ALU_FUN[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_FUN[3]) );
  SDFFRQX2M Address_reg_0_ ( .D(n68), .SI(ALU_FUN[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[0]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(Address[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M current_state_reg_3_ ( .D(next_state[3]), .SI(n20), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M ALU_FUN_reg_1_ ( .D(n65), .SI(ALU_FUN[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_FUN[1]) );
  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(n18), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M ALU_FUN_reg_0_ ( .D(n64), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_FUN[0]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(n19), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M ALU_FUN_reg_2_ ( .D(n66), .SI(ALU_FUN[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_FUN[2]) );
  NOR3X2M U15 ( .A(current_state[0]), .B(current_state[2]), .C(test_so), .Y(EN) );
  NOR2X2M U16 ( .A(n36), .B(n14), .Y(n63) );
  INVX2M U17 ( .A(WrEn), .Y(n13) );
  NOR2X2M U18 ( .A(n58), .B(n36), .Y(n61) );
  INVX2M U19 ( .A(n57), .Y(n16) );
  INVX2M U20 ( .A(n58), .Y(n17) );
  NOR2X2M U21 ( .A(n63), .B(n46), .Y(WrData[0]) );
  NOR2X2M U22 ( .A(n63), .B(n59), .Y(WrData[1]) );
  NOR2X2M U23 ( .A(n63), .B(n37), .Y(WrData[2]) );
  NOR2X2M U24 ( .A(n63), .B(n54), .Y(WrData[3]) );
  NOR2X2M U25 ( .A(n56), .B(n20), .Y(RdEn) );
  NOR2X2M U26 ( .A(n22), .B(n63), .Y(WrEn) );
  NAND2X2M U27 ( .A(n49), .B(n43), .Y(n36) );
  NOR2X2M U28 ( .A(n26), .B(n13), .Y(WrData[4]) );
  NOR2X2M U29 ( .A(n25), .B(n13), .Y(WrData[5]) );
  NOR2X2M U30 ( .A(n24), .B(n13), .Y(WrData[6]) );
  NAND3X2M U31 ( .A(n19), .B(test_so), .C(n18), .Y(n56) );
  INVX2M U32 ( .A(n47), .Y(n14) );
  NAND2X2M U33 ( .A(n48), .B(n35), .Y(n58) );
  NAND3X2M U34 ( .A(n19), .B(n20), .C(n62), .Y(n48) );
  NAND2X2M U35 ( .A(n29), .B(n31), .Y(n57) );
  INVX2M U36 ( .A(n46), .Y(n23) );
  AND2X2M U37 ( .A(n38), .B(n39), .Y(n32) );
  OR3X2M U38 ( .A(n36), .B(EN), .C(n57), .Y(CLK_EN) );
  INVX2M U39 ( .A(n49), .Y(n15) );
  NOR2X2M U40 ( .A(n18), .B(current_state[3]), .Y(n62) );
  NOR2BX2M U41 ( .AN(RX_P_DATA[7]), .B(n13), .Y(WrData[7]) );
  NAND2X2M U42 ( .A(n14), .B(current_state[2]), .Y(n43) );
  NAND3X2M U43 ( .A(n62), .B(n19), .C(current_state[2]), .Y(n49) );
  INVX2M U44 ( .A(current_state[2]), .Y(n20) );
  INVX2M U45 ( .A(RX_D_VLD), .Y(n22) );
  INVX2M U46 ( .A(current_state[1]), .Y(n19) );
  NAND3X2M U47 ( .A(n18), .B(test_so), .C(current_state[1]), .Y(n47) );
  INVX2M U48 ( .A(current_state[3]), .Y(test_so) );
  INVX2M U49 ( .A(current_state[0]), .Y(n18) );
  NOR4X1M U50 ( .A(n25), .B(n27), .C(RX_P_DATA[2]), .D(RX_P_DATA[6]), .Y(n44)
         );
  NOR3X2M U51 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[5]), .C(n24), .Y(n39) );
  NAND4X2M U52 ( .A(current_state[3]), .B(current_state[0]), .C(n19), .D(n20), 
        .Y(n31) );
  OAI211X2M U53 ( .A0(n17), .A1(n28), .B0(n43), .C0(n60), .Y(n68) );
  NAND2X2M U54 ( .A(Address[0]), .B(n61), .Y(n60) );
  OAI211X2M U55 ( .A0(n22), .A1(n29), .B0(n30), .C0(n31), .Y(next_state[3]) );
  NAND4X2M U56 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[2]), .C(n23), .D(n32), .Y(n30)
         );
  OAI211X2M U57 ( .A0(n22), .A1(n43), .B0(n50), .C0(n51), .Y(next_state[0]) );
  NAND4X2M U58 ( .A(n45), .B(n52), .C(RX_P_DATA[7]), .D(n53), .Y(n51) );
  OAI31X1M U59 ( .A0(n57), .A1(n15), .A2(n58), .B0(n22), .Y(n50) );
  NOR2X2M U60 ( .A(n54), .B(n55), .Y(n53) );
  OAI211X2M U61 ( .A0(RX_D_VLD), .A1(n29), .B0(n33), .C0(n34), .Y(
        next_state[2]) );
  AOI2BB1X2M U62 ( .A0N(n35), .A1N(n22), .B0(n36), .Y(n34) );
  NAND4BX1M U63 ( .AN(n37), .B(n32), .C(n28), .D(n26), .Y(n33) );
  NAND3X2M U64 ( .A(current_state[1]), .B(n62), .C(current_state[2]), .Y(n29)
         );
  NAND2X2M U65 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .Y(n54) );
  NAND2X2M U66 ( .A(RX_P_DATA[0]), .B(RX_D_VLD), .Y(n46) );
  NOR2X2M U67 ( .A(n56), .B(current_state[2]), .Y(n45) );
  NAND3X2M U68 ( .A(n62), .B(n20), .C(current_state[1]), .Y(n35) );
  NAND2X2M U69 ( .A(RX_P_DATA[2]), .B(RX_D_VLD), .Y(n37) );
  OAI2BB2X1M U70 ( .B0(n17), .B1(n27), .A0N(Address[1]), .A1N(n61), .Y(n69) );
  OAI2BB2X1M U71 ( .B0(n16), .B1(n46), .A0N(ALU_FUN[0]), .A1N(n16), .Y(n64) );
  OAI2BB2X1M U72 ( .B0(n16), .B1(n59), .A0N(ALU_FUN[1]), .A1N(n16), .Y(n65) );
  OAI2BB2X1M U73 ( .B0(n16), .B1(n37), .A0N(ALU_FUN[2]), .A1N(n16), .Y(n66) );
  OAI2BB2X1M U74 ( .B0(n16), .B1(n54), .A0N(ALU_FUN[3]), .A1N(n16), .Y(n67) );
  NAND2X2M U75 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n59) );
  AND3X2M U76 ( .A(RX_P_DATA[3]), .B(n45), .C(RX_P_DATA[7]), .Y(n38) );
  NAND4BBX1M U77 ( .AN(n40), .BN(n41), .C(n42), .D(n43), .Y(next_state[1]) );
  NAND4X2M U78 ( .A(n44), .B(RX_P_DATA[4]), .C(n23), .D(n38), .Y(n42) );
  AOI31X2M U79 ( .A0(n48), .A1(n31), .A2(n49), .B0(n22), .Y(n40) );
  AOI31X2M U80 ( .A0(n47), .A1(n29), .A2(n35), .B0(RX_D_VLD), .Y(n41) );
  INVX2M U81 ( .A(RX_P_DATA[1]), .Y(n27) );
  INVX2M U82 ( .A(RX_P_DATA[5]), .Y(n25) );
  INVX2M U83 ( .A(RX_P_DATA[6]), .Y(n24) );
  INVX2M U84 ( .A(RX_P_DATA[4]), .Y(n26) );
  AO21XLM U85 ( .A0(n39), .A1(RX_P_DATA[2]), .B0(n44), .Y(n52) );
  CLKXOR2X2M U86 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n55) );
  INVX2M U87 ( .A(RX_P_DATA[0]), .Y(n28) );
  AO22X1M U88 ( .A0(n58), .A1(RX_P_DATA[2]), .B0(Address[2]), .B1(n61), .Y(n70) );
  AO22X1M U89 ( .A0(n58), .A1(RX_P_DATA[3]), .B0(Address[3]), .B1(n61), .Y(n71) );
endmodule


module SYS_CTRL_TX_test_1 ( ALU_OUT, OUT_Valid, RDData, RdData_Valid, Busy, 
        CLK, RST, clk_div_en, TX_P_DATA, TX_D_VLD, test_si, test_so, test_se
 );
  input [15:0] ALU_OUT;
  input [7:0] RDData;
  output [7:0] TX_P_DATA;
  input OUT_Valid, RdData_Valid, Busy, CLK, RST, test_si, test_se;
  output clk_div_en, TX_D_VLD, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n6, n8, n28, n29;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  NOR2X2M U8 ( .A(n8), .B(n6), .Y(n11) );
  NAND3BX2M U9 ( .AN(n12), .B(n13), .C(n14), .Y(next_state[1]) );
  NAND3X2M U10 ( .A(n15), .B(n29), .C(OUT_Valid), .Y(n14) );
  NOR3X2M U11 ( .A(current_state[1]), .B(current_state[2]), .C(n6), .Y(n17) );
  NOR3X2M U12 ( .A(current_state[0]), .B(current_state[2]), .C(n8), .Y(n12) );
  XNOR2X2M U13 ( .A(current_state[0]), .B(n8), .Y(n9) );
  NOR3X2M U14 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n15) );
  OAI2B11X2M U15 ( .A1N(n15), .A0(n29), .B0(n13), .C0(n16), .Y(next_state[0])
         );
  AOI22X1M U16 ( .A0(n17), .A1(n28), .B0(n12), .B1(Busy), .Y(n16) );
  INVX2M U17 ( .A(Busy), .Y(n28) );
  NOR3X2M U18 ( .A(n9), .B(Busy), .C(n10), .Y(next_state[2]) );
  XNOR2X2M U19 ( .A(n11), .B(current_state[2]), .Y(n10) );
  INVX2M U20 ( .A(current_state[2]), .Y(test_so) );
  INVX2M U21 ( .A(current_state[1]), .Y(n8) );
  INVX2M U22 ( .A(current_state[0]), .Y(n6) );
  NAND3X2M U23 ( .A(n11), .B(test_so), .C(Busy), .Y(n13) );
  INVX2M U24 ( .A(RdData_Valid), .Y(n29) );
  NOR3X2M U25 ( .A(current_state[0]), .B(current_state[1]), .C(test_so), .Y(
        n19) );
  NOR2X2M U26 ( .A(n11), .B(n27), .Y(TX_D_VLD) );
  XNOR2X2M U27 ( .A(n9), .B(current_state[2]), .Y(n27) );
  OAI2BB1X2M U28 ( .A0N(ALU_OUT[0]), .A1N(n12), .B0(n26), .Y(TX_P_DATA[0]) );
  AOI22X1M U29 ( .A0(ALU_OUT[8]), .A1(n19), .B0(RDData[0]), .B1(n17), .Y(n26)
         );
  OAI2BB1X2M U30 ( .A0N(ALU_OUT[1]), .A1N(n12), .B0(n25), .Y(TX_P_DATA[1]) );
  AOI22X1M U31 ( .A0(ALU_OUT[9]), .A1(n19), .B0(RDData[1]), .B1(n17), .Y(n25)
         );
  OAI2BB1X2M U32 ( .A0N(ALU_OUT[2]), .A1N(n12), .B0(n24), .Y(TX_P_DATA[2]) );
  AOI22X1M U33 ( .A0(ALU_OUT[10]), .A1(n19), .B0(RDData[2]), .B1(n17), .Y(n24)
         );
  OAI2BB1X2M U34 ( .A0N(ALU_OUT[3]), .A1N(n12), .B0(n23), .Y(TX_P_DATA[3]) );
  AOI22X1M U35 ( .A0(ALU_OUT[11]), .A1(n19), .B0(RDData[3]), .B1(n17), .Y(n23)
         );
  OAI2BB1X2M U36 ( .A0N(ALU_OUT[4]), .A1N(n12), .B0(n22), .Y(TX_P_DATA[4]) );
  AOI22X1M U37 ( .A0(ALU_OUT[12]), .A1(n19), .B0(RDData[4]), .B1(n17), .Y(n22)
         );
  OAI2BB1X2M U38 ( .A0N(ALU_OUT[5]), .A1N(n12), .B0(n21), .Y(TX_P_DATA[5]) );
  AOI22X1M U39 ( .A0(ALU_OUT[13]), .A1(n19), .B0(RDData[5]), .B1(n17), .Y(n21)
         );
  OAI2BB1X2M U40 ( .A0N(ALU_OUT[6]), .A1N(n12), .B0(n20), .Y(TX_P_DATA[6]) );
  AOI22X1M U41 ( .A0(ALU_OUT[14]), .A1(n19), .B0(RDData[6]), .B1(n17), .Y(n20)
         );
  OAI2BB1X2M U42 ( .A0N(ALU_OUT[7]), .A1N(n12), .B0(n18), .Y(TX_P_DATA[7]) );
  AOI22X1M U43 ( .A0(ALU_OUT[15]), .A1(n19), .B0(RDData[7]), .B1(n17), .Y(n18)
         );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module SYS_CTRL_test_1 ( RX_P_DATA, RX_D_VLD, CLK, RST, ALU_OUT, OUT_Valid, 
        RDData, RdData_Valid, Busy, EN, ALU_FUN, CLK_EN, Address, WrEn, RdEn, 
        WrData, clk_div_en, TX_P_DATA, TX_D_VLD, test_so, test_se );
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  input [7:0] RDData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input RX_D_VLD, CLK, RST, OUT_Valid, RdData_Valid, Busy, test_se;
  output EN, CLK_EN, WrEn, RdEn, clk_div_en, TX_D_VLD, test_so;
  wire   n5;

  SYS_CTRL_RX_test_1 SYS_CTRL_RX_I0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(
        RX_D_VLD), .CLK(CLK), .RST(RST), .EN(EN), .ALU_FUN(ALU_FUN), .CLK_EN(
        CLK_EN), .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), 
        .test_si(RDData[7]), .test_so(n5), .test_se(test_se) );
  SYS_CTRL_TX_test_1 SYS_CTRL_TX_I0 ( .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), 
        .RDData(RDData), .RdData_Valid(RdData_Valid), .Busy(Busy), .CLK(CLK), 
        .RST(RST), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD), .test_si(n5), 
        .test_so(test_so), .test_se(test_se) );
  INVX2M U1 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__0_, u_div_SumTmp_1__1_, u_div_SumTmp_1__2_,
         u_div_SumTmp_1__3_, u_div_SumTmp_1__4_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_3__0_, u_div_SumTmp_3__1_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_4__0_, u_div_SumTmp_4__1_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__0_, u_div_SumTmp_5__1_,
         u_div_SumTmp_5__2_, u_div_SumTmp_6__0_, u_div_SumTmp_6__1_,
         u_div_SumTmp_7__0_, u_div_CryTmp_0__1_, u_div_CryTmp_0__2_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_0__7_, u_div_CryTmp_1__1_,
         u_div_CryTmp_1__2_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_1__7_,
         u_div_CryTmp_2__1_, u_div_CryTmp_2__2_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__2_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_4__1_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_7__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_1__3_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_1__7_, u_div_PartRem_2__1_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_3__1_, u_div_PartRem_3__2_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_3__5_,
         u_div_PartRem_4__1_, u_div_PartRem_4__2_, u_div_PartRem_4__3_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__3_, u_div_PartRem_6__1_, u_div_PartRem_6__2_,
         u_div_PartRem_7__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M u_div_u_fa_PartRem_0_2_5 ( .A(u_div_PartRem_3__5_), .B(n13), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(n15), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(n16), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_PartRem_7__1_), .B(n17), .CI(
        u_div_CryTmp_6__1_), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_4 ( .A(u_div_PartRem_4__4_), .B(n14), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(n12), .CI(
        u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(n11), .CI(
        u_div_CryTmp_0__7_), .CO(quotient[0]) );
  ADDFX2M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(n17), .CI(
        u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(n17), .CI(
        u_div_CryTmp_1__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(n17), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(n17), .CI(
        u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(u_div_SumTmp_3__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(n17), .CI(
        u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(u_div_SumTmp_4__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(n17), .CI(
        u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(u_div_SumTmp_5__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(n14), .CI(
        u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(n13), .CI(
        u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(n13), .CI(
        u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(u_div_SumTmp_1__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(n14), .CI(
        u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(u_div_SumTmp_1__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(n16), .CI(
        u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(n15), .CI(
        u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFX2M u_div_u_fa_PartRem_0_2_4 ( .A(u_div_PartRem_3__4_), .B(n14), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(n15), .CI(
        u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(u_div_SumTmp_1__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(n15), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n16), .CI(
        u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(n15), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(n16), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(n16), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(n16), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(n12), .CI(
        u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(u_div_SumTmp_1__6_)
         );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(u_div_SumTmp_7__0_) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(u_div_SumTmp_4__0_) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(u_div_CryTmp_7__1_) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(u_div_CryTmp_5__1_) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(u_div_CryTmp_4__1_) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(u_div_CryTmp_3__1_) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(u_div_CryTmp_2__1_) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(u_div_CryTmp_1__1_) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(u_div_CryTmp_0__1_) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(u_div_CryTmp_6__1_) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(u_div_PartRem_2__6_), .B(u_div_SumTmp_1__6_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__7_) );
  CLKMX2X2M U35 ( .A(u_div_PartRem_3__5_), .B(u_div_SumTmp_2__5_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__6_) );
  CLKMX2X2M U36 ( .A(u_div_PartRem_4__4_), .B(u_div_SumTmp_3__4_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__5_) );
  CLKMX2X2M U37 ( .A(u_div_PartRem_5__3_), .B(u_div_SumTmp_4__3_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__4_) );
  CLKMX2X2M U38 ( .A(u_div_PartRem_6__2_), .B(u_div_SumTmp_5__2_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__3_) );
  CLKMX2X2M U39 ( .A(u_div_PartRem_7__1_), .B(u_div_SumTmp_6__1_), .S0(
        quotient[6]), .Y(u_div_PartRem_6__2_) );
  CLKMX2X2M U40 ( .A(a[7]), .B(u_div_SumTmp_7__0_), .S0(quotient[7]), .Y(
        u_div_PartRem_7__1_) );
  CLKMX2X2M U41 ( .A(u_div_PartRem_2__5_), .B(u_div_SumTmp_1__5_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__6_) );
  CLKMX2X2M U42 ( .A(u_div_PartRem_3__4_), .B(u_div_SumTmp_2__4_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__5_) );
  CLKMX2X2M U43 ( .A(u_div_PartRem_4__3_), .B(u_div_SumTmp_3__3_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__4_) );
  CLKMX2X2M U44 ( .A(u_div_PartRem_5__2_), .B(u_div_SumTmp_4__2_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__3_) );
  CLKMX2X2M U45 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__2_) );
  CLKMX2X2M U46 ( .A(a[6]), .B(u_div_SumTmp_6__0_), .S0(quotient[6]), .Y(
        u_div_PartRem_6__1_) );
  CLKMX2X2M U47 ( .A(u_div_PartRem_2__4_), .B(u_div_SumTmp_1__4_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__5_) );
  CLKMX2X2M U48 ( .A(u_div_PartRem_3__3_), .B(u_div_SumTmp_2__3_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__4_) );
  CLKMX2X2M U49 ( .A(u_div_PartRem_4__2_), .B(u_div_SumTmp_3__2_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__3_) );
  CLKMX2X2M U50 ( .A(u_div_PartRem_5__1_), .B(u_div_SumTmp_4__1_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__2_) );
  CLKMX2X2M U51 ( .A(a[5]), .B(u_div_SumTmp_5__0_), .S0(quotient[5]), .Y(
        u_div_PartRem_5__1_) );
  CLKMX2X2M U52 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_1__3_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__4_) );
  CLKMX2X2M U53 ( .A(u_div_PartRem_3__2_), .B(u_div_SumTmp_2__2_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__3_) );
  CLKMX2X2M U54 ( .A(u_div_PartRem_4__1_), .B(u_div_SumTmp_3__1_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__2_) );
  CLKMX2X2M U55 ( .A(a[4]), .B(u_div_SumTmp_4__0_), .S0(quotient[4]), .Y(
        u_div_PartRem_4__1_) );
  CLKMX2X2M U56 ( .A(u_div_PartRem_2__2_), .B(u_div_SumTmp_1__2_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__3_) );
  CLKMX2X2M U57 ( .A(u_div_PartRem_3__1_), .B(u_div_SumTmp_2__1_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__2_) );
  CLKMX2X2M U58 ( .A(a[3]), .B(u_div_SumTmp_3__0_), .S0(quotient[3]), .Y(
        u_div_PartRem_3__1_) );
  CLKMX2X2M U59 ( .A(u_div_PartRem_2__1_), .B(u_div_SumTmp_1__1_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__2_) );
  CLKMX2X2M U60 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(quotient[2]), .Y(
        u_div_PartRem_2__1_) );
  CLKMX2X2M U61 ( .A(a[1]), .B(u_div_SumTmp_1__0_), .S0(quotient[1]), .Y(
        u_div_PartRem_1__1_) );
  AND4X1M U62 ( .A(u_div_CryTmp_7__1_), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(u_div_CryTmp_6__2_), .Y(quotient[6]) );
  AND2X1M U64 ( .A(u_div_CryTmp_5__3_), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(u_div_CryTmp_4__4_), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(u_div_CryTmp_3__5_), .Y(quotient[3]) );
  AND2X1M U69 ( .A(u_div_CryTmp_2__6_), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(u_div_CryTmp_1__7_), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:1] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U5 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_7__0_, SUMB_6__6_,
         SUMB_6__5_, SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_,
         SUMB_5__6_, SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_,
         SUMB_5__1_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_,
         SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_,
         SUMB_2__4_, SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_,
         SUMB_1__5_, SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, A1_12_,
         A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_4_, A1_3_, A1_2_,
         A1_1_, A1_0_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n7), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n6), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n9), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n5), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n4), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n8), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n3), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  AND2X2M U2 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n9) );
  AND2X2M U9 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  INVX2M U10 ( .A(ab_0__6_), .Y(n22) );
  CLKXOR2X2M U11 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  INVX2M U12 ( .A(ab_0__7_), .Y(n23) );
  INVX2M U13 ( .A(ab_0__5_), .Y(n21) );
  INVX2M U14 ( .A(ab_0__4_), .Y(n20) );
  INVX2M U15 ( .A(ab_0__3_), .Y(n19) );
  AND2X2M U16 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n11) );
  AND2X2M U17 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n12) );
  CLKXOR2X2M U18 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U19 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U20 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  INVX2M U21 ( .A(ab_0__2_), .Y(n18) );
  AND2X2M U22 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U23 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n14) );
  CLKXOR2X2M U24 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  AND2X2M U25 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n15) );
  XNOR2X2M U26 ( .A(CARRYB_7__0_), .B(n17), .Y(A1_6_) );
  INVX2M U27 ( .A(SUMB_7__1_), .Y(n17) );
  CLKXOR2X2M U28 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  AND2X2M U29 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
  CLKXOR2X2M U30 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(ab_1__2_), .B(n19), .Y(SUMB_1__2_) );
  XNOR2X2M U32 ( .A(ab_1__6_), .B(n23), .Y(SUMB_1__6_) );
  XNOR2X2M U33 ( .A(ab_1__5_), .B(n22), .Y(SUMB_1__5_) );
  XNOR2X2M U34 ( .A(ab_1__4_), .B(n21), .Y(SUMB_1__4_) );
  XNOR2X2M U35 ( .A(ab_1__3_), .B(n20), .Y(SUMB_1__3_) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(ab_1__1_), .B(n18), .Y(SUMB_1__1_) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(ab_7__7_) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(ab_7__6_) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(ab_7__5_) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(ab_7__4_) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(ab_7__3_) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(ab_7__2_) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(ab_7__1_) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(ab_7__0_) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(ab_6__7_) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(ab_6__6_) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(ab_6__5_) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(ab_6__4_) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(ab_6__3_) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(ab_6__2_) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(ab_6__1_) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(ab_6__0_) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(ab_5__7_) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(ab_5__6_) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(ab_5__5_) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(ab_5__4_) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(ab_5__3_) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(ab_5__2_) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(ab_5__1_) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(ab_5__0_) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(ab_4__7_) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(ab_4__6_) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(ab_4__5_) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(ab_4__4_) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(ab_4__3_) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(ab_4__2_) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(ab_4__1_) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(ab_4__0_) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(ab_3__7_) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(ab_3__6_) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(ab_3__5_) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(ab_3__4_) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(ab_3__3_) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(ab_3__2_) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(ab_3__1_) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(ab_3__0_) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(ab_2__7_) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(ab_2__6_) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(ab_2__5_) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(ab_2__4_) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(ab_2__3_) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(ab_2__2_) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(ab_2__1_) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(ab_2__0_) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(ab_1__7_) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(ab_1__6_) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(ab_1__5_) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(ab_1__4_) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(ab_1__3_) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(ab_1__2_) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(ab_1__1_) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(ab_1__0_) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(ab_0__7_) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(ab_0__6_) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(ab_0__5_) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(ab_0__4_) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(ab_0__3_) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(ab_0__2_) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(ab_0__1_) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n16, 
        n14, n13, n15, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N165, N166, N167, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n5, n6, n7, n8,
         n9, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [15:0] ALU_Value;

  SDFFRQX2M ALU_OUT_reg_7_ ( .D(ALU_Value[7]), .SI(ALU_OUT[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M ALU_OUT_reg_6_ ( .D(ALU_Value[6]), .SI(ALU_OUT[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M ALU_OUT_reg_4_ ( .D(ALU_Value[4]), .SI(ALU_OUT[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M ALU_OUT_reg_3_ ( .D(ALU_Value[3]), .SI(ALU_OUT[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M ALU_OUT_reg_2_ ( .D(ALU_Value[2]), .SI(ALU_OUT[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M ALU_OUT_reg_1_ ( .D(ALU_Value[1]), .SI(ALU_OUT[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M ALU_OUT_reg_0_ ( .D(ALU_Value[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M ALU_OUT_reg_15_ ( .D(ALU_Value[15]), .SI(ALU_OUT[14]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M ALU_OUT_reg_14_ ( .D(ALU_Value[14]), .SI(ALU_OUT[13]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M ALU_OUT_reg_13_ ( .D(ALU_Value[13]), .SI(ALU_OUT[12]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M ALU_OUT_reg_12_ ( .D(ALU_Value[12]), .SI(ALU_OUT[11]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M ALU_OUT_reg_11_ ( .D(ALU_Value[11]), .SI(ALU_OUT[10]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M ALU_OUT_reg_10_ ( .D(ALU_Value[10]), .SI(ALU_OUT[9]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M ALU_OUT_reg_9_ ( .D(ALU_Value[9]), .SI(ALU_OUT[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M ALU_OUT_reg_8_ ( .D(ALU_Value[8]), .SI(ALU_OUT[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX1M ALU_OUT_reg_5_ ( .D(ALU_Value[5]), .SI(ALU_OUT[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  NOR3BX2M U7 ( .AN(n121), .B(n147), .C(ALU_FUN[2]), .Y(n65) );
  BUFX2M U23 ( .A(A[6]), .Y(n29) );
  OAI2BB1X2M U24 ( .A0N(N123), .A1N(n47), .B0(n48), .Y(ALU_Value[14]) );
  OAI2BB1X2M U25 ( .A0N(N124), .A1N(n47), .B0(n48), .Y(ALU_Value[15]) );
  OAI2BB1X2M U26 ( .A0N(N121), .A1N(n47), .B0(n48), .Y(ALU_Value[12]) );
  OAI2BB1X2M U27 ( .A0N(N120), .A1N(n47), .B0(n48), .Y(ALU_Value[11]) );
  OAI2BB1X2M U28 ( .A0N(N122), .A1N(n47), .B0(n48), .Y(ALU_Value[13]) );
  OAI2BB1X2M U29 ( .A0N(N118), .A1N(n47), .B0(n48), .Y(ALU_Value[9]) );
  OAI2BB1X2M U30 ( .A0N(N119), .A1N(n47), .B0(n48), .Y(ALU_Value[10]) );
  AOI31X2M U31 ( .A0(n109), .A1(n110), .A2(n111), .B0(n143), .Y(ALU_Value[0])
         );
  AOI22X1M U32 ( .A0(N100), .A1(n66), .B0(N91), .B1(n53), .Y(n109) );
  AOI211X2M U33 ( .A0(n32), .A1(n159), .B0(n112), .C0(n113), .Y(n111) );
  AOI222X1M U34 ( .A0(N109), .A1(n31), .B0(n7), .B1(n58), .C0(N125), .C1(n65), 
        .Y(n110) );
  AOI31X2M U35 ( .A0(n97), .A1(n98), .A2(n99), .B0(n143), .Y(ALU_Value[1]) );
  AOI222X1M U36 ( .A0(N92), .A1(n53), .B0(N110), .B1(n31), .C0(N101), .C1(n66), 
        .Y(n97) );
  AOI211X2M U37 ( .A0(n9), .A1(n145), .B0(n100), .C0(n101), .Y(n99) );
  AOI222X1M U38 ( .A0(N126), .A1(n65), .B0(n32), .B1(n158), .C0(n8), .C1(n58), 
        .Y(n98) );
  AOI31X2M U39 ( .A0(n91), .A1(n92), .A2(n93), .B0(n143), .Y(ALU_Value[2]) );
  AOI22X1M U40 ( .A0(N102), .A1(n66), .B0(N93), .B1(n53), .Y(n91) );
  AOI221XLM U41 ( .A0(n26), .A1(n145), .B0(n32), .B1(n157), .C0(n94), .Y(n93)
         );
  AOI222X1M U42 ( .A0(N111), .A1(n31), .B0(n9), .B1(n58), .C0(N127), .C1(n65), 
        .Y(n92) );
  AOI31X2M U43 ( .A0(n85), .A1(n86), .A2(n87), .B0(n143), .Y(ALU_Value[3]) );
  AOI22X1M U44 ( .A0(N103), .A1(n66), .B0(N94), .B1(n53), .Y(n85) );
  AOI221XLM U45 ( .A0(n27), .A1(n145), .B0(n32), .B1(n156), .C0(n88), .Y(n87)
         );
  AOI222X1M U46 ( .A0(N112), .A1(n31), .B0(n26), .B1(n58), .C0(N128), .C1(n65), 
        .Y(n86) );
  AOI31X2M U47 ( .A0(n79), .A1(n80), .A2(n81), .B0(n143), .Y(ALU_Value[4]) );
  AOI22X1M U48 ( .A0(N104), .A1(n66), .B0(N95), .B1(n53), .Y(n79) );
  AOI221XLM U49 ( .A0(n145), .A1(n28), .B0(n32), .B1(n155), .C0(n82), .Y(n81)
         );
  AOI222X1M U50 ( .A0(N113), .A1(n31), .B0(n27), .B1(n58), .C0(N129), .C1(n65), 
        .Y(n80) );
  AOI31X2M U51 ( .A0(n73), .A1(n74), .A2(n75), .B0(n143), .Y(ALU_Value[5]) );
  AOI221XLM U52 ( .A0(n145), .A1(n29), .B0(n32), .B1(n154), .C0(n76), .Y(n75)
         );
  AOI22X1M U53 ( .A0(N105), .A1(n66), .B0(N96), .B1(n53), .Y(n73) );
  AOI222X1M U54 ( .A0(N114), .A1(n31), .B0(n28), .B1(n58), .C0(N130), .C1(n65), 
        .Y(n74) );
  AOI31X2M U55 ( .A0(n67), .A1(n68), .A2(n69), .B0(n143), .Y(ALU_Value[6]) );
  AOI221XLM U56 ( .A0(n145), .A1(n30), .B0(n32), .B1(n153), .C0(n70), .Y(n69)
         );
  AOI22X1M U57 ( .A0(N106), .A1(n66), .B0(N97), .B1(n53), .Y(n67) );
  AOI222X1M U58 ( .A0(N115), .A1(n31), .B0(n58), .B1(n29), .C0(N131), .C1(n65), 
        .Y(n68) );
  AOI31X2M U59 ( .A0(n54), .A1(n55), .A2(n56), .B0(n143), .Y(ALU_Value[7]) );
  AOI221XLM U60 ( .A0(n32), .A1(n152), .B0(n58), .B1(n30), .C0(n59), .Y(n56)
         );
  AOI22X1M U61 ( .A0(N107), .A1(n66), .B0(N98), .B1(n53), .Y(n54) );
  AOI22X1M U62 ( .A0(N132), .A1(n65), .B0(N116), .B1(n31), .Y(n55) );
  AOI21X2M U63 ( .A0(n49), .A1(n50), .B0(n143), .Y(ALU_Value[8]) );
  AOI21X2M U64 ( .A0(N99), .A1(n53), .B0(n142), .Y(n49) );
  AOI2BB2XLM U65 ( .B0(N117), .B1(n31), .A0N(n152), .A1N(n52), .Y(n50) );
  INVX2M U66 ( .A(n6), .Y(n141) );
  NAND2X2M U67 ( .A(Enable), .B(n142), .Y(n48) );
  INVX2M U68 ( .A(n108), .Y(n142) );
  AOI211X2M U69 ( .A0(N108), .A1(n66), .B0(n32), .C0(n63), .Y(n108) );
  AND4X2M U70 ( .A(N167), .B(n115), .C(n5), .D(n148), .Y(n106) );
  OAI222X1M U71 ( .A0(n71), .A1(n141), .B0(n6), .B1(n72), .C0(n52), .C1(n154), 
        .Y(n70) );
  AOI221XLM U72 ( .A0(n29), .A1(n62), .B0(n63), .B1(n153), .C0(n32), .Y(n72)
         );
  AOI221XLM U73 ( .A0(n62), .A1(n153), .B0(n29), .B1(n64), .C0(n58), .Y(n71)
         );
  OAI2BB1X2M U74 ( .A0N(n146), .A1N(n121), .B0(n117), .Y(n63) );
  OAI2BB1X2M U75 ( .A0N(n116), .A1N(n115), .B0(n117), .Y(n64) );
  AND3X2M U76 ( .A(n122), .B(n148), .C(n5), .Y(n62) );
  AND2X2M U77 ( .A(n115), .B(n121), .Y(n58) );
  NOR2X2M U78 ( .A(n148), .B(n5), .Y(n121) );
  BUFX2M U79 ( .A(n57), .Y(n32) );
  NOR2X2M U80 ( .A(n123), .B(n144), .Y(n57) );
  INVX2M U81 ( .A(n116), .Y(n144) );
  INVX2M U82 ( .A(n123), .Y(n146) );
  NOR2BX2M U83 ( .AN(n122), .B(n144), .Y(n53) );
  NAND3X2M U84 ( .A(n146), .B(n148), .C(n5), .Y(n52) );
  INVX2M U85 ( .A(Enable), .Y(n143) );
  NOR2BX2M U86 ( .AN(n31), .B(n143), .Y(n47) );
  AND2X2M U87 ( .A(n122), .B(n121), .Y(n66) );
  INVX2M U88 ( .A(n107), .Y(n145) );
  INVX2M U89 ( .A(n8), .Y(n158) );
  INVX2M U90 ( .A(n7), .Y(n159) );
  INVX2M U91 ( .A(n29), .Y(n153) );
  INVX2M U92 ( .A(n30), .Y(n152) );
  INVX2M U93 ( .A(n26), .Y(n156) );
  INVX2M U94 ( .A(n9), .Y(n157) );
  INVX2M U95 ( .A(n28), .Y(n154) );
  INVX2M U96 ( .A(n27), .Y(n155) );
  BUFX2M U97 ( .A(A[7]), .Y(n30) );
  BUFX2M U98 ( .A(B[6]), .Y(n6) );
  BUFX2M U99 ( .A(A[5]), .Y(n28) );
  BUFX2M U100 ( .A(A[4]), .Y(n27) );
  BUFX2M U101 ( .A(A[3]), .Y(n26) );
  BUFX2M U102 ( .A(A[2]), .Y(n9) );
  BUFX2M U103 ( .A(A[1]), .Y(n8) );
  BUFX2M U104 ( .A(A[0]), .Y(n7) );
  INVX2M U105 ( .A(n44), .Y(n139) );
  INVX2M U106 ( .A(n33), .Y(n137) );
  OAI21X2M U107 ( .A0(B[0]), .A1(n118), .B0(n119), .Y(n112) );
  AOI221XLM U108 ( .A0(n7), .A1(n62), .B0(n63), .B1(n159), .C0(n32), .Y(n118)
         );
  AOI31X2M U109 ( .A0(N165), .A1(n5), .A2(n120), .B0(n106), .Y(n119) );
  NOR3X2M U110 ( .A(n147), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n120) );
  OAI21X2M U111 ( .A0(B[1]), .A1(n103), .B0(n104), .Y(n100) );
  AOI221XLM U112 ( .A0(n8), .A1(n62), .B0(n63), .B1(n158), .C0(n32), .Y(n103)
         );
  AOI31X2M U113 ( .A0(N166), .A1(n5), .A2(n105), .B0(n106), .Y(n104) );
  NOR3X2M U114 ( .A(n148), .B(ALU_FUN[2]), .C(n147), .Y(n105) );
  INVX2M U115 ( .A(B[0]), .Y(n136) );
  INVX2M U116 ( .A(B[2]), .Y(n138) );
  INVX2M U117 ( .A(B[3]), .Y(n140) );
  OAI2B2X1M U118 ( .A1N(B[0]), .A0(n114), .B0(n107), .B1(n158), .Y(n113) );
  AOI221XLM U119 ( .A0(n62), .A1(n159), .B0(n7), .B1(n64), .C0(n58), .Y(n114)
         );
  OAI2B2X1M U120 ( .A1N(B[1]), .A0(n102), .B0(n52), .B1(n159), .Y(n101) );
  AOI221XLM U121 ( .A0(n62), .A1(n158), .B0(n8), .B1(n64), .C0(n58), .Y(n102)
         );
  OAI222X1M U122 ( .A0(n95), .A1(n138), .B0(B[2]), .B1(n96), .C0(n52), .C1(
        n158), .Y(n94) );
  AOI221XLM U123 ( .A0(n9), .A1(n62), .B0(n63), .B1(n157), .C0(n32), .Y(n96)
         );
  AOI221XLM U124 ( .A0(n62), .A1(n157), .B0(n9), .B1(n64), .C0(n58), .Y(n95)
         );
  OAI222X1M U125 ( .A0(n89), .A1(n140), .B0(B[3]), .B1(n90), .C0(n52), .C1(
        n157), .Y(n88) );
  AOI221XLM U126 ( .A0(n26), .A1(n62), .B0(n63), .B1(n156), .C0(n32), .Y(n90)
         );
  AOI221XLM U127 ( .A0(n62), .A1(n156), .B0(n26), .B1(n64), .C0(n58), .Y(n89)
         );
  OAI222X1M U128 ( .A0(n83), .A1(n151), .B0(B[4]), .B1(n84), .C0(n52), .C1(
        n156), .Y(n82) );
  INVX2M U129 ( .A(B[4]), .Y(n151) );
  AOI221XLM U130 ( .A0(n27), .A1(n62), .B0(n63), .B1(n155), .C0(n32), .Y(n84)
         );
  AOI221XLM U131 ( .A0(n62), .A1(n155), .B0(n27), .B1(n64), .C0(n58), .Y(n83)
         );
  OAI222X1M U132 ( .A0(n77), .A1(n150), .B0(B[5]), .B1(n78), .C0(n52), .C1(
        n155), .Y(n76) );
  INVX2M U133 ( .A(B[5]), .Y(n150) );
  AOI221XLM U134 ( .A0(n28), .A1(n62), .B0(n63), .B1(n154), .C0(n32), .Y(n78)
         );
  AOI221XLM U135 ( .A0(n62), .A1(n154), .B0(n28), .B1(n64), .C0(n58), .Y(n77)
         );
  OAI222X1M U136 ( .A0(n60), .A1(n149), .B0(B[7]), .B1(n61), .C0(n52), .C1(
        n153), .Y(n59) );
  INVX2M U137 ( .A(B[7]), .Y(n149) );
  AOI221XLM U138 ( .A0(n62), .A1(n30), .B0(n63), .B1(n152), .C0(n32), .Y(n61)
         );
  AOI221XLM U139 ( .A0(n62), .A1(n152), .B0(n30), .B1(n64), .C0(n58), .Y(n60)
         );
  NOR2X2M U140 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n122) );
  NAND2X2M U141 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NOR2X2M U142 ( .A(n5), .B(ALU_FUN[0]), .Y(n116) );
  INVX2M U143 ( .A(ALU_FUN[0]), .Y(n148) );
  INVX2M U144 ( .A(ALU_FUN[1]), .Y(n147) );
  BUFX2M U145 ( .A(ALU_FUN[3]), .Y(n5) );
  NAND3X2M U146 ( .A(n122), .B(ALU_FUN[0]), .C(n5), .Y(n117) );
  AND2X2M U147 ( .A(ALU_FUN[2]), .B(n147), .Y(n115) );
  NAND3X2M U148 ( .A(n5), .B(ALU_FUN[0]), .C(n115), .Y(n107) );
  BUFX2M U149 ( .A(n51), .Y(n31) );
  NOR3X2M U150 ( .A(n144), .B(ALU_FUN[2]), .C(n147), .Y(n51) );
  BUFX2M U151 ( .A(Enable), .Y(OUT_VALID) );
  NOR2X1M U152 ( .A(n152), .B(B[7]), .Y(n132) );
  NAND2BX1M U153 ( .AN(B[4]), .B(n27), .Y(n125) );
  NAND2BX1M U154 ( .AN(n27), .B(B[4]), .Y(n37) );
  CLKNAND2X2M U155 ( .A(n125), .B(n37), .Y(n127) );
  NOR2X1M U156 ( .A(n140), .B(n26), .Y(n45) );
  NOR2X1M U157 ( .A(n138), .B(n9), .Y(n36) );
  NOR2X1M U158 ( .A(n136), .B(n7), .Y(n33) );
  CLKNAND2X2M U159 ( .A(n9), .B(n138), .Y(n124) );
  NAND2BX1M U160 ( .AN(n36), .B(n124), .Y(n42) );
  AOI21X1M U161 ( .A0(n33), .A1(n158), .B0(B[1]), .Y(n34) );
  AOI211X1M U162 ( .A0(n8), .A1(n137), .B0(n42), .C0(n34), .Y(n35) );
  CLKNAND2X2M U163 ( .A(n26), .B(n140), .Y(n46) );
  OAI31X1M U164 ( .A0(n45), .A1(n36), .A2(n35), .B0(n46), .Y(n38) );
  NAND2BX1M U165 ( .AN(n28), .B(B[5]), .Y(n130) );
  OAI211X1M U166 ( .A0(n127), .A1(n38), .B0(n37), .C0(n130), .Y(n39) );
  NAND2BX1M U167 ( .AN(B[5]), .B(n28), .Y(n126) );
  XNOR2X1M U168 ( .A(n29), .B(n6), .Y(n129) );
  AOI32X1M U169 ( .A0(n39), .A1(n126), .A2(n129), .B0(n6), .B1(n153), .Y(n40)
         );
  CLKNAND2X2M U170 ( .A(B[7]), .B(n152), .Y(n133) );
  OAI21X1M U171 ( .A0(n132), .A1(n40), .B0(n133), .Y(N167) );
  CLKNAND2X2M U172 ( .A(n7), .B(n136), .Y(n43) );
  OA21X1M U173 ( .A0(n43), .A1(n158), .B0(B[1]), .Y(n41) );
  AOI211X1M U174 ( .A0(n43), .A1(n158), .B0(n42), .C0(n41), .Y(n44) );
  AOI31X1M U175 ( .A0(n139), .A1(n124), .A2(n46), .B0(n45), .Y(n128) );
  OAI2B11X1M U176 ( .A1N(n128), .A0(n127), .B0(n126), .C0(n125), .Y(n131) );
  AOI32X1M U177 ( .A0(n131), .A1(n130), .A2(n129), .B0(n29), .B1(n141), .Y(
        n134) );
  AOI2B1X1M U178 ( .A1N(n134), .A0(n133), .B0(n132), .Y(n135) );
  CLKINVX1M U179 ( .A(n135), .Y(N166) );
  NOR2X1M U180 ( .A(N167), .B(N166), .Y(N165) );
  ALU_DW_div_uns_0 div_68 ( .a({n30, n29, n28, n27, n26, n9, n8, n7}), .b({
        B[7], n6, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}), .remainder({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  ALU_DW01_sub_0 sub_62 ( .A({1'b0, n30, n29, n28, n27, n26, n9, n8, n7}), .B(
        {1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_59 ( .A({1'b0, n30, n29, n28, n27, n26, n9, n8, n7}), .B(
        {1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_65 ( .A({n30, n29, n28, n27, n26, n9, n8, n7}), .B({
        B[7], n6, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module deserializer_test_1 ( deser_en, sampled_bit, edge_cnt, CLK, RST, P_DATA, 
        test_so, test_se );
  input [2:0] edge_cnt;
  output [7:0] P_DATA;
  input deser_en, sampled_bit, CLK, RST, test_se;
  output test_so;
  wire   n1, n11, n13, n15, n17, n19, n21, n23, n25, n2, n4, n5, n6, n7, n8,
         n9;

  SDFFRQX2M P_DATA_reg_0_ ( .D(n11), .SI(sampled_bit), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M P_DATA_reg_5_ ( .D(n21), .SI(n6), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[5]) );
  SDFFRQX2M P_DATA_reg_1_ ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M P_DATA_reg_4_ ( .D(n19), .SI(n7), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[4]) );
  SDFFRQX2M P_DATA_reg_7_ ( .D(n25), .SI(n4), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[7]) );
  SDFFRQX2M P_DATA_reg_3_ ( .D(n17), .SI(n8), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[3]) );
  SDFFRQX2M P_DATA_reg_6_ ( .D(n23), .SI(n5), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[6]) );
  SDFFRQX2M P_DATA_reg_2_ ( .D(n15), .SI(n9), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(P_DATA[2]) );
  NAND4X2M U2 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(deser_en), .Y(n1) );
  OAI22X1M U3 ( .A0(n2), .A1(n9), .B0(n1), .B1(n8), .Y(n13) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n7), .Y(n15) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n6), .Y(n17) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n5), .Y(n19) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n4), .Y(n21) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(test_so), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n9), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(test_so), .A0N(sampled_bit), .A1N(n2), .Y(n25)
         );
  INVX2M U12 ( .A(P_DATA[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA[7]), .Y(test_so) );
  INVX2M U15 ( .A(P_DATA[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA[1]), .Y(n9) );
  INVX2M U17 ( .A(P_DATA[4]), .Y(n6) );
  INVX2M U18 ( .A(P_DATA[5]), .Y(n5) );
endmodule


module strt_check ( strt_chk_en, sampled_bit, strt_glitch );
  input strt_chk_en, sampled_bit;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module parity_check ( par_chk_en, sampled_bit, PAR_TYPE, P_DATA, par_err );
  input [7:0] P_DATA;
  input par_chk_en, sampled_bit, PAR_TYPE;
  output par_err;
  wire   n8, n1, n2, n3, n4, n5, n6;

  CLKBUFX8M U2 ( .A(n8), .Y(par_err) );
  NOR2BX2M U3 ( .AN(par_chk_en), .B(n1), .Y(n8) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XNOR2X2M U7 ( .A(sampled_bit), .B(PAR_TYPE), .Y(n4) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, stp_err );
  input stp_chk_en, sampled_bit;
  output stp_err;
  wire   n2;

  CLKBUFX8M U2 ( .A(n2), .Y(stp_err) );
  NOR2BX2M U3 ( .AN(stp_chk_en), .B(sampled_bit), .Y(n2) );
endmodule


module data_sampling_test_1 ( edge_cnt, dat_samp_en, CLK, RST, RX_IN, Prescale, 
        sampled_bit, test_si, test_se );
  input [2:0] edge_cnt;
  input [4:0] Prescale;
  input dat_samp_en, CLK, RST, RX_IN, test_si, test_se;
  output sampled_bit;
  wire   sample_bit_1, sample_bit_2, sample_bit_3, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n1;

  SDFFRQX2M sample_bit_3_reg ( .D(n41), .SI(sample_bit_2), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sample_bit_3) );
  SDFFRQX2M sample_bit_1_reg ( .D(n40), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sample_bit_1) );
  SDFFRQX2M sample_bit_2_reg ( .D(n42), .SI(sample_bit_1), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sample_bit_2) );
  SDFFRQX2M sampled_bit_reg ( .D(n39), .SI(sample_bit_3), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sampled_bit) );
  INVX2M U7 ( .A(RX_IN), .Y(n1) );
  NOR2X2M U8 ( .A(n25), .B(n26), .Y(n24) );
  NAND2X2M U9 ( .A(n30), .B(n25), .Y(n31) );
  OAI2BB2X1M U10 ( .B0(n16), .B1(n1), .A0N(n16), .A1N(sample_bit_1), .Y(n40)
         );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n14), .A0N(n14), .A1N(sample_bit_3), .Y(n41)
         );
  OAI2BB2X1M U12 ( .B0(n1), .B1(n15), .A0N(n15), .A1N(sample_bit_2), .Y(n42)
         );
  XNOR2X2M U13 ( .A(Prescale[1]), .B(edge_cnt[0]), .Y(n21) );
  NAND4X2M U14 ( .A(n21), .B(n22), .C(dat_samp_en), .D(n27), .Y(n14) );
  NOR2X2M U15 ( .A(n28), .B(n29), .Y(n27) );
  CLKXOR2X2M U16 ( .A(n31), .B(n23), .Y(n28) );
  XOR3XLM U17 ( .A(edge_cnt[2]), .B(n30), .C(n25), .Y(n29) );
  NAND4X2M U18 ( .A(n34), .B(dat_samp_en), .C(n35), .D(n23), .Y(n15) );
  NOR2X2M U19 ( .A(n21), .B(n38), .Y(n35) );
  XNOR2X2M U20 ( .A(n25), .B(edge_cnt[2]), .Y(n34) );
  XNOR2X2M U21 ( .A(edge_cnt[1]), .B(n33), .Y(n38) );
  NAND4X2M U22 ( .A(n18), .B(n19), .C(n20), .D(dat_samp_en), .Y(n16) );
  CLKXOR2X2M U23 ( .A(n23), .B(n24), .Y(n19) );
  NOR2BX2M U24 ( .AN(n21), .B(n22), .Y(n20) );
  XOR3XLM U25 ( .A(n26), .B(edge_cnt[2]), .C(n25), .Y(n18) );
  OAI2BB2X1M U26 ( .B0(n12), .B1(n13), .A0N(sampled_bit), .A1N(n13), .Y(n39)
         );
  NAND4X2M U27 ( .A(dat_samp_en), .B(n14), .C(n15), .D(n16), .Y(n13) );
  AOI21X2M U28 ( .A0(sample_bit_2), .A1(sample_bit_1), .B0(n17), .Y(n12) );
  OA21X2M U29 ( .A0(sample_bit_2), .A1(sample_bit_1), .B0(sample_bit_3), .Y(
        n17) );
  CLKXOR2X2M U30 ( .A(n32), .B(edge_cnt[1]), .Y(n22) );
  NAND2BX2M U31 ( .AN(n30), .B(n26), .Y(n32) );
  AOI21X2M U32 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n37), .Y(n33) );
  NOR2X2M U33 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n37) );
  NOR2X2M U34 ( .A(Prescale[1]), .B(n33), .Y(n30) );
  NAND2X2M U35 ( .A(n33), .B(Prescale[1]), .Y(n26) );
  CLKXOR2X2M U36 ( .A(n37), .B(Prescale[3]), .Y(n25) );
  CLKXOR2X2M U37 ( .A(n36), .B(Prescale[4]), .Y(n23) );
  NAND2BX2M U38 ( .AN(Prescale[3]), .B(n37), .Y(n36) );
endmodule


module edge_bit_counter_test_1 ( enable, CLK, RST, bit_cnt, edge_cnt, test_si, 
        test_se );
  output [3:0] bit_cnt;
  output [2:0] edge_cnt;
  input enable, CLK, RST, test_si, test_se;
  wire   n9, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n10, n11, n12,
         n13, n14, n15, n26;
  wire   [2:0] edge_cnt_value;
  wire   [3:0] bit_cnt_value;

  SDFFRQX2M bit_cnt_reg_3_ ( .D(bit_cnt_value[3]), .SI(bit_cnt[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[3]) );
  SDFFRQX2M bit_cnt_reg_2_ ( .D(bit_cnt_value[2]), .SI(bit_cnt[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  SDFFRQX2M bit_cnt_reg_0_ ( .D(bit_cnt_value[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(bit_cnt[0]) );
  SDFFRQX2M edge_cnt_reg_1_ ( .D(edge_cnt_value[1]), .SI(edge_cnt[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  SDFFRQX2M edge_cnt_reg_0_ ( .D(edge_cnt_value[0]), .SI(bit_cnt[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M bit_cnt_reg_1_ ( .D(bit_cnt_value[1]), .SI(bit_cnt[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  SDFFRX1M edge_cnt_reg_2_ ( .D(edge_cnt_value[2]), .SI(edge_cnt[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(edge_cnt[2]), .QN(n9) );
  INVX2M U11 ( .A(n23), .Y(n10) );
  OAI21X2M U12 ( .A0(enable), .A1(n25), .B0(n23), .Y(n24) );
  NAND3X2M U13 ( .A(enable), .B(n25), .C(n18), .Y(n23) );
  NAND2BX2M U14 ( .AN(n18), .B(enable), .Y(n16) );
  OAI32X1M U15 ( .A0(n15), .A1(bit_cnt[3]), .A2(n19), .B0(n20), .B1(n26), .Y(
        bit_cnt_value[3]) );
  INVX2M U16 ( .A(bit_cnt[3]), .Y(n26) );
  AOI21X2M U17 ( .A0(n10), .A1(n15), .B0(n21), .Y(n20) );
  OAI32X1M U18 ( .A0(n13), .A1(bit_cnt[1]), .A2(n23), .B0(n22), .B1(n14), .Y(
        bit_cnt_value[1]) );
  INVX2M U19 ( .A(bit_cnt[1]), .Y(n14) );
  OAI32X1M U20 ( .A0(n16), .A1(n11), .A2(n12), .B0(n9), .B1(n16), .Y(
        edge_cnt_value[2]) );
  OAI22X1M U21 ( .A0(bit_cnt[0]), .A1(n23), .B0(n13), .B1(n24), .Y(
        bit_cnt_value[0]) );
  OAI2BB2X1M U22 ( .B0(bit_cnt[2]), .B1(n19), .A0N(n21), .A1N(bit_cnt[2]), .Y(
        bit_cnt_value[2]) );
  NAND3X2M U23 ( .A(n10), .B(bit_cnt[1]), .C(bit_cnt[0]), .Y(n19) );
  NAND2X2M U24 ( .A(n22), .B(bit_cnt[1]), .Y(n21) );
  OA21X2M U25 ( .A0(bit_cnt[0]), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X2M U26 ( .A(edge_cnt[0]), .B(n16), .Y(edge_cnt_value[0]) );
  NOR2X2M U27 ( .A(n17), .B(n16), .Y(edge_cnt_value[1]) );
  XNOR2X2M U28 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .Y(n17) );
  NOR3X2M U29 ( .A(n12), .B(n11), .C(n9), .Y(n18) );
  NAND4X2M U30 ( .A(bit_cnt[3]), .B(bit_cnt[1]), .C(n13), .D(n15), .Y(n25) );
  INVX2M U31 ( .A(bit_cnt[0]), .Y(n13) );
  INVX2M U32 ( .A(edge_cnt[0]), .Y(n11) );
  INVX2M U33 ( .A(edge_cnt[1]), .Y(n12) );
  INVX2M U34 ( .A(bit_cnt[2]), .Y(n15) );
endmodule


module RX_FSM_test_1 ( RX_IN, PAR_EN, bit_cnt, edge_cnt, par_err, strt_glitch, 
        stp_err, CLK, RST, dat_samp_en, par_chk_en, strt_chk_en, stp_chk_en, 
        enable, deser_en, data_vaild, test_si, test_so, test_se );
  input [3:0] bit_cnt;
  input [2:0] edge_cnt;
  input RX_IN, PAR_EN, par_err, strt_glitch, stp_err, CLK, RST, test_si,
         test_se;
  output dat_samp_en, par_chk_en, strt_chk_en, stp_chk_en, enable, deser_en,
         data_vaild, test_so;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n5, n7,
         n8, n10, n11;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX1M current_state_reg_1_ ( .D(next_state[1]), .SI(n7), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  OR2X2M U7 ( .A(n22), .B(dat_samp_en), .Y(enable) );
  OAI211X2M U8 ( .A0(n14), .A1(n8), .B0(n17), .C0(n20), .Y(next_state[0]) );
  AOI221XLM U9 ( .A0(strt_chk_en), .A1(n14), .B0(n21), .B1(n11), .C0(n22), .Y(
        n20) );
  INVX2M U10 ( .A(RX_IN), .Y(n11) );
  AO21XLM U11 ( .A0(n12), .A1(deser_en), .B0(n13), .Y(next_state[2]) );
  OAI31XLM U12 ( .A0(n14), .A1(par_err), .A2(n15), .B0(n8), .Y(n13) );
  NAND4X2M U13 ( .A(n18), .B(n15), .C(n8), .D(n5), .Y(dat_samp_en) );
  INVX2M U14 ( .A(stp_chk_en), .Y(n8) );
  INVX2M U15 ( .A(strt_chk_en), .Y(n5) );
  INVX2M U16 ( .A(n18), .Y(deser_en) );
  NOR2BXLM U17 ( .AN(n21), .B(stp_err), .Y(data_vaild) );
  INVX2M U18 ( .A(n15), .Y(par_chk_en) );
  NOR3X2M U19 ( .A(current_state[0]), .B(current_state[1]), .C(test_so), .Y(
        stp_chk_en) );
  NOR4X1M U20 ( .A(RX_IN), .B(current_state[0]), .C(current_state[1]), .D(
        current_state[2]), .Y(n22) );
  NAND3X2M U21 ( .A(current_state[0]), .B(test_so), .C(current_state[1]), .Y(
        n15) );
  INVX2M U22 ( .A(current_state[2]), .Y(test_so) );
  AOI32X1M U23 ( .A0(PAR_EN), .A1(n10), .A2(deser_en), .B0(n14), .B1(
        par_chk_en), .Y(n17) );
  INVX2M U24 ( .A(n19), .Y(n10) );
  NOR3X2M U25 ( .A(current_state[1]), .B(current_state[2]), .C(n7), .Y(
        strt_chk_en) );
  NAND3BX2M U26 ( .AN(n14), .B(bit_cnt[3]), .C(n23), .Y(n19) );
  NOR3X2M U27 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n23) );
  NOR3X2M U28 ( .A(n7), .B(current_state[1]), .C(test_so), .Y(n21) );
  NAND3X2M U29 ( .A(n7), .B(test_so), .C(current_state[1]), .Y(n18) );
  NAND3X2M U30 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .C(edge_cnt[2]), .Y(n14) );
  NOR2X2M U31 ( .A(n19), .B(PAR_EN), .Y(n12) );
  INVX2M U32 ( .A(current_state[0]), .Y(n7) );
  NAND2BX2M U33 ( .AN(n16), .B(n17), .Y(next_state[1]) );
  OAI32X1M U34 ( .A0(n5), .A1(strt_glitch), .A2(n14), .B0(n12), .B1(n18), .Y(
        n16) );
endmodule


module UART_RX_test_1 ( RX_IN, PAR_EN, Prescale, PAR_TYP, CLK, RST, par_err, 
        stp_err, data_valid, P_DATA_RX, test_si, test_so, test_se );
  input [4:0] Prescale;
  output [7:0] P_DATA_RX;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output par_err, stp_err, data_valid, test_so;
  wire   deser_en, sampled_bit, edge_cnt_1_, edge_cnt_0_, strt_chk_en,
         strt_glitch, par_chk_en, stp_chk_en, dat_samp_en, enable, n1, n2, n3,
         n4;
  wire   [3:0] bit_cnt;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  deserializer_test_1 deserializer_I ( .deser_en(deser_en), .sampled_bit(
        sampled_bit), .edge_cnt({test_so, edge_cnt_1_, edge_cnt_0_}), .CLK(CLK), .RST(n1), .P_DATA(P_DATA_RX), .test_so(n3), .test_se(test_se) );
  strt_check strt_check_I ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .strt_glitch(strt_glitch) );
  parity_check parity_check_I ( .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYPE(PAR_TYP), .P_DATA(P_DATA_RX), .par_err(par_err) );
  stop_check stop_check_I ( .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), 
        .stp_err(stp_err) );
  data_sampling_test_1 data_sampling_I ( .edge_cnt({test_so, edge_cnt_1_, 
        edge_cnt_0_}), .dat_samp_en(dat_samp_en), .CLK(CLK), .RST(n1), .RX_IN(
        RX_IN), .Prescale(Prescale), .sampled_bit(sampled_bit), .test_si(n4), 
        .test_se(test_se) );
  edge_bit_counter_test_1 edge_bit_counter_I ( .enable(enable), .CLK(CLK), 
        .RST(n1), .bit_cnt(bit_cnt), .edge_cnt({test_so, edge_cnt_1_, 
        edge_cnt_0_}), .test_si(n3), .test_se(test_se) );
  RX_FSM_test_1 RX_FSM ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), 
        .edge_cnt({test_so, edge_cnt_1_, edge_cnt_0_}), .par_err(par_err), 
        .strt_glitch(strt_glitch), .stp_err(stp_err), .CLK(CLK), .RST(n1), 
        .dat_samp_en(dat_samp_en), .par_chk_en(par_chk_en), .strt_chk_en(
        strt_chk_en), .stp_chk_en(stp_chk_en), .enable(enable), .deser_en(
        deser_en), .data_vaild(data_valid), .test_si(test_si), .test_so(n4), 
        .test_se(test_se) );
endmodule


module serializer_test_1 ( P_DATA, ser_en, CLK, RST, Busy, mux_sel, Data_Vaild, 
        ser_data, ser_done, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input ser_en, CLK, RST, Busy, Data_Vaild, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   input_data_6_, input_data_5_, input_data_4_, input_data_3_,
         input_data_2_, input_data_1_, n12, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n14, n15, n16, n41, n42;
  wire   [1:0] Counter;

  SDFFRQX2M input_data_reg_6_ ( .D(n35), .SI(input_data_5_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data_6_) );
  SDFFRQX2M input_data_reg_5_ ( .D(n36), .SI(input_data_4_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data_5_) );
  SDFFRQX2M input_data_reg_4_ ( .D(n37), .SI(input_data_3_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data_4_) );
  SDFFRQX2M input_data_reg_3_ ( .D(n38), .SI(input_data_2_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data_3_) );
  SDFFRQX2M input_data_reg_2_ ( .D(n39), .SI(input_data_1_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data_2_) );
  SDFFRQX2M input_data_reg_1_ ( .D(n40), .SI(ser_data), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(input_data_1_) );
  SDFFRQX2M input_data_reg_7_ ( .D(n34), .SI(input_data_6_), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so) );
  SDFFRQX2M input_data_reg_0_ ( .D(n33), .SI(n42), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ser_data) );
  SDFFRQX2M Counter_reg_1_ ( .D(n31), .SI(Counter[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Counter[1]) );
  SDFFRQX2M Counter_reg_0_ ( .D(n32), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Counter[0]) );
  SDFFRX1M Counter_reg_2_ ( .D(n30), .SI(n41), .SE(test_se), .CK(CLK), .RN(RST), .Q(n42), .QN(n12) );
  NOR2X2M U15 ( .A(n15), .B(n14), .Y(n21) );
  AOI21X2M U16 ( .A0(n16), .A1(n15), .B0(n21), .Y(n20) );
  INVX2M U17 ( .A(n29), .Y(n14) );
  INVX2M U18 ( .A(n18), .Y(n15) );
  NOR3X2M U19 ( .A(n12), .B(n16), .C(n41), .Y(ser_done) );
  OAI32X1M U20 ( .A0(n18), .A1(Counter[1]), .A2(n16), .B0(n20), .B1(n41), .Y(
        n31) );
  OAI32X1M U21 ( .A0(n17), .A1(n41), .A2(n18), .B0(n19), .B1(n12), .Y(n30) );
  AOI21BX2M U22 ( .A0(n15), .A1(n41), .B0N(n20), .Y(n19) );
  NAND2X2M U23 ( .A(Counter[0]), .B(n12), .Y(n17) );
  NAND3BX2M U24 ( .AN(mux_sel[1]), .B(Data_Vaild), .C(mux_sel[0]), .Y(n29) );
  NAND2X2M U25 ( .A(ser_en), .B(n29), .Y(n18) );
  OAI2BB2X1M U26 ( .B0(Counter[0]), .B1(n18), .A0N(Counter[0]), .A1N(n21), .Y(
        n32) );
  INVX2M U27 ( .A(Counter[0]), .Y(n16) );
  INVX2M U28 ( .A(Counter[1]), .Y(n41) );
  OAI2BB1X2M U29 ( .A0N(ser_data), .A1N(n21), .B0(n22), .Y(n33) );
  AOI22X1M U30 ( .A0(P_DATA[0]), .A1(n14), .B0(input_data_1_), .B1(n15), .Y(
        n22) );
  OAI2BB1X2M U31 ( .A0N(n21), .A1N(input_data_1_), .B0(n28), .Y(n40) );
  AOI22X1M U32 ( .A0(P_DATA[1]), .A1(n14), .B0(input_data_2_), .B1(n15), .Y(
        n28) );
  OAI2BB1X2M U33 ( .A0N(n21), .A1N(input_data_2_), .B0(n27), .Y(n39) );
  AOI22X1M U34 ( .A0(P_DATA[2]), .A1(n14), .B0(input_data_3_), .B1(n15), .Y(
        n27) );
  OAI2BB1X2M U35 ( .A0N(n21), .A1N(input_data_3_), .B0(n26), .Y(n38) );
  AOI22X1M U36 ( .A0(P_DATA[3]), .A1(n14), .B0(input_data_4_), .B1(n15), .Y(
        n26) );
  OAI2BB1X2M U37 ( .A0N(n21), .A1N(input_data_4_), .B0(n25), .Y(n37) );
  AOI22X1M U38 ( .A0(P_DATA[4]), .A1(n14), .B0(input_data_5_), .B1(n15), .Y(
        n25) );
  OAI2BB1X2M U39 ( .A0N(n21), .A1N(input_data_5_), .B0(n24), .Y(n36) );
  AOI22X1M U40 ( .A0(P_DATA[5]), .A1(n14), .B0(input_data_6_), .B1(n15), .Y(
        n24) );
  OAI2BB1X2M U41 ( .A0N(n21), .A1N(input_data_6_), .B0(n23), .Y(n35) );
  AOI22X1M U42 ( .A0(P_DATA[6]), .A1(n14), .B0(test_so), .B1(n15), .Y(n23) );
  AO22X1M U43 ( .A0(n21), .A1(test_so), .B0(P_DATA[7]), .B1(n14), .Y(n34) );
endmodule


module FSM_test_1 ( Data_Vaild, PAR_EN, ser_done, CLK, RST, mux_sel, ser_en, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Vaild, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output ser_en, busy, test_so;
  wire   current_state_1_, current_state_0_, busy_value, n9, n10, n11, n12,
         n13, n6, n7, n8, n14;
  wire   [2:0] next_state;

  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(n7), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state_1_) );
  SDFFRQX2M busy_reg ( .D(busy_value), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(busy) );
  SDFFRX1M current_state_reg_0_ ( .D(next_state[0]), .SI(busy), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state_0_), .QN(n7) );
  INVX2M U8 ( .A(ser_done), .Y(n14) );
  NAND2X2M U9 ( .A(n10), .B(n11), .Y(mux_sel[1]) );
  OAI32X1M U10 ( .A0(n7), .A1(test_so), .A2(current_state_1_), .B0(n12), .B1(
        n10), .Y(next_state[1]) );
  NOR2BX2M U11 ( .AN(n13), .B(n14), .Y(n12) );
  OAI32X1M U12 ( .A0(n6), .A1(current_state_1_), .A2(current_state_0_), .B0(
        n10), .B1(n13), .Y(next_state[0]) );
  INVX2M U13 ( .A(Data_Vaild), .Y(n6) );
  OAI21X2M U14 ( .A0(current_state_1_), .A1(current_state_0_), .B0(n11), .Y(
        mux_sel[0]) );
  OAI31X1M U15 ( .A0(n14), .A1(PAR_EN), .A2(n10), .B0(n11), .Y(next_state[2])
         );
  AND4X2M U16 ( .A(n14), .B(n7), .C(current_state_1_), .D(n9), .Y(ser_en) );
  NAND3X2M U17 ( .A(n7), .B(n8), .C(current_state_1_), .Y(n10) );
  NAND3X2M U18 ( .A(current_state_0_), .B(n8), .C(current_state_1_), .Y(n11)
         );
  OAI21BX1M U19 ( .A0(current_state_1_), .A1(n9), .B0N(mux_sel[1]), .Y(
        busy_value) );
  NAND2X2M U20 ( .A(PAR_EN), .B(ser_done), .Y(n13) );
  CLKXOR2X2M U22 ( .A(test_so), .B(n7), .Y(n9) );
  SDFFRX1M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state_1_), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(test_so), .QN(n8) );
endmodule


module MUX_test_1 ( ser_data, mux_sel, par_bit, CLK, RST, TX_OUT, test_si, 
        test_se );
  input [1:0] mux_sel;
  input ser_data, par_bit, CLK, RST, test_si, test_se;
  output TX_OUT;
  wire   MUX_OUT, n3, n4, n5;

  OAI21X2M U5 ( .A0(n3), .A1(n5), .B0(n4), .Y(MUX_OUT) );
  NAND3X2M U6 ( .A(mux_sel[1]), .B(n5), .C(ser_data), .Y(n4) );
  INVX2M U7 ( .A(mux_sel[0]), .Y(n5) );
  NOR2BX2M U8 ( .AN(mux_sel[1]), .B(par_bit), .Y(n3) );
  SDFFRHQX8M TX_OUT_reg ( .D(MUX_OUT), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(TX_OUT) );
endmodule


module Parity_Calc_test_1 ( P_DATA, Data_Vaild, PAR_TYP, mux_sel, Busy, CLK, 
        RST, par_bit, test_si, test_se );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input Data_Vaild, PAR_TYP, Busy, CLK, RST, test_si, test_se;
  output par_bit;
  wire   N7, n1, n3, n4, n5, n6, n9, n11, n13, n15, n17, n19, n21, n23, n2,
         n24;
  wire   [7:0] input_data;

  SDFFRQX2M input_data_reg_5_ ( .D(n19), .SI(input_data[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[5]) );
  SDFFRQX2M input_data_reg_1_ ( .D(n11), .SI(input_data[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[1]) );
  SDFFRQX2M input_data_reg_4_ ( .D(n17), .SI(input_data[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[4]) );
  SDFFRQX2M input_data_reg_0_ ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(input_data[0]) );
  SDFFRQX2M par_bit_reg ( .D(N7), .SI(input_data[7]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(par_bit) );
  SDFFRQX2M input_data_reg_6_ ( .D(n21), .SI(input_data[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[6]) );
  SDFFRQX2M input_data_reg_2_ ( .D(n13), .SI(input_data[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[2]) );
  SDFFRQX2M input_data_reg_7_ ( .D(n23), .SI(input_data[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[7]) );
  SDFFRQX2M input_data_reg_3_ ( .D(n15), .SI(input_data[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(input_data[3]) );
  INVX2M U3 ( .A(n2), .Y(n24) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(PAR_TYP), .Y(N7) );
  XOR3XLM U5 ( .A(input_data[5]), .B(input_data[4]), .C(n6), .Y(n3) );
  XOR3XLM U6 ( .A(input_data[1]), .B(input_data[0]), .C(n5), .Y(n4) );
  CLKXOR2X2M U7 ( .A(input_data[7]), .B(input_data[6]), .Y(n6) );
  BUFX2M U8 ( .A(n1), .Y(n2) );
  NAND3BX2M U9 ( .AN(mux_sel[1]), .B(Data_Vaild), .C(mux_sel[0]), .Y(n1) );
  AO22X1M U10 ( .A0(n2), .A1(input_data[2]), .B0(P_DATA[2]), .B1(n24), .Y(n13)
         );
  AO22X1M U11 ( .A0(n2), .A1(input_data[3]), .B0(P_DATA[3]), .B1(n24), .Y(n15)
         );
  AO22X1M U12 ( .A0(n2), .A1(input_data[6]), .B0(P_DATA[6]), .B1(n24), .Y(n21)
         );
  AO22X1M U13 ( .A0(n2), .A1(input_data[7]), .B0(P_DATA[7]), .B1(n24), .Y(n23)
         );
  AO22X1M U14 ( .A0(n2), .A1(input_data[0]), .B0(P_DATA[0]), .B1(n24), .Y(n9)
         );
  AO22X1M U15 ( .A0(n2), .A1(input_data[1]), .B0(P_DATA[1]), .B1(n24), .Y(n11)
         );
  AO22X1M U16 ( .A0(n2), .A1(input_data[4]), .B0(P_DATA[4]), .B1(n24), .Y(n17)
         );
  AO22X1M U17 ( .A0(n2), .A1(input_data[5]), .B0(P_DATA[5]), .B1(n24), .Y(n19)
         );
  CLKXOR2X2M U27 ( .A(input_data[3]), .B(input_data[2]), .Y(n5) );
endmodule


module UART_TX_test_1 ( P_DATA, Data_Vaild, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, 
        Busy, test_si, test_se );
  input [7:0] P_DATA;
  input Data_Vaild, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, Busy;
  wire   ser_en, ser_data, ser_done, par_bit, n1, n2, n3, n4;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  serializer_test_1 serializer_I ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(CLK), 
        .RST(n1), .Busy(Busy), .mux_sel(mux_sel), .Data_Vaild(Data_Vaild), 
        .ser_data(ser_data), .ser_done(ser_done), .test_si(par_bit), .test_so(
        n3), .test_se(test_se) );
  FSM_test_1 FSM_I ( .Data_Vaild(Data_Vaild), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .CLK(CLK), .RST(n1), .mux_sel(mux_sel), .ser_en(ser_en), 
        .busy(Busy), .test_si(test_si), .test_so(n4), .test_se(test_se) );
  MUX_test_1 MUX_I ( .ser_data(ser_data), .mux_sel(mux_sel), .par_bit(par_bit), 
        .CLK(CLK), .RST(n1), .TX_OUT(TX_OUT), .test_si(n3), .test_se(test_se)
         );
  Parity_Calc_test_1 Parity_Calc_I ( .P_DATA(P_DATA), .Data_Vaild(Data_Vaild), 
        .PAR_TYP(PAR_TYP), .mux_sel(mux_sel), .Busy(Busy), .CLK(CLK), .RST(n1), 
        .par_bit(par_bit), .test_si(n4), .test_se(test_se) );
endmodule


module UART_test_1 ( RX_IN, P_DATA_TX, RX_CLK, TX_CLK, RST, PAR_EN, PAR_TYP, 
        Prescale, Data_Vaild_TX, data_valid_RX, Busy, TX_OUT, P_DATA_RX, 
        par_err, stp_err, test_si, test_se );
  input [7:0] P_DATA_TX;
  input [4:0] Prescale;
  output [7:0] P_DATA_RX;
  input RX_IN, RX_CLK, TX_CLK, RST, PAR_EN, PAR_TYP, Data_Vaild_TX, test_si,
         test_se;
  output data_valid_RX, Busy, TX_OUT, par_err, stp_err;
  wire   n1, n2, n3;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_test_1 UART_RX_I0 ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .Prescale(
        Prescale), .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(n1), .par_err(par_err), .stp_err(stp_err), .data_valid(data_valid_RX), .P_DATA_RX(P_DATA_RX), 
        .test_si(test_si), .test_so(n3), .test_se(test_se) );
  UART_TX_test_1 UART_TX_I0 ( .P_DATA(P_DATA_TX), .Data_Vaild(Data_Vaild_TX), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT), .Busy(Busy), .test_si(n3), .test_se(test_se) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module SYS_TOP ( RX_IN, REF_CLK, UART_CLK, RST, scan_clk, scan_rst, test_mode, 
        SE, SI, SO, TX_OUT, par_err, stp_err );
  input [2:0] SI;
  output [2:0] SO;
  input RX_IN, REF_CLK, UART_CLK, RST, scan_clk, scan_rst, test_mode, SE;
  output TX_OUT, par_err, stp_err;
  wire   WrEn, RdEn, CLK1_fun_scan, RST1_fun_scan, RdData_Valid, CLK2_fun_scan,
         RST2_fun_scan, TX_CLK, CLK_EN, ALU_CLK, Busy, SYNC_Busy,
         data_valid_RX, RX_D_VLD, TX_D_VLD, CLK3_fun_scan, Data_Vaild_TX,
         RST_fun_scan, SYNC_RST1, SYNC_RST2, OUT_Valid, EN, CLK4_fun_scan, n2,
         n3, n4, n5, n6, n7, n8, n10, n15, n16, n17, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [7:0] WrData;
  wire   [3:0] Address;
  wire   [7:0] RdData;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [6:0] REG2;
  wire   [3:0] REG3;
  wire   [7:0] P_DATA_RX;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] P_DATA_TX;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;

  BUFX2M U1 ( .A(Address[0]), .Y(n7) );
  BUFX2M U2 ( .A(Address[1]), .Y(n8) );
  BUFX2M U3 ( .A(RX_IN), .Y(n2) );
  INVX4M U4 ( .A(n6), .Y(n5) );
  INVX2M U5 ( .A(RST1_fun_scan), .Y(n6) );
  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(RST2_fun_scan), .Y(n4) );
  RegFile_test_1 RegFile_I0 ( .WrData(WrData), .Address({Address[3:2], n8, n7}), .WrEn(WrEn), .RdEn(RdEn), .CLK(CLK1_fun_scan), .RST(n5), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2({
        SYNOPSYS_UNCONNECTED_1, REG2}), .REG3({SO[2], SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, REG3}), .test_si3(
        SI[0]), .test_si2(SI[1]), .test_si1(n15), .test_so1(SO[1]), .test_se(
        SE) );
  ClkDiv_test_1 ClkDiv_I0 ( .i_ref_clk(CLK2_fun_scan), .i_rst_n(n3), 
        .i_clk_en(1'b1), .i_div_ratio(REG3), .o_div_clk(TX_CLK), .test_si(n17), 
        .test_se(SE) );
  Clock_Gating Clock_Gating_I0 ( .CLK_EN(CLK_EN), .CLK(CLK1_fun_scan), 
        .GATED_CLK(ALU_CLK) );
  BIT_SYNC_test_1 BIT_SYNC_I0 ( .ASYNC(Busy), .CLK(CLK1_fun_scan), .RST(n5), 
        .SYNC(SYNC_Busy), .test_si(ALU_OUT[15]), .test_so(n17), .test_se(SE)
         );
  DATA_SYNC_test_0 DATA_SYNC_I0 ( .Unsync_bus(P_DATA_RX), .bus_enable(
        data_valid_RX), .CLK(CLK1_fun_scan), .RST(n5), .sync_bus(RX_P_DATA), 
        .enable_pulse(RX_D_VLD), .test_si(TX_CLK), .test_se(SE) );
  DATA_SYNC_test_1 DATA_SYNC_I1 ( .Unsync_bus(TX_P_DATA), .bus_enable(TX_D_VLD), .CLK(CLK3_fun_scan), .RST(n3), .sync_bus(P_DATA_TX), .enable_pulse(
        Data_Vaild_TX), .test_si(RX_P_DATA[7]), .test_se(SE) );
  RST_SYNC_test_0 RST_SYNC_I0 ( .RST(RST_fun_scan), .CLK(CLK1_fun_scan), 
        .SYNC_RST(SYNC_RST1), .test_si(P_DATA_TX[7]), .test_so(n16), .test_se(
        SE) );
  RST_SYNC_test_1 RST_SYNC_I1 ( .RST(RST_fun_scan), .CLK(CLK2_fun_scan), 
        .SYNC_RST(SYNC_RST2), .test_si(n16), .test_so(n15), .test_se(SE) );
  SYS_CTRL_test_1 SYS_CTRL_I0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), 
        .CLK(CLK1_fun_scan), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), .RDData(RdData), .RdData_Valid(RdData_Valid), .Busy(SYNC_Busy), .EN(EN), 
        .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), .Address(Address), .WrEn(WrEn), 
        .RdEn(RdEn), .WrData(WrData), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(
        TX_D_VLD), .test_so(n10), .test_se(SE) );
  ALU_test_1 ALU_I0 ( .A(REG0), .B(REG1), .ALU_FUN(ALU_FUN), .Enable(EN), 
        .CLK(CLK4_fun_scan), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid), .test_si(SI[2]), .test_se(SE) );
  UART_test_1 UART_I0 ( .RX_IN(n2), .P_DATA_TX(P_DATA_TX), .RX_CLK(
        CLK2_fun_scan), .TX_CLK(CLK3_fun_scan), .RST(n3), .PAR_EN(REG2[0]), 
        .PAR_TYP(REG2[1]), .Prescale(REG2[6:2]), .Data_Vaild_TX(Data_Vaild_TX), 
        .data_valid_RX(data_valid_RX), .Busy(Busy), .TX_OUT(TX_OUT), 
        .P_DATA_RX(P_DATA_RX), .par_err(par_err), .stp_err(stp_err), .test_si(
        n10), .test_se(SE) );
  mux2X1_0 mux2X1_UO ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK1_fun_scan) );
  mux2X1_6 mux2X1_U1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(CLK2_fun_scan) );
  mux2X1_5 mux2X1_U2 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK3_fun_scan) );
  mux2X1_4 mux2X1_U3 ( .IN_0(ALU_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK4_fun_scan) );
  mux2X1_3 mux2X1_U4 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_fun_scan) );
  mux2X1_2 mux2X1_U5 ( .IN_0(SYNC_RST1), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(RST1_fun_scan) );
  mux2X1_1 mux2X1_U6 ( .IN_0(SYNC_RST2), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(RST2_fun_scan) );
  BUFX2M U9 ( .A(TX_OUT), .Y(SO[0]) );
endmodule

