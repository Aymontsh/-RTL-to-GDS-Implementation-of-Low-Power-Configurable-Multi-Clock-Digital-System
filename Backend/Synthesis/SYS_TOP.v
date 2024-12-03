/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Oct  6 21:37:22 2022
/////////////////////////////////////////////////////////////


module RegFile ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
  wire   MEM_15__7_, MEM_15__6_, MEM_15__5_, MEM_15__4_, MEM_15__3_,
         MEM_15__2_, MEM_15__1_, MEM_15__0_, MEM_14__7_, MEM_14__6_,
         MEM_14__5_, MEM_14__4_, MEM_14__3_, MEM_14__2_, MEM_14__1_,
         MEM_14__0_, MEM_13__7_, MEM_13__6_, MEM_13__5_, MEM_13__4_,
         MEM_13__3_, MEM_13__2_, MEM_13__1_, MEM_13__0_, MEM_12__7_,
         MEM_12__6_, MEM_12__5_, MEM_12__4_, MEM_12__3_, MEM_12__2_,
         MEM_12__1_, MEM_12__0_, MEM_11__7_, MEM_11__6_, MEM_11__5_,
         MEM_11__4_, MEM_11__3_, MEM_11__2_, MEM_11__1_, MEM_11__0_,
         MEM_10__7_, MEM_10__6_, MEM_10__5_, MEM_10__4_, MEM_10__3_,
         MEM_10__2_, MEM_10__1_, MEM_10__0_, MEM_9__7_, MEM_9__6_, MEM_9__5_,
         MEM_9__4_, MEM_9__3_, MEM_9__2_, MEM_9__1_, MEM_9__0_, MEM_8__7_,
         MEM_8__6_, MEM_8__5_, MEM_8__4_, MEM_8__3_, MEM_8__2_, MEM_8__1_,
         MEM_8__0_, MEM_7__7_, MEM_7__6_, MEM_7__5_, MEM_7__4_, MEM_7__3_,
         MEM_7__2_, MEM_7__1_, MEM_7__0_, MEM_6__7_, MEM_6__6_, MEM_6__5_,
         MEM_6__4_, MEM_6__3_, MEM_6__2_, MEM_6__1_, MEM_6__0_, MEM_5__7_,
         MEM_5__6_, MEM_5__5_, MEM_5__4_, MEM_5__3_, MEM_5__2_, MEM_5__1_,
         MEM_5__0_, MEM_4__7_, MEM_4__6_, MEM_4__5_, MEM_4__4_, MEM_4__3_,
         MEM_4__2_, MEM_4__1_, MEM_4__0_, N36, N37, N38, N39, N40, N41, N42,
         N43, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229;

  DFFRQX2M RdData_reg_7_ ( .D(n49), .CK(CLK), .RN(n203), .Q(RdData[7]) );
  DFFRQX2M RdData_reg_6_ ( .D(n48), .CK(CLK), .RN(n203), .Q(RdData[6]) );
  DFFRQX2M RdData_reg_5_ ( .D(n47), .CK(CLK), .RN(n203), .Q(RdData[5]) );
  DFFRQX2M RdData_reg_4_ ( .D(n46), .CK(CLK), .RN(n203), .Q(RdData[4]) );
  DFFRQX2M RdData_reg_3_ ( .D(n45), .CK(CLK), .RN(n203), .Q(RdData[3]) );
  DFFRQX2M RdData_reg_2_ ( .D(n44), .CK(CLK), .RN(n203), .Q(RdData[2]) );
  DFFRQX2M RdData_reg_1_ ( .D(n43), .CK(CLK), .RN(n203), .Q(RdData[1]) );
  DFFRQX2M RdData_reg_0_ ( .D(n42), .CK(CLK), .RN(n203), .Q(RdData[0]) );
  DFFRQX2M RdData_Valid_reg ( .D(n41), .CK(CLK), .RN(n207), .Q(RdData_Valid)
         );
  DFFRQX2M MEM_reg_13__7_ ( .D(n161), .CK(CLK), .RN(n211), .Q(MEM_13__7_) );
  DFFRQX2M MEM_reg_13__6_ ( .D(n160), .CK(CLK), .RN(n211), .Q(MEM_13__6_) );
  DFFRQX2M MEM_reg_13__5_ ( .D(n159), .CK(CLK), .RN(n211), .Q(MEM_13__5_) );
  DFFRQX2M MEM_reg_13__4_ ( .D(n158), .CK(CLK), .RN(n210), .Q(MEM_13__4_) );
  DFFRQX2M MEM_reg_13__3_ ( .D(n157), .CK(CLK), .RN(n210), .Q(MEM_13__3_) );
  DFFRQX2M MEM_reg_13__2_ ( .D(n156), .CK(CLK), .RN(n210), .Q(MEM_13__2_) );
  DFFRQX2M MEM_reg_13__1_ ( .D(n155), .CK(CLK), .RN(n210), .Q(MEM_13__1_) );
  DFFRQX2M MEM_reg_13__0_ ( .D(n154), .CK(CLK), .RN(n210), .Q(MEM_13__0_) );
  DFFRQX2M MEM_reg_9__7_ ( .D(n129), .CK(CLK), .RN(n209), .Q(MEM_9__7_) );
  DFFRQX2M MEM_reg_9__6_ ( .D(n128), .CK(CLK), .RN(n208), .Q(MEM_9__6_) );
  DFFRQX2M MEM_reg_9__5_ ( .D(n127), .CK(CLK), .RN(n208), .Q(MEM_9__5_) );
  DFFRQX2M MEM_reg_9__4_ ( .D(n126), .CK(CLK), .RN(n208), .Q(MEM_9__4_) );
  DFFRQX2M MEM_reg_9__3_ ( .D(n125), .CK(CLK), .RN(n208), .Q(MEM_9__3_) );
  DFFRQX2M MEM_reg_9__2_ ( .D(n124), .CK(CLK), .RN(n208), .Q(MEM_9__2_) );
  DFFRQX2M MEM_reg_9__1_ ( .D(n123), .CK(CLK), .RN(n208), .Q(MEM_9__1_) );
  DFFRQX2M MEM_reg_9__0_ ( .D(n122), .CK(CLK), .RN(n208), .Q(MEM_9__0_) );
  DFFRQX2M MEM_reg_5__7_ ( .D(n97), .CK(CLK), .RN(n206), .Q(MEM_5__7_) );
  DFFRQX2M MEM_reg_5__6_ ( .D(n96), .CK(CLK), .RN(n206), .Q(MEM_5__6_) );
  DFFRQX2M MEM_reg_5__5_ ( .D(n95), .CK(CLK), .RN(n206), .Q(MEM_5__5_) );
  DFFRQX2M MEM_reg_5__4_ ( .D(n94), .CK(CLK), .RN(n206), .Q(MEM_5__4_) );
  DFFRQX2M MEM_reg_5__3_ ( .D(n93), .CK(CLK), .RN(n206), .Q(MEM_5__3_) );
  DFFRQX2M MEM_reg_5__2_ ( .D(n92), .CK(CLK), .RN(n206), .Q(MEM_5__2_) );
  DFFRQX2M MEM_reg_5__1_ ( .D(n91), .CK(CLK), .RN(n206), .Q(MEM_5__1_) );
  DFFRQX2M MEM_reg_5__0_ ( .D(n90), .CK(CLK), .RN(n206), .Q(MEM_5__0_) );
  DFFRQX2M MEM_reg_15__7_ ( .D(n177), .CK(CLK), .RN(n203), .Q(MEM_15__7_) );
  DFFRQX2M MEM_reg_15__6_ ( .D(n176), .CK(CLK), .RN(n212), .Q(MEM_15__6_) );
  DFFRQX2M MEM_reg_15__5_ ( .D(n175), .CK(CLK), .RN(n212), .Q(MEM_15__5_) );
  DFFRQX2M MEM_reg_15__4_ ( .D(n174), .CK(CLK), .RN(n212), .Q(MEM_15__4_) );
  DFFRQX2M MEM_reg_15__3_ ( .D(n173), .CK(CLK), .RN(n211), .Q(MEM_15__3_) );
  DFFRQX2M MEM_reg_15__2_ ( .D(n172), .CK(CLK), .RN(n211), .Q(MEM_15__2_) );
  DFFRQX2M MEM_reg_15__1_ ( .D(n171), .CK(CLK), .RN(n211), .Q(MEM_15__1_) );
  DFFRQX2M MEM_reg_15__0_ ( .D(n170), .CK(CLK), .RN(n211), .Q(MEM_15__0_) );
  DFFRQX2M MEM_reg_11__7_ ( .D(n145), .CK(CLK), .RN(n210), .Q(MEM_11__7_) );
  DFFRQX2M MEM_reg_11__6_ ( .D(n144), .CK(CLK), .RN(n210), .Q(MEM_11__6_) );
  DFFRQX2M MEM_reg_11__5_ ( .D(n143), .CK(CLK), .RN(n209), .Q(MEM_11__5_) );
  DFFRQX2M MEM_reg_11__4_ ( .D(n142), .CK(CLK), .RN(n209), .Q(MEM_11__4_) );
  DFFRQX2M MEM_reg_11__3_ ( .D(n141), .CK(CLK), .RN(n209), .Q(MEM_11__3_) );
  DFFRQX2M MEM_reg_11__2_ ( .D(n140), .CK(CLK), .RN(n209), .Q(MEM_11__2_) );
  DFFRQX2M MEM_reg_11__1_ ( .D(n139), .CK(CLK), .RN(n209), .Q(MEM_11__1_) );
  DFFRQX2M MEM_reg_11__0_ ( .D(n138), .CK(CLK), .RN(n209), .Q(MEM_11__0_) );
  DFFRQX2M MEM_reg_7__7_ ( .D(n113), .CK(CLK), .RN(n207), .Q(MEM_7__7_) );
  DFFRQX2M MEM_reg_7__6_ ( .D(n112), .CK(CLK), .RN(n207), .Q(MEM_7__6_) );
  DFFRQX2M MEM_reg_7__5_ ( .D(n111), .CK(CLK), .RN(n207), .Q(MEM_7__5_) );
  DFFRQX2M MEM_reg_7__4_ ( .D(n110), .CK(CLK), .RN(n207), .Q(MEM_7__4_) );
  DFFRQX2M MEM_reg_7__3_ ( .D(n109), .CK(CLK), .RN(n207), .Q(MEM_7__3_) );
  DFFRQX2M MEM_reg_7__2_ ( .D(n108), .CK(CLK), .RN(n207), .Q(MEM_7__2_) );
  DFFRQX2M MEM_reg_7__1_ ( .D(n107), .CK(CLK), .RN(n207), .Q(MEM_7__1_) );
  DFFRQX2M MEM_reg_7__0_ ( .D(n106), .CK(CLK), .RN(n207), .Q(MEM_7__0_) );
  DFFRQX2M MEM_reg_3__7_ ( .D(n81), .CK(CLK), .RN(n205), .Q(REG3[7]) );
  DFFRQX2M MEM_reg_3__6_ ( .D(n80), .CK(CLK), .RN(n205), .Q(REG3[6]) );
  DFFRQX2M MEM_reg_3__5_ ( .D(n79), .CK(CLK), .RN(n205), .Q(REG3[5]) );
  DFFRQX2M MEM_reg_3__4_ ( .D(n78), .CK(CLK), .RN(n205), .Q(REG3[4]) );
  DFFRQX2M MEM_reg_14__7_ ( .D(n169), .CK(CLK), .RN(n211), .Q(MEM_14__7_) );
  DFFRQX2M MEM_reg_14__6_ ( .D(n168), .CK(CLK), .RN(n211), .Q(MEM_14__6_) );
  DFFRQX2M MEM_reg_14__5_ ( .D(n167), .CK(CLK), .RN(n211), .Q(MEM_14__5_) );
  DFFRQX2M MEM_reg_14__4_ ( .D(n166), .CK(CLK), .RN(n211), .Q(MEM_14__4_) );
  DFFRQX2M MEM_reg_14__3_ ( .D(n165), .CK(CLK), .RN(n211), .Q(MEM_14__3_) );
  DFFRQX2M MEM_reg_14__2_ ( .D(n164), .CK(CLK), .RN(n211), .Q(MEM_14__2_) );
  DFFRQX2M MEM_reg_14__1_ ( .D(n163), .CK(CLK), .RN(n211), .Q(MEM_14__1_) );
  DFFRQX2M MEM_reg_14__0_ ( .D(n162), .CK(CLK), .RN(n211), .Q(MEM_14__0_) );
  DFFRQX2M MEM_reg_10__7_ ( .D(n137), .CK(CLK), .RN(n209), .Q(MEM_10__7_) );
  DFFRQX2M MEM_reg_10__6_ ( .D(n136), .CK(CLK), .RN(n209), .Q(MEM_10__6_) );
  DFFRQX2M MEM_reg_10__5_ ( .D(n135), .CK(CLK), .RN(n209), .Q(MEM_10__5_) );
  DFFRQX2M MEM_reg_10__4_ ( .D(n134), .CK(CLK), .RN(n209), .Q(MEM_10__4_) );
  DFFRQX2M MEM_reg_10__3_ ( .D(n133), .CK(CLK), .RN(n209), .Q(MEM_10__3_) );
  DFFRQX2M MEM_reg_10__2_ ( .D(n132), .CK(CLK), .RN(n209), .Q(MEM_10__2_) );
  DFFRQX2M MEM_reg_10__1_ ( .D(n131), .CK(CLK), .RN(n209), .Q(MEM_10__1_) );
  DFFRQX2M MEM_reg_10__0_ ( .D(n130), .CK(CLK), .RN(n209), .Q(MEM_10__0_) );
  DFFRQX2M MEM_reg_6__7_ ( .D(n105), .CK(CLK), .RN(n207), .Q(MEM_6__7_) );
  DFFRQX2M MEM_reg_6__6_ ( .D(n104), .CK(CLK), .RN(n207), .Q(MEM_6__6_) );
  DFFRQX2M MEM_reg_6__5_ ( .D(n103), .CK(CLK), .RN(n207), .Q(MEM_6__5_) );
  DFFRQX2M MEM_reg_6__4_ ( .D(n102), .CK(CLK), .RN(n207), .Q(MEM_6__4_) );
  DFFRQX2M MEM_reg_6__3_ ( .D(n101), .CK(CLK), .RN(n207), .Q(MEM_6__3_) );
  DFFRQX2M MEM_reg_6__2_ ( .D(n100), .CK(CLK), .RN(n207), .Q(MEM_6__2_) );
  DFFRQX2M MEM_reg_6__1_ ( .D(n99), .CK(CLK), .RN(n206), .Q(MEM_6__1_) );
  DFFRQX2M MEM_reg_6__0_ ( .D(n98), .CK(CLK), .RN(n206), .Q(MEM_6__0_) );
  DFFRQX2M MEM_reg_2__7_ ( .D(n73), .CK(CLK), .RN(n205), .Q(REG2[7]) );
  DFFRQX2M MEM_reg_2__2_ ( .D(n68), .CK(CLK), .RN(n205), .Q(REG2[2]) );
  DFFRQX2M MEM_reg_12__7_ ( .D(n153), .CK(CLK), .RN(n210), .Q(MEM_12__7_) );
  DFFRQX2M MEM_reg_12__6_ ( .D(n152), .CK(CLK), .RN(n210), .Q(MEM_12__6_) );
  DFFRQX2M MEM_reg_12__5_ ( .D(n151), .CK(CLK), .RN(n210), .Q(MEM_12__5_) );
  DFFRQX2M MEM_reg_12__4_ ( .D(n150), .CK(CLK), .RN(n210), .Q(MEM_12__4_) );
  DFFRQX2M MEM_reg_12__3_ ( .D(n149), .CK(CLK), .RN(n210), .Q(MEM_12__3_) );
  DFFRQX2M MEM_reg_12__2_ ( .D(n148), .CK(CLK), .RN(n210), .Q(MEM_12__2_) );
  DFFRQX2M MEM_reg_12__1_ ( .D(n147), .CK(CLK), .RN(n210), .Q(MEM_12__1_) );
  DFFRQX2M MEM_reg_12__0_ ( .D(n146), .CK(CLK), .RN(n210), .Q(MEM_12__0_) );
  DFFRQX2M MEM_reg_8__7_ ( .D(n121), .CK(CLK), .RN(n208), .Q(MEM_8__7_) );
  DFFRQX2M MEM_reg_8__6_ ( .D(n120), .CK(CLK), .RN(n208), .Q(MEM_8__6_) );
  DFFRQX2M MEM_reg_8__5_ ( .D(n119), .CK(CLK), .RN(n208), .Q(MEM_8__5_) );
  DFFRQX2M MEM_reg_8__4_ ( .D(n118), .CK(CLK), .RN(n208), .Q(MEM_8__4_) );
  DFFRQX2M MEM_reg_8__3_ ( .D(n117), .CK(CLK), .RN(n208), .Q(MEM_8__3_) );
  DFFRQX2M MEM_reg_8__2_ ( .D(n116), .CK(CLK), .RN(n208), .Q(MEM_8__2_) );
  DFFRQX2M MEM_reg_8__1_ ( .D(n115), .CK(CLK), .RN(n208), .Q(MEM_8__1_) );
  DFFRQX2M MEM_reg_8__0_ ( .D(n114), .CK(CLK), .RN(n208), .Q(MEM_8__0_) );
  DFFRQX2M MEM_reg_4__7_ ( .D(n89), .CK(CLK), .RN(n206), .Q(MEM_4__7_) );
  DFFRQX2M MEM_reg_4__6_ ( .D(n88), .CK(CLK), .RN(n206), .Q(MEM_4__6_) );
  DFFRQX2M MEM_reg_4__5_ ( .D(n87), .CK(CLK), .RN(n206), .Q(MEM_4__5_) );
  DFFRQX2M MEM_reg_4__4_ ( .D(n86), .CK(CLK), .RN(n206), .Q(MEM_4__4_) );
  DFFRQX2M MEM_reg_4__3_ ( .D(n85), .CK(CLK), .RN(n206), .Q(MEM_4__3_) );
  DFFRQX2M MEM_reg_4__2_ ( .D(n84), .CK(CLK), .RN(n205), .Q(MEM_4__2_) );
  DFFRQX2M MEM_reg_4__1_ ( .D(n83), .CK(CLK), .RN(n205), .Q(MEM_4__1_) );
  DFFRQX2M MEM_reg_4__0_ ( .D(n82), .CK(CLK), .RN(n205), .Q(MEM_4__0_) );
  DFFSQX2M MEM_reg_2__1_ ( .D(n67), .CK(CLK), .SN(n203), .Q(REG2[1]) );
  DFFSQX2M MEM_reg_2__5_ ( .D(n71), .CK(CLK), .SN(n203), .Q(REG2[5]) );
  DFFRQX2M MEM_reg_2__6_ ( .D(n72), .CK(CLK), .RN(n205), .Q(REG2[6]) );
  DFFSQX2M MEM_reg_3__3_ ( .D(n77), .CK(CLK), .SN(n203), .Q(REG3[3]) );
  DFFRQX2M MEM_reg_2__4_ ( .D(n70), .CK(CLK), .RN(n205), .Q(REG2[4]) );
  DFFSQX2M MEM_reg_2__0_ ( .D(n66), .CK(CLK), .SN(n203), .Q(REG2[0]) );
  DFFRQX2M MEM_reg_3__0_ ( .D(n74), .CK(CLK), .RN(n205), .Q(REG3[0]) );
  DFFRQX2M MEM_reg_3__2_ ( .D(n76), .CK(CLK), .RN(n205), .Q(REG3[2]) );
  DFFRQX2M MEM_reg_3__1_ ( .D(n75), .CK(CLK), .RN(n205), .Q(REG3[1]) );
  DFFRQX2M MEM_reg_2__3_ ( .D(n69), .CK(CLK), .RN(n205), .Q(REG2[3]) );
  DFFRQX2M MEM_reg_0__1_ ( .D(n51), .CK(CLK), .RN(n203), .Q(REG0[1]) );
  DFFRQX2M MEM_reg_0__0_ ( .D(n50), .CK(CLK), .RN(n204), .Q(REG0[0]) );
  DFFRQX2M MEM_reg_0__2_ ( .D(n52), .CK(CLK), .RN(n204), .Q(REG0[2]) );
  DFFRQX2M MEM_reg_0__3_ ( .D(n53), .CK(CLK), .RN(n204), .Q(REG0[3]) );
  DFFRQX2M MEM_reg_0__4_ ( .D(n54), .CK(CLK), .RN(n204), .Q(REG0[4]) );
  DFFRQX2M MEM_reg_0__5_ ( .D(n55), .CK(CLK), .RN(n204), .Q(REG0[5]) );
  DFFRQX2M MEM_reg_0__7_ ( .D(n57), .CK(CLK), .RN(n204), .Q(REG0[7]) );
  DFFRQX2M MEM_reg_0__6_ ( .D(n56), .CK(CLK), .RN(n204), .Q(REG0[6]) );
  DFFRQX2M MEM_reg_1__6_ ( .D(n64), .CK(CLK), .RN(n204), .Q(REG1[6]) );
  DFFRQX2M MEM_reg_1__1_ ( .D(n59), .CK(CLK), .RN(n204), .Q(REG1[1]) );
  DFFRQX2M MEM_reg_1__5_ ( .D(n63), .CK(CLK), .RN(n204), .Q(REG1[5]) );
  DFFRQX2M MEM_reg_1__4_ ( .D(n62), .CK(CLK), .RN(n204), .Q(REG1[4]) );
  DFFRQX2M MEM_reg_1__7_ ( .D(n65), .CK(CLK), .RN(n204), .Q(REG1[7]) );
  DFFRQX2M MEM_reg_1__3_ ( .D(n61), .CK(CLK), .RN(n204), .Q(REG1[3]) );
  DFFRQX2M MEM_reg_1__2_ ( .D(n60), .CK(CLK), .RN(n204), .Q(REG1[2]) );
  DFFRQX2M MEM_reg_1__0_ ( .D(n58), .CK(CLK), .RN(n204), .Q(REG1[0]) );
  NOR2X2M U3 ( .A(n219), .B(Address[2]), .Y(n21) );
  NOR2X2M U4 ( .A(n199), .B(Address[2]), .Y(n16) );
  INVX2M U5 ( .A(n200), .Y(n201) );
  INVX2M U6 ( .A(n198), .Y(n199) );
  INVX2M U7 ( .A(n14), .Y(n220) );
  INVX2M U8 ( .A(n200), .Y(n202) );
  BUFX2M U9 ( .A(n218), .Y(n200) );
  BUFX2M U10 ( .A(n219), .Y(n198) );
  NAND2X2M U11 ( .A(RdEn), .B(n225), .Y(n14) );
  NOR2X2M U12 ( .A(n225), .B(RdEn), .Y(n13) );
  INVX2M U13 ( .A(WrEn), .Y(n225) );
  BUFX2M U14 ( .A(n217), .Y(n204) );
  BUFX2M U15 ( .A(n216), .Y(n205) );
  BUFX2M U16 ( .A(n216), .Y(n206) );
  BUFX2M U17 ( .A(n215), .Y(n207) );
  BUFX2M U18 ( .A(n215), .Y(n208) );
  BUFX2M U19 ( .A(n214), .Y(n209) );
  BUFX2M U20 ( .A(n214), .Y(n210) );
  BUFX2M U21 ( .A(n213), .Y(n211) );
  BUFX2M U22 ( .A(n217), .Y(n203) );
  BUFX2M U23 ( .A(n213), .Y(n212) );
  NAND2X2M U24 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U25 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U26 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U27 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U28 ( .A(n24), .B(n19), .Y(n25) );
  NAND2X2M U29 ( .A(n27), .B(n17), .Y(n26) );
  NAND2X2M U30 ( .A(n27), .B(n19), .Y(n29) );
  NAND2X2M U31 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U32 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U33 ( .A(n31), .B(n21), .Y(n34) );
  NAND2X2M U34 ( .A(n33), .B(n21), .Y(n35) );
  NAND2X2M U35 ( .A(n31), .B(n24), .Y(n36) );
  NAND2X2M U36 ( .A(n33), .B(n24), .Y(n37) );
  NAND2X2M U37 ( .A(n31), .B(n27), .Y(n38) );
  NAND2X2M U38 ( .A(n33), .B(n27), .Y(n40) );
  NAND2X2M U39 ( .A(n16), .B(n17), .Y(n15) );
  INVX2M U40 ( .A(WrData[5]), .Y(n228) );
  INVX2M U41 ( .A(WrData[4]), .Y(n229) );
  INVX2M U42 ( .A(WrData[6]), .Y(n227) );
  AND2X2M U43 ( .A(n28), .B(n218), .Y(n17) );
  AND2X2M U44 ( .A(n28), .B(Address[0]), .Y(n19) );
  AND2X2M U45 ( .A(n39), .B(n218), .Y(n31) );
  AND2X2M U46 ( .A(n39), .B(Address[0]), .Y(n33) );
  INVX2M U47 ( .A(WrData[0]), .Y(n221) );
  INVX2M U48 ( .A(WrData[1]), .Y(n222) );
  INVX2M U49 ( .A(WrData[2]), .Y(n223) );
  INVX2M U50 ( .A(WrData[3]), .Y(n224) );
  BUFX2M U51 ( .A(RST), .Y(n216) );
  BUFX2M U52 ( .A(RST), .Y(n215) );
  BUFX2M U53 ( .A(RST), .Y(n214) );
  BUFX2M U54 ( .A(RST), .Y(n213) );
  BUFX2M U55 ( .A(RST), .Y(n217) );
  INVX2M U56 ( .A(WrData[7]), .Y(n226) );
  OAI2BB2X1M U57 ( .B0(n15), .B1(n221), .A0N(REG0[0]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U58 ( .B0(n15), .B1(n222), .A0N(REG0[1]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U59 ( .B0(n15), .B1(n223), .A0N(REG0[2]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U60 ( .B0(n15), .B1(n224), .A0N(REG0[3]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U61 ( .B0(n15), .B1(n229), .A0N(REG0[4]), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U62 ( .B0(n15), .B1(n228), .A0N(REG0[5]), .A1N(n15), .Y(n55) );
  OAI2BB2X1M U63 ( .B0(n15), .B1(n227), .A0N(REG0[6]), .A1N(n15), .Y(n56) );
  OAI2BB2X1M U64 ( .B0(n15), .B1(n226), .A0N(REG0[7]), .A1N(n15), .Y(n57) );
  OAI2BB2X1M U65 ( .B0(n223), .B1(n20), .A0N(REG2[2]), .A1N(n20), .Y(n68) );
  OAI2BB2X1M U66 ( .B0(n224), .B1(n20), .A0N(REG2[3]), .A1N(n20), .Y(n69) );
  OAI2BB2X1M U67 ( .B0(n229), .B1(n20), .A0N(REG2[4]), .A1N(n20), .Y(n70) );
  OAI2BB2X1M U68 ( .B0(n227), .B1(n20), .A0N(REG2[6]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U69 ( .B0(n226), .B1(n20), .A0N(REG2[7]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U70 ( .B0(n221), .B1(n22), .A0N(REG3[0]), .A1N(n22), .Y(n74) );
  OAI2BB2X1M U71 ( .B0(n222), .B1(n22), .A0N(REG3[1]), .A1N(n22), .Y(n75) );
  OAI2BB2X1M U72 ( .B0(n223), .B1(n22), .A0N(REG3[2]), .A1N(n22), .Y(n76) );
  OAI2BB2X1M U73 ( .B0(n229), .B1(n22), .A0N(REG3[4]), .A1N(n22), .Y(n78) );
  OAI2BB2X1M U74 ( .B0(n228), .B1(n22), .A0N(REG3[5]), .A1N(n22), .Y(n79) );
  OAI2BB2X1M U75 ( .B0(n227), .B1(n22), .A0N(REG3[6]), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U76 ( .B0(n226), .B1(n22), .A0N(REG3[7]), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U77 ( .B0(n221), .B1(n18), .A0N(REG1[0]), .A1N(n18), .Y(n58) );
  OAI2BB2X1M U78 ( .B0(n222), .B1(n18), .A0N(REG1[1]), .A1N(n18), .Y(n59) );
  OAI2BB2X1M U79 ( .B0(n223), .B1(n18), .A0N(REG1[2]), .A1N(n18), .Y(n60) );
  OAI2BB2X1M U80 ( .B0(n224), .B1(n18), .A0N(REG1[3]), .A1N(n18), .Y(n61) );
  OAI2BB2X1M U81 ( .B0(n229), .B1(n18), .A0N(REG1[4]), .A1N(n18), .Y(n62) );
  OAI2BB2X1M U82 ( .B0(n228), .B1(n18), .A0N(REG1[5]), .A1N(n18), .Y(n63) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n18), .A0N(REG1[6]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U84 ( .B0(n226), .B1(n18), .A0N(REG1[7]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U85 ( .B0(n221), .B1(n30), .A0N(MEM_8__0_), .A1N(n30), .Y(n114)
         );
  OAI2BB2X1M U86 ( .B0(n222), .B1(n30), .A0N(MEM_8__1_), .A1N(n30), .Y(n115)
         );
  OAI2BB2X1M U87 ( .B0(n223), .B1(n30), .A0N(MEM_8__2_), .A1N(n30), .Y(n116)
         );
  OAI2BB2X1M U88 ( .B0(n224), .B1(n30), .A0N(MEM_8__3_), .A1N(n30), .Y(n117)
         );
  OAI2BB2X1M U89 ( .B0(n229), .B1(n30), .A0N(MEM_8__4_), .A1N(n30), .Y(n118)
         );
  OAI2BB2X1M U90 ( .B0(n228), .B1(n30), .A0N(MEM_8__5_), .A1N(n30), .Y(n119)
         );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n30), .A0N(MEM_8__6_), .A1N(n30), .Y(n120)
         );
  OAI2BB2X1M U92 ( .B0(n226), .B1(n30), .A0N(MEM_8__7_), .A1N(n30), .Y(n121)
         );
  OAI2BB2X1M U93 ( .B0(n221), .B1(n32), .A0N(MEM_9__0_), .A1N(n32), .Y(n122)
         );
  OAI2BB2X1M U94 ( .B0(n222), .B1(n32), .A0N(MEM_9__1_), .A1N(n32), .Y(n123)
         );
  OAI2BB2X1M U95 ( .B0(n223), .B1(n32), .A0N(MEM_9__2_), .A1N(n32), .Y(n124)
         );
  OAI2BB2X1M U96 ( .B0(n224), .B1(n32), .A0N(MEM_9__3_), .A1N(n32), .Y(n125)
         );
  OAI2BB2X1M U97 ( .B0(n229), .B1(n32), .A0N(MEM_9__4_), .A1N(n32), .Y(n126)
         );
  OAI2BB2X1M U98 ( .B0(n228), .B1(n32), .A0N(MEM_9__5_), .A1N(n32), .Y(n127)
         );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n32), .A0N(MEM_9__6_), .A1N(n32), .Y(n128)
         );
  OAI2BB2X1M U100 ( .B0(n226), .B1(n32), .A0N(MEM_9__7_), .A1N(n32), .Y(n129)
         );
  OAI2BB2X1M U101 ( .B0(n221), .B1(n34), .A0N(MEM_10__0_), .A1N(n34), .Y(n130)
         );
  OAI2BB2X1M U102 ( .B0(n222), .B1(n34), .A0N(MEM_10__1_), .A1N(n34), .Y(n131)
         );
  OAI2BB2X1M U103 ( .B0(n223), .B1(n34), .A0N(MEM_10__2_), .A1N(n34), .Y(n132)
         );
  OAI2BB2X1M U104 ( .B0(n224), .B1(n34), .A0N(MEM_10__3_), .A1N(n34), .Y(n133)
         );
  OAI2BB2X1M U105 ( .B0(n229), .B1(n34), .A0N(MEM_10__4_), .A1N(n34), .Y(n134)
         );
  OAI2BB2X1M U106 ( .B0(n228), .B1(n34), .A0N(MEM_10__5_), .A1N(n34), .Y(n135)
         );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n34), .A0N(MEM_10__6_), .A1N(n34), .Y(n136)
         );
  OAI2BB2X1M U108 ( .B0(n226), .B1(n34), .A0N(MEM_10__7_), .A1N(n34), .Y(n137)
         );
  OAI2BB2X1M U109 ( .B0(n221), .B1(n35), .A0N(MEM_11__0_), .A1N(n35), .Y(n138)
         );
  OAI2BB2X1M U110 ( .B0(n222), .B1(n35), .A0N(MEM_11__1_), .A1N(n35), .Y(n139)
         );
  OAI2BB2X1M U111 ( .B0(n223), .B1(n35), .A0N(MEM_11__2_), .A1N(n35), .Y(n140)
         );
  OAI2BB2X1M U112 ( .B0(n224), .B1(n35), .A0N(MEM_11__3_), .A1N(n35), .Y(n141)
         );
  OAI2BB2X1M U113 ( .B0(n229), .B1(n35), .A0N(MEM_11__4_), .A1N(n35), .Y(n142)
         );
  OAI2BB2X1M U114 ( .B0(n228), .B1(n35), .A0N(MEM_11__5_), .A1N(n35), .Y(n143)
         );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n35), .A0N(MEM_11__6_), .A1N(n35), .Y(n144)
         );
  OAI2BB2X1M U116 ( .B0(n226), .B1(n35), .A0N(MEM_11__7_), .A1N(n35), .Y(n145)
         );
  OAI2BB2X1M U117 ( .B0(n221), .B1(n23), .A0N(MEM_4__0_), .A1N(n23), .Y(n82)
         );
  OAI2BB2X1M U118 ( .B0(n222), .B1(n23), .A0N(MEM_4__1_), .A1N(n23), .Y(n83)
         );
  OAI2BB2X1M U119 ( .B0(n223), .B1(n23), .A0N(MEM_4__2_), .A1N(n23), .Y(n84)
         );
  OAI2BB2X1M U120 ( .B0(n224), .B1(n23), .A0N(MEM_4__3_), .A1N(n23), .Y(n85)
         );
  OAI2BB2X1M U121 ( .B0(n229), .B1(n23), .A0N(MEM_4__4_), .A1N(n23), .Y(n86)
         );
  OAI2BB2X1M U122 ( .B0(n228), .B1(n23), .A0N(MEM_4__5_), .A1N(n23), .Y(n87)
         );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n23), .A0N(MEM_4__6_), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U124 ( .B0(n226), .B1(n23), .A0N(MEM_4__7_), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U125 ( .B0(n221), .B1(n25), .A0N(MEM_5__0_), .A1N(n25), .Y(n90)
         );
  OAI2BB2X1M U126 ( .B0(n222), .B1(n25), .A0N(MEM_5__1_), .A1N(n25), .Y(n91)
         );
  OAI2BB2X1M U127 ( .B0(n223), .B1(n25), .A0N(MEM_5__2_), .A1N(n25), .Y(n92)
         );
  OAI2BB2X1M U128 ( .B0(n224), .B1(n25), .A0N(MEM_5__3_), .A1N(n25), .Y(n93)
         );
  OAI2BB2X1M U129 ( .B0(n229), .B1(n25), .A0N(MEM_5__4_), .A1N(n25), .Y(n94)
         );
  OAI2BB2X1M U130 ( .B0(n228), .B1(n25), .A0N(MEM_5__5_), .A1N(n25), .Y(n95)
         );
  OAI2BB2X1M U131 ( .B0(n227), .B1(n25), .A0N(MEM_5__6_), .A1N(n25), .Y(n96)
         );
  OAI2BB2X1M U132 ( .B0(n226), .B1(n25), .A0N(MEM_5__7_), .A1N(n25), .Y(n97)
         );
  OAI2BB2X1M U133 ( .B0(n221), .B1(n26), .A0N(MEM_6__0_), .A1N(n26), .Y(n98)
         );
  OAI2BB2X1M U134 ( .B0(n222), .B1(n26), .A0N(MEM_6__1_), .A1N(n26), .Y(n99)
         );
  OAI2BB2X1M U135 ( .B0(n223), .B1(n26), .A0N(MEM_6__2_), .A1N(n26), .Y(n100)
         );
  OAI2BB2X1M U136 ( .B0(n224), .B1(n26), .A0N(MEM_6__3_), .A1N(n26), .Y(n101)
         );
  OAI2BB2X1M U137 ( .B0(n229), .B1(n26), .A0N(MEM_6__4_), .A1N(n26), .Y(n102)
         );
  OAI2BB2X1M U138 ( .B0(n228), .B1(n26), .A0N(MEM_6__5_), .A1N(n26), .Y(n103)
         );
  OAI2BB2X1M U139 ( .B0(n227), .B1(n26), .A0N(MEM_6__6_), .A1N(n26), .Y(n104)
         );
  OAI2BB2X1M U140 ( .B0(n226), .B1(n26), .A0N(MEM_6__7_), .A1N(n26), .Y(n105)
         );
  OAI2BB2X1M U141 ( .B0(n221), .B1(n29), .A0N(MEM_7__0_), .A1N(n29), .Y(n106)
         );
  OAI2BB2X1M U142 ( .B0(n222), .B1(n29), .A0N(MEM_7__1_), .A1N(n29), .Y(n107)
         );
  OAI2BB2X1M U143 ( .B0(n223), .B1(n29), .A0N(MEM_7__2_), .A1N(n29), .Y(n108)
         );
  OAI2BB2X1M U144 ( .B0(n224), .B1(n29), .A0N(MEM_7__3_), .A1N(n29), .Y(n109)
         );
  OAI2BB2X1M U145 ( .B0(n229), .B1(n29), .A0N(MEM_7__4_), .A1N(n29), .Y(n110)
         );
  OAI2BB2X1M U146 ( .B0(n228), .B1(n29), .A0N(MEM_7__5_), .A1N(n29), .Y(n111)
         );
  OAI2BB2X1M U147 ( .B0(n227), .B1(n29), .A0N(MEM_7__6_), .A1N(n29), .Y(n112)
         );
  OAI2BB2X1M U148 ( .B0(n226), .B1(n29), .A0N(MEM_7__7_), .A1N(n29), .Y(n113)
         );
  OAI2BB2X1M U149 ( .B0(n221), .B1(n36), .A0N(MEM_12__0_), .A1N(n36), .Y(n146)
         );
  OAI2BB2X1M U150 ( .B0(n222), .B1(n36), .A0N(MEM_12__1_), .A1N(n36), .Y(n147)
         );
  OAI2BB2X1M U151 ( .B0(n223), .B1(n36), .A0N(MEM_12__2_), .A1N(n36), .Y(n148)
         );
  OAI2BB2X1M U152 ( .B0(n224), .B1(n36), .A0N(MEM_12__3_), .A1N(n36), .Y(n149)
         );
  OAI2BB2X1M U153 ( .B0(n229), .B1(n36), .A0N(MEM_12__4_), .A1N(n36), .Y(n150)
         );
  OAI2BB2X1M U154 ( .B0(n228), .B1(n36), .A0N(MEM_12__5_), .A1N(n36), .Y(n151)
         );
  OAI2BB2X1M U155 ( .B0(n227), .B1(n36), .A0N(MEM_12__6_), .A1N(n36), .Y(n152)
         );
  OAI2BB2X1M U156 ( .B0(n226), .B1(n36), .A0N(MEM_12__7_), .A1N(n36), .Y(n153)
         );
  OAI2BB2X1M U157 ( .B0(n221), .B1(n37), .A0N(MEM_13__0_), .A1N(n37), .Y(n154)
         );
  OAI2BB2X1M U158 ( .B0(n222), .B1(n37), .A0N(MEM_13__1_), .A1N(n37), .Y(n155)
         );
  OAI2BB2X1M U159 ( .B0(n223), .B1(n37), .A0N(MEM_13__2_), .A1N(n37), .Y(n156)
         );
  OAI2BB2X1M U160 ( .B0(n224), .B1(n37), .A0N(MEM_13__3_), .A1N(n37), .Y(n157)
         );
  OAI2BB2X1M U161 ( .B0(n229), .B1(n37), .A0N(MEM_13__4_), .A1N(n37), .Y(n158)
         );
  OAI2BB2X1M U162 ( .B0(n228), .B1(n37), .A0N(MEM_13__5_), .A1N(n37), .Y(n159)
         );
  OAI2BB2X1M U163 ( .B0(n227), .B1(n37), .A0N(MEM_13__6_), .A1N(n37), .Y(n160)
         );
  OAI2BB2X1M U164 ( .B0(n226), .B1(n37), .A0N(MEM_13__7_), .A1N(n37), .Y(n161)
         );
  OAI2BB2X1M U165 ( .B0(n221), .B1(n38), .A0N(MEM_14__0_), .A1N(n38), .Y(n162)
         );
  OAI2BB2X1M U166 ( .B0(n222), .B1(n38), .A0N(MEM_14__1_), .A1N(n38), .Y(n163)
         );
  OAI2BB2X1M U167 ( .B0(n223), .B1(n38), .A0N(MEM_14__2_), .A1N(n38), .Y(n164)
         );
  OAI2BB2X1M U168 ( .B0(n224), .B1(n38), .A0N(MEM_14__3_), .A1N(n38), .Y(n165)
         );
  OAI2BB2X1M U169 ( .B0(n229), .B1(n38), .A0N(MEM_14__4_), .A1N(n38), .Y(n166)
         );
  OAI2BB2X1M U170 ( .B0(n228), .B1(n38), .A0N(MEM_14__5_), .A1N(n38), .Y(n167)
         );
  OAI2BB2X1M U171 ( .B0(n227), .B1(n38), .A0N(MEM_14__6_), .A1N(n38), .Y(n168)
         );
  OAI2BB2X1M U172 ( .B0(n226), .B1(n38), .A0N(MEM_14__7_), .A1N(n38), .Y(n169)
         );
  OAI2BB2X1M U173 ( .B0(n221), .B1(n40), .A0N(MEM_15__0_), .A1N(n40), .Y(n170)
         );
  OAI2BB2X1M U174 ( .B0(n222), .B1(n40), .A0N(MEM_15__1_), .A1N(n40), .Y(n171)
         );
  OAI2BB2X1M U175 ( .B0(n223), .B1(n40), .A0N(MEM_15__2_), .A1N(n40), .Y(n172)
         );
  OAI2BB2X1M U176 ( .B0(n224), .B1(n40), .A0N(MEM_15__3_), .A1N(n40), .Y(n173)
         );
  OAI2BB2X1M U177 ( .B0(n229), .B1(n40), .A0N(MEM_15__4_), .A1N(n40), .Y(n174)
         );
  OAI2BB2X1M U178 ( .B0(n228), .B1(n40), .A0N(MEM_15__5_), .A1N(n40), .Y(n175)
         );
  OAI2BB2X1M U179 ( .B0(n227), .B1(n40), .A0N(MEM_15__6_), .A1N(n40), .Y(n176)
         );
  OAI2BB2X1M U180 ( .B0(n226), .B1(n40), .A0N(MEM_15__7_), .A1N(n40), .Y(n177)
         );
  NOR2BX2M U181 ( .AN(n13), .B(Address[3]), .Y(n28) );
  OAI2BB2X1M U182 ( .B0(n221), .B1(n20), .A0N(REG2[0]), .A1N(n20), .Y(n66) );
  OAI2BB2X1M U183 ( .B0(n222), .B1(n20), .A0N(REG2[1]), .A1N(n20), .Y(n67) );
  OAI2BB2X1M U184 ( .B0(n228), .B1(n20), .A0N(REG2[5]), .A1N(n20), .Y(n71) );
  OAI2BB2X1M U185 ( .B0(n224), .B1(n22), .A0N(REG3[3]), .A1N(n22), .Y(n77) );
  MX4X1M U186 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U187 ( .A(MEM_4__0_), .B(MEM_5__0_), .C(MEM_6__0_), .D(MEM_7__0_), 
        .S0(Address[0]), .S1(n199), .Y(n3) );
  MX4X1M U188 ( .A(MEM_4__1_), .B(MEM_5__1_), .C(MEM_6__1_), .D(MEM_7__1_), 
        .S0(n201), .S1(n199), .Y(n7) );
  MX4X1M U189 ( .A(MEM_4__2_), .B(MEM_5__2_), .C(MEM_6__2_), .D(MEM_7__2_), 
        .S0(n201), .S1(Address[1]), .Y(n11) );
  MX4X1M U190 ( .A(MEM_4__3_), .B(MEM_5__3_), .C(MEM_6__3_), .D(MEM_7__3_), 
        .S0(n201), .S1(Address[1]), .Y(n180) );
  MX4X1M U191 ( .A(MEM_4__4_), .B(MEM_5__4_), .C(MEM_6__4_), .D(MEM_7__4_), 
        .S0(n201), .S1(Address[1]), .Y(n184) );
  MX4X1M U192 ( .A(MEM_4__5_), .B(MEM_5__5_), .C(MEM_6__5_), .D(MEM_7__5_), 
        .S0(n202), .S1(Address[1]), .Y(n188) );
  MX4X1M U193 ( .A(MEM_4__6_), .B(MEM_5__6_), .C(MEM_6__6_), .D(MEM_7__6_), 
        .S0(n202), .S1(Address[1]), .Y(n192) );
  MX4X1M U194 ( .A(MEM_4__7_), .B(MEM_5__7_), .C(MEM_6__7_), .D(MEM_7__7_), 
        .S0(n202), .S1(Address[1]), .Y(n196) );
  MX4X1M U195 ( .A(MEM_12__0_), .B(MEM_13__0_), .C(MEM_14__0_), .D(MEM_15__0_), 
        .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U196 ( .A(MEM_12__2_), .B(MEM_13__2_), .C(MEM_14__2_), .D(MEM_15__2_), 
        .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U197 ( .A(MEM_12__3_), .B(MEM_13__3_), .C(MEM_14__3_), .D(MEM_15__3_), 
        .S0(n201), .S1(n199), .Y(n178) );
  MX4X1M U198 ( .A(MEM_12__4_), .B(MEM_13__4_), .C(MEM_14__4_), .D(MEM_15__4_), 
        .S0(n201), .S1(Address[1]), .Y(n182) );
  MX4X1M U199 ( .A(MEM_12__5_), .B(MEM_13__5_), .C(MEM_14__5_), .D(MEM_15__5_), 
        .S0(n202), .S1(n199), .Y(n186) );
  MX4X1M U200 ( .A(MEM_12__6_), .B(MEM_13__6_), .C(MEM_14__6_), .D(MEM_15__6_), 
        .S0(n202), .S1(n199), .Y(n190) );
  MX4X1M U201 ( .A(MEM_12__7_), .B(MEM_13__7_), .C(MEM_14__7_), .D(MEM_15__7_), 
        .S0(n202), .S1(n199), .Y(n194) );
  AND2X2M U202 ( .A(Address[3]), .B(n13), .Y(n39) );
  AO22X1M U203 ( .A0(N43), .A1(n220), .B0(RdData[0]), .B1(n14), .Y(n42) );
  MX4X1M U204 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(Address[3]), .S1(
        Address[2]), .Y(N43) );
  MX4X1M U205 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(
        Address[0]), .S1(n199), .Y(n4) );
  MX4X1M U206 ( .A(MEM_8__0_), .B(MEM_9__0_), .C(MEM_10__0_), .D(MEM_11__0_), 
        .S0(Address[0]), .S1(n199), .Y(n2) );
  AO22X1M U207 ( .A0(N42), .A1(n220), .B0(RdData[1]), .B1(n14), .Y(n43) );
  MX4X1M U208 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(Address[3]), .S1(
        Address[2]), .Y(N42) );
  MX4X1M U209 ( .A(MEM_8__1_), .B(MEM_9__1_), .C(MEM_10__1_), .D(MEM_11__1_), 
        .S0(Address[0]), .S1(n199), .Y(n6) );
  MX4X1M U210 ( .A(MEM_12__1_), .B(MEM_13__1_), .C(MEM_14__1_), .D(MEM_15__1_), 
        .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U211 ( .A0(N41), .A1(n220), .B0(RdData[2]), .B1(n14), .Y(n44) );
  MX4X1M U212 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(Address[3]), .S1(
        Address[2]), .Y(N41) );
  MX4X1M U213 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(Address[1]), .Y(n12) );
  MX4X1M U214 ( .A(MEM_8__2_), .B(MEM_9__2_), .C(MEM_10__2_), .D(MEM_11__2_), 
        .S0(n201), .S1(Address[1]), .Y(n10) );
  AO22X1M U215 ( .A0(N40), .A1(n220), .B0(RdData[3]), .B1(n14), .Y(n45) );
  MX4X1M U216 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(Address[3]), .S1(
        Address[2]), .Y(N40) );
  MX4X1M U217 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(Address[1]), .Y(n181) );
  MX4X1M U218 ( .A(MEM_8__3_), .B(MEM_9__3_), .C(MEM_10__3_), .D(MEM_11__3_), 
        .S0(n201), .S1(Address[1]), .Y(n179) );
  AO22X1M U219 ( .A0(N39), .A1(n220), .B0(RdData[4]), .B1(n14), .Y(n46) );
  MX4X1M U220 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(Address[3]), .S1(
        Address[2]), .Y(N39) );
  MX4X1M U221 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(Address[1]), .Y(n185) );
  MX4X1M U222 ( .A(MEM_8__4_), .B(MEM_9__4_), .C(MEM_10__4_), .D(MEM_11__4_), 
        .S0(n201), .S1(Address[1]), .Y(n183) );
  AO22X1M U223 ( .A0(N38), .A1(n220), .B0(RdData[5]), .B1(n14), .Y(n47) );
  MX4X1M U224 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(Address[3]), .S1(
        Address[2]), .Y(N38) );
  MX4X1M U225 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(Address[1]), .Y(n189) );
  MX4X1M U226 ( .A(MEM_8__5_), .B(MEM_9__5_), .C(MEM_10__5_), .D(MEM_11__5_), 
        .S0(n202), .S1(Address[1]), .Y(n187) );
  AO22X1M U227 ( .A0(N37), .A1(n220), .B0(RdData[6]), .B1(n14), .Y(n48) );
  MX4X1M U228 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(Address[3]), .S1(
        Address[2]), .Y(N37) );
  MX4X1M U229 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(Address[1]), .Y(n193) );
  MX4X1M U230 ( .A(MEM_8__6_), .B(MEM_9__6_), .C(MEM_10__6_), .D(MEM_11__6_), 
        .S0(n202), .S1(Address[1]), .Y(n191) );
  AO22X1M U231 ( .A0(N36), .A1(n220), .B0(RdData[7]), .B1(n14), .Y(n49) );
  MX4X1M U232 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(Address[3]), .S1(
        Address[2]), .Y(N36) );
  MX4X1M U233 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(Address[1]), .Y(n197) );
  MX4X1M U234 ( .A(MEM_8__7_), .B(MEM_9__7_), .C(MEM_10__7_), .D(MEM_11__7_), 
        .S0(n202), .S1(Address[1]), .Y(n195) );
  AO21XLM U235 ( .A0(RdData_Valid), .A1(n13), .B0(n220), .Y(n41) );
  INVX2M U236 ( .A(Address[0]), .Y(n218) );
  AND2X2M U237 ( .A(Address[2]), .B(n219), .Y(n24) );
  AND2X2M U238 ( .A(Address[2]), .B(n199), .Y(n27) );
  INVX2M U239 ( .A(Address[1]), .Y(n219) );
endmodule


module ClkDiv ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N5, N6, N7, N8, N12, Flag, N24, N25, N26, N27, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [3:0] counter;

  DFFRQX2M o_div_clk_reg ( .D(n27), .CK(i_ref_clk), .RN(i_rst_n), .Q(o_div_clk) );
  DFFRQX2M counter_reg_3_ ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M Flag_reg ( .D(n28), .CK(i_ref_clk), .RN(i_rst_n), .Q(Flag) );
  DFFRQX2M counter_reg_1_ ( .D(N25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M counter_reg_2_ ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M counter_reg_0_ ( .D(N24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  INVX2M U3 ( .A(N8), .Y(n11) );
  INVX2M U4 ( .A(n23), .Y(n8) );
  OAI22X1M U5 ( .A0(n19), .A1(n10), .B0(n9), .B1(n17), .Y(n28) );
  NOR3X2M U6 ( .A(n9), .B(n14), .C(n11), .Y(n19) );
  XNOR2X2M U7 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n3) );
  OAI33X2M U8 ( .A0(n9), .A1(i_div_ratio[0]), .A2(n11), .B0(n9), .B1(n26), 
        .B2(n14), .Y(n23) );
  AOI22X1M U9 ( .A0(N12), .A1(n10), .B0(Flag), .B1(N8), .Y(n26) );
  OAI32X1M U10 ( .A0(n12), .A1(counter[3]), .A2(n21), .B0(n22), .B1(n13), .Y(
        N27) );
  INVX2M U11 ( .A(counter[3]), .Y(n13) );
  OA21X2M U12 ( .A0(n23), .A1(counter[2]), .B0(n24), .Y(n22) );
  XNOR2X2M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N5) );
  NAND2BX2M U14 ( .AN(N7), .B(n20), .Y(N6) );
  OAI21X2M U15 ( .A0(i_div_ratio[2]), .A1(i_div_ratio[1]), .B0(i_div_ratio[3]), 
        .Y(n20) );
  NOR2X2M U16 ( .A(n23), .B(counter[0]), .Y(N24) );
  NAND3X2M U17 ( .A(i_div_ratio[0]), .B(n10), .C(N12), .Y(n17) );
  OAI22X1M U18 ( .A0(n24), .A1(n12), .B0(counter[2]), .B1(n21), .Y(N26) );
  AOI2B1X1M U19 ( .A1N(counter[1]), .A0(n8), .B0(N24), .Y(n24) );
  NOR2X2M U20 ( .A(n25), .B(n23), .Y(N25) );
  XNOR2X2M U21 ( .A(counter[0]), .B(counter[1]), .Y(n25) );
  NAND3X2M U22 ( .A(counter[0]), .B(n8), .C(counter[1]), .Y(n21) );
  INVX2M U23 ( .A(Flag), .Y(n10) );
  INVX2M U24 ( .A(counter[2]), .Y(n12) );
  CLKXOR2X2M U25 ( .A(o_div_clk), .B(n16), .Y(n27) );
  AOI21X2M U26 ( .A0(n17), .A1(n18), .B0(n9), .Y(n16) );
  OAI21X2M U27 ( .A0(Flag), .A1(n14), .B0(N8), .Y(n18) );
  NOR3X2M U28 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[2]), 
        .Y(N7) );
  INVX2M U29 ( .A(i_div_ratio[0]), .Y(n14) );
  INVX2M U30 ( .A(i_clk_en), .Y(n9) );
  XNOR2X1M U31 ( .A(N6), .B(counter[2]), .Y(n2) );
  XNOR2X1M U32 ( .A(N5), .B(counter[1]), .Y(n1) );
  CLKNAND2X2M U33 ( .A(n2), .B(n1), .Y(n4) );
  NOR4X1M U34 ( .A(n4), .B(n3), .C(N7), .D(counter[3]), .Y(N8) );
  CLKXOR2X2M U35 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n7) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n6) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n5) );
  NOR4X1M U38 ( .A(counter[3]), .B(n7), .C(n6), .D(n5), .Y(N12) );
endmodule


module Clock_Gating ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX8M TLATNCAX8M_I0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module BIT_SYNC ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   Sync_flops_0__0_;

  DFFRQX2M SYNC_reg_0_ ( .D(Sync_flops_0__0_), .CK(CLK), .RN(RST), .Q(SYNC[0])
         );
  DFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        Sync_flops_0__0_) );
endmodule


module Multi_Flip_Flop_0 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   Sync_flops_0__0_;

  DFFRQX2M SYNC_reg_0_ ( .D(Sync_flops_0__0_), .CK(CLK), .RN(RST), .Q(SYNC[0])
         );
  DFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        Sync_flops_0__0_) );
endmodule


module DATA_SYNC_0 ( Unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse
 );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_Gen_Q, Sync_enable, n2, n1;
  wire   [7:0] mux_out;

  Multi_Flip_Flop_0 MultiFlipFlop ( .ASYNC(bus_enable), .CLK(CLK), .RST(RST), 
        .SYNC(Sync_enable) );
  DFFRQX2M pulse_Gen_Q_reg ( .D(Sync_enable), .CK(CLK), .RN(RST), .Q(
        pulse_Gen_Q) );
  DFFRQX2M sync_bus_reg_7_ ( .D(mux_out[7]), .CK(CLK), .RN(RST), .Q(
        sync_bus[7]) );
  DFFRQX2M sync_bus_reg_3_ ( .D(mux_out[3]), .CK(CLK), .RN(RST), .Q(
        sync_bus[3]) );
  DFFRQX2M sync_bus_reg_5_ ( .D(mux_out[5]), .CK(CLK), .RN(RST), .Q(
        sync_bus[5]) );
  DFFRQX2M sync_bus_reg_6_ ( .D(mux_out[6]), .CK(CLK), .RN(RST), .Q(
        sync_bus[6]) );
  DFFRQX2M sync_bus_reg_0_ ( .D(mux_out[0]), .CK(CLK), .RN(RST), .Q(
        sync_bus[0]) );
  DFFRQX2M sync_bus_reg_1_ ( .D(mux_out[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus[1]) );
  DFFRQX2M sync_bus_reg_4_ ( .D(mux_out[4]), .CK(CLK), .RN(RST), .Q(
        sync_bus[4]) );
  DFFRQX2M sync_bus_reg_2_ ( .D(mux_out[2]), .CK(CLK), .RN(RST), .Q(
        sync_bus[2]) );
  DFFRQX2M enable_pulse_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  NAND2BX2M U4 ( .AN(pulse_Gen_Q), .B(Sync_enable), .Y(n2) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n1), .B0(sync_bus[0]), .B1(n2), .Y(
        mux_out[0]) );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n1), .B0(sync_bus[1]), .B1(n2), .Y(
        mux_out[1]) );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n1), .B0(sync_bus[2]), .B1(n2), .Y(
        mux_out[2]) );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n1), .B0(sync_bus[3]), .B1(n2), .Y(
        mux_out[3]) );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n1), .B0(sync_bus[4]), .B1(n2), .Y(
        mux_out[4]) );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n1), .B0(sync_bus[5]), .B1(n2), .Y(
        mux_out[5]) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n1), .B0(sync_bus[6]), .B1(n2), .Y(
        mux_out[6]) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n1), .B0(sync_bus[7]), .B1(n2), .Y(
        mux_out[7]) );
endmodule


module Multi_Flip_Flop_1 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   Sync_flops_0__0_;

  DFFRQX2M SYNC_reg_0_ ( .D(Sync_flops_0__0_), .CK(CLK), .RN(RST), .Q(SYNC[0])
         );
  DFFRQX2M Sync_flops_reg_0__0_ ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        Sync_flops_0__0_) );
endmodule


module DATA_SYNC_1 ( Unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse
 );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_Gen_Q, Sync_enable, n1, n3;
  wire   [7:0] mux_out;

  Multi_Flip_Flop_1 MultiFlipFlop ( .ASYNC(bus_enable), .CLK(CLK), .RST(RST), 
        .SYNC(Sync_enable) );
  DFFRQX2M pulse_Gen_Q_reg ( .D(Sync_enable), .CK(CLK), .RN(RST), .Q(
        pulse_Gen_Q) );
  DFFRQX2M sync_bus_reg_7_ ( .D(mux_out[7]), .CK(CLK), .RN(RST), .Q(
        sync_bus[7]) );
  DFFRQX2M sync_bus_reg_6_ ( .D(mux_out[6]), .CK(CLK), .RN(RST), .Q(
        sync_bus[6]) );
  DFFRQX2M sync_bus_reg_5_ ( .D(mux_out[5]), .CK(CLK), .RN(RST), .Q(
        sync_bus[5]) );
  DFFRQX2M sync_bus_reg_4_ ( .D(mux_out[4]), .CK(CLK), .RN(RST), .Q(
        sync_bus[4]) );
  DFFRQX2M sync_bus_reg_3_ ( .D(mux_out[3]), .CK(CLK), .RN(RST), .Q(
        sync_bus[3]) );
  DFFRQX2M sync_bus_reg_2_ ( .D(mux_out[2]), .CK(CLK), .RN(RST), .Q(
        sync_bus[2]) );
  DFFRQX2M sync_bus_reg_1_ ( .D(mux_out[1]), .CK(CLK), .RN(RST), .Q(
        sync_bus[1]) );
  DFFRQX2M sync_bus_reg_0_ ( .D(mux_out[0]), .CK(CLK), .RN(RST), .Q(
        sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  INVX2M U3 ( .A(n3), .Y(n1) );
  NAND2BX2M U4 ( .AN(pulse_Gen_Q), .B(Sync_enable), .Y(n3) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n1), .B0(sync_bus[0]), .B1(n3), .Y(
        mux_out[0]) );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n1), .B0(sync_bus[1]), .B1(n3), .Y(
        mux_out[1]) );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n1), .B0(sync_bus[2]), .B1(n3), .Y(
        mux_out[2]) );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n1), .B0(sync_bus[3]), .B1(n3), .Y(
        mux_out[3]) );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n1), .B0(sync_bus[4]), .B1(n3), .Y(
        mux_out[4]) );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n1), .B0(sync_bus[5]), .B1(n3), .Y(
        mux_out[5]) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n1), .B0(sync_bus[6]), .B1(n3), .Y(
        mux_out[6]) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n1), .B0(sync_bus[7]), .B1(n3), .Y(
        mux_out[7]) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   Sync_flops_0_;

  DFFRQX2M SYNC_RST_reg ( .D(Sync_flops_0_), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M Sync_flops_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(Sync_flops_0_)
         );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   Sync_flops_0_;

  DFFRQX2M SYNC_RST_reg ( .D(Sync_flops_0_), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M Sync_flops_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(Sync_flops_0_)
         );
endmodule


module SYS_CTRL_RX ( RX_P_DATA, RX_D_VLD, CLK, RST, EN, ALU_FUN, CLK_EN, 
        Address, WrEn, RdEn, WrData );
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input RX_D_VLD, CLK, RST;
  output EN, CLK_EN, WrEn, RdEn;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRQX2M Address_reg_1_ ( .D(n57), .CK(CLK), .RN(RST), .Q(Address[1]) );
  DFFRQX2M Address_reg_2_ ( .D(n58), .CK(CLK), .RN(RST), .Q(Address[2]) );
  DFFRQX2M Address_reg_3_ ( .D(n59), .CK(CLK), .RN(RST), .Q(Address[3]) );
  DFFRQX2M ALU_FUN_reg_3_ ( .D(n55), .CK(CLK), .RN(RST), .Q(ALU_FUN[3]) );
  DFFRQX2M Address_reg_0_ ( .D(n56), .CK(CLK), .RN(RST), .Q(Address[0]) );
  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_3_ ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFRQX2M ALU_FUN_reg_1_ ( .D(n53), .CK(CLK), .RN(RST), .Q(ALU_FUN[1]) );
  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M ALU_FUN_reg_0_ ( .D(n52), .CK(CLK), .RN(RST), .Q(ALU_FUN[0]) );
  DFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M ALU_FUN_reg_2_ ( .D(n54), .CK(CLK), .RN(RST), .Q(ALU_FUN[2]) );
  NOR3X2M U3 ( .A(current_state[0]), .B(current_state[2]), .C(n9), .Y(EN) );
  NOR2X2M U4 ( .A(n24), .B(n2), .Y(n51) );
  INVX2M U5 ( .A(WrEn), .Y(n1) );
  NOR2X2M U6 ( .A(n46), .B(n24), .Y(n49) );
  INVX2M U7 ( .A(n45), .Y(n4) );
  INVX2M U8 ( .A(n46), .Y(n5) );
  NOR2X2M U9 ( .A(n13), .B(n1), .Y(WrData[5]) );
  NOR2X2M U10 ( .A(n44), .B(n8), .Y(RdEn) );
  NOR2X2M U11 ( .A(n10), .B(n51), .Y(WrEn) );
  NAND2X2M U12 ( .A(n37), .B(n31), .Y(n24) );
  NOR2X2M U13 ( .A(n14), .B(n1), .Y(WrData[4]) );
  NOR2X2M U14 ( .A(n12), .B(n1), .Y(WrData[6]) );
  NAND3X2M U15 ( .A(n7), .B(n9), .C(n6), .Y(n44) );
  INVX2M U16 ( .A(n35), .Y(n2) );
  NOR2X2M U17 ( .A(n51), .B(n34), .Y(WrData[0]) );
  NOR2X2M U18 ( .A(n51), .B(n47), .Y(WrData[1]) );
  NOR2X2M U19 ( .A(n51), .B(n25), .Y(WrData[2]) );
  NOR2X2M U20 ( .A(n51), .B(n42), .Y(WrData[3]) );
  NAND2X2M U21 ( .A(n36), .B(n23), .Y(n46) );
  NAND3X2M U22 ( .A(n7), .B(n8), .C(n50), .Y(n36) );
  NAND2X2M U23 ( .A(n17), .B(n19), .Y(n45) );
  INVX2M U24 ( .A(n34), .Y(n11) );
  AND2X2M U25 ( .A(n26), .B(n27), .Y(n20) );
  OR3X2M U26 ( .A(n24), .B(EN), .C(n45), .Y(CLK_EN) );
  INVX2M U27 ( .A(n37), .Y(n3) );
  NOR2X2M U28 ( .A(n6), .B(current_state[3]), .Y(n50) );
  NOR2BX2M U29 ( .AN(RX_P_DATA[7]), .B(n1), .Y(WrData[7]) );
  NAND2X2M U30 ( .A(n2), .B(current_state[2]), .Y(n31) );
  NAND3X2M U31 ( .A(n50), .B(n7), .C(current_state[2]), .Y(n37) );
  INVX2M U32 ( .A(current_state[2]), .Y(n8) );
  INVX2M U33 ( .A(RX_D_VLD), .Y(n10) );
  INVX2M U34 ( .A(current_state[1]), .Y(n7) );
  NAND3X2M U35 ( .A(n6), .B(n9), .C(current_state[1]), .Y(n35) );
  INVX2M U36 ( .A(current_state[3]), .Y(n9) );
  INVX2M U37 ( .A(current_state[0]), .Y(n6) );
  NOR4X1M U38 ( .A(n13), .B(n15), .C(RX_P_DATA[2]), .D(RX_P_DATA[6]), .Y(n32)
         );
  NOR3X2M U39 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[5]), .C(n12), .Y(n27) );
  OAI211X2M U40 ( .A0(RX_D_VLD), .A1(n17), .B0(n21), .C0(n22), .Y(
        next_state[2]) );
  AOI2BB1X2M U41 ( .A0N(n23), .A1N(n10), .B0(n24), .Y(n22) );
  NAND4BX1M U42 ( .AN(n25), .B(n20), .C(n16), .D(n14), .Y(n21) );
  NAND4X2M U43 ( .A(current_state[3]), .B(current_state[0]), .C(n7), .D(n8), 
        .Y(n19) );
  OAI211X2M U44 ( .A0(n5), .A1(n16), .B0(n31), .C0(n48), .Y(n56) );
  NAND2X2M U45 ( .A(Address[0]), .B(n49), .Y(n48) );
  OAI211X2M U46 ( .A0(n10), .A1(n17), .B0(n18), .C0(n19), .Y(next_state[3]) );
  NAND4X2M U47 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[2]), .C(n11), .D(n20), .Y(n18)
         );
  OAI211X2M U48 ( .A0(n10), .A1(n31), .B0(n38), .C0(n39), .Y(next_state[0]) );
  NAND4X2M U49 ( .A(n33), .B(n40), .C(RX_P_DATA[7]), .D(n41), .Y(n39) );
  OAI31X1M U50 ( .A0(n45), .A1(n3), .A2(n46), .B0(n10), .Y(n38) );
  NOR2X2M U51 ( .A(n42), .B(n43), .Y(n41) );
  NAND3X2M U52 ( .A(current_state[1]), .B(n50), .C(current_state[2]), .Y(n17)
         );
  NAND2X2M U53 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .Y(n42) );
  NAND2X2M U54 ( .A(RX_P_DATA[0]), .B(RX_D_VLD), .Y(n34) );
  NOR2X2M U55 ( .A(n44), .B(current_state[2]), .Y(n33) );
  NAND3X2M U56 ( .A(n50), .B(n8), .C(current_state[1]), .Y(n23) );
  NAND2X2M U57 ( .A(RX_P_DATA[2]), .B(RX_D_VLD), .Y(n25) );
  OAI2BB2X1M U58 ( .B0(n5), .B1(n15), .A0N(Address[1]), .A1N(n49), .Y(n57) );
  OAI2BB2X1M U59 ( .B0(n4), .B1(n34), .A0N(ALU_FUN[0]), .A1N(n4), .Y(n52) );
  OAI2BB2X1M U60 ( .B0(n4), .B1(n47), .A0N(ALU_FUN[1]), .A1N(n4), .Y(n53) );
  OAI2BB2X1M U61 ( .B0(n4), .B1(n25), .A0N(ALU_FUN[2]), .A1N(n4), .Y(n54) );
  OAI2BB2X1M U62 ( .B0(n4), .B1(n42), .A0N(ALU_FUN[3]), .A1N(n4), .Y(n55) );
  NAND2X2M U63 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n47) );
  AND3X2M U64 ( .A(RX_P_DATA[3]), .B(n33), .C(RX_P_DATA[7]), .Y(n26) );
  NAND4BBX1M U65 ( .AN(n28), .BN(n29), .C(n30), .D(n31), .Y(next_state[1]) );
  NAND4X2M U66 ( .A(n32), .B(RX_P_DATA[4]), .C(n11), .D(n26), .Y(n30) );
  AOI31X2M U67 ( .A0(n36), .A1(n19), .A2(n37), .B0(n10), .Y(n28) );
  AOI31X2M U68 ( .A0(n35), .A1(n17), .A2(n23), .B0(RX_D_VLD), .Y(n29) );
  INVX2M U69 ( .A(RX_P_DATA[1]), .Y(n15) );
  INVX2M U70 ( .A(RX_P_DATA[5]), .Y(n13) );
  INVX2M U71 ( .A(RX_P_DATA[6]), .Y(n12) );
  INVX2M U72 ( .A(RX_P_DATA[4]), .Y(n14) );
  AO21XLM U73 ( .A0(n27), .A1(RX_P_DATA[2]), .B0(n32), .Y(n40) );
  CLKXOR2X2M U74 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n43) );
  INVX2M U75 ( .A(RX_P_DATA[0]), .Y(n16) );
  AO22X1M U76 ( .A0(n46), .A1(RX_P_DATA[2]), .B0(Address[2]), .B1(n49), .Y(n58) );
  AO22X1M U77 ( .A0(n46), .A1(RX_P_DATA[3]), .B0(Address[3]), .B1(n49), .Y(n59) );
endmodule


module SYS_CTRL_TX ( ALU_OUT, OUT_Valid, RDData, RdData_Valid, Busy, CLK, RST, 
        clk_div_en, TX_P_DATA, TX_D_VLD );
  input [15:0] ALU_OUT;
  input [7:0] RDData;
  output [7:0] TX_P_DATA;
  input OUT_Valid, RdData_Valid, Busy, CLK, RST;
  output clk_div_en, TX_D_VLD;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n3, n4, n5, n25, n26;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X2M U5 ( .A(n5), .B(n3), .Y(n8) );
  NAND3BX2M U6 ( .AN(n9), .B(n10), .C(n11), .Y(next_state[1]) );
  NAND3X2M U7 ( .A(n12), .B(n26), .C(OUT_Valid), .Y(n11) );
  NOR3X2M U8 ( .A(current_state[1]), .B(current_state[2]), .C(n3), .Y(n14) );
  NOR3X2M U9 ( .A(current_state[0]), .B(current_state[2]), .C(n5), .Y(n9) );
  XNOR2X2M U10 ( .A(current_state[0]), .B(n5), .Y(n6) );
  NOR3X2M U11 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n12) );
  OAI2B11X2M U12 ( .A1N(n12), .A0(n26), .B0(n10), .C0(n13), .Y(next_state[0])
         );
  AOI22X1M U13 ( .A0(n14), .A1(n25), .B0(n9), .B1(Busy), .Y(n13) );
  INVX2M U14 ( .A(Busy), .Y(n25) );
  NOR3X2M U15 ( .A(n6), .B(Busy), .C(n7), .Y(next_state[2]) );
  XNOR2X2M U16 ( .A(n8), .B(current_state[2]), .Y(n7) );
  INVX2M U17 ( .A(current_state[2]), .Y(n4) );
  INVX2M U18 ( .A(current_state[1]), .Y(n5) );
  INVX2M U19 ( .A(current_state[0]), .Y(n3) );
  NAND3X2M U20 ( .A(n8), .B(n4), .C(Busy), .Y(n10) );
  INVX2M U21 ( .A(RdData_Valid), .Y(n26) );
  NOR3X2M U22 ( .A(current_state[0]), .B(current_state[1]), .C(n4), .Y(n16) );
  NOR2X2M U23 ( .A(n8), .B(n24), .Y(TX_D_VLD) );
  XNOR2X2M U24 ( .A(n6), .B(current_state[2]), .Y(n24) );
  OAI2BB1X2M U25 ( .A0N(ALU_OUT[0]), .A1N(n9), .B0(n23), .Y(TX_P_DATA[0]) );
  AOI22X1M U26 ( .A0(ALU_OUT[8]), .A1(n16), .B0(RDData[0]), .B1(n14), .Y(n23)
         );
  OAI2BB1X2M U27 ( .A0N(ALU_OUT[1]), .A1N(n9), .B0(n22), .Y(TX_P_DATA[1]) );
  AOI22X1M U28 ( .A0(ALU_OUT[9]), .A1(n16), .B0(RDData[1]), .B1(n14), .Y(n22)
         );
  OAI2BB1X2M U29 ( .A0N(ALU_OUT[2]), .A1N(n9), .B0(n21), .Y(TX_P_DATA[2]) );
  AOI22X1M U30 ( .A0(ALU_OUT[10]), .A1(n16), .B0(RDData[2]), .B1(n14), .Y(n21)
         );
  OAI2BB1X2M U31 ( .A0N(ALU_OUT[3]), .A1N(n9), .B0(n20), .Y(TX_P_DATA[3]) );
  AOI22X1M U32 ( .A0(ALU_OUT[11]), .A1(n16), .B0(RDData[3]), .B1(n14), .Y(n20)
         );
  OAI2BB1X2M U33 ( .A0N(ALU_OUT[4]), .A1N(n9), .B0(n19), .Y(TX_P_DATA[4]) );
  AOI22X1M U34 ( .A0(ALU_OUT[12]), .A1(n16), .B0(RDData[4]), .B1(n14), .Y(n19)
         );
  OAI2BB1X2M U35 ( .A0N(ALU_OUT[5]), .A1N(n9), .B0(n18), .Y(TX_P_DATA[5]) );
  AOI22X1M U36 ( .A0(ALU_OUT[13]), .A1(n16), .B0(RDData[5]), .B1(n14), .Y(n18)
         );
  OAI2BB1X2M U37 ( .A0N(ALU_OUT[6]), .A1N(n9), .B0(n17), .Y(TX_P_DATA[6]) );
  AOI22X1M U38 ( .A0(ALU_OUT[14]), .A1(n16), .B0(RDData[6]), .B1(n14), .Y(n17)
         );
  OAI2BB1X2M U39 ( .A0N(ALU_OUT[7]), .A1N(n9), .B0(n15), .Y(TX_P_DATA[7]) );
  AOI22X1M U40 ( .A0(ALU_OUT[15]), .A1(n16), .B0(RDData[7]), .B1(n14), .Y(n15)
         );
endmodule


module SYS_CTRL ( RX_P_DATA, RX_D_VLD, CLK, RST, ALU_OUT, OUT_Valid, RDData, 
        RdData_Valid, Busy, EN, ALU_FUN, CLK_EN, Address, WrEn, RdEn, WrData, 
        clk_div_en, TX_P_DATA, TX_D_VLD );
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  input [7:0] RDData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input RX_D_VLD, CLK, RST, OUT_Valid, RdData_Valid, Busy;
  output EN, CLK_EN, WrEn, RdEn, clk_div_en, TX_D_VLD;


  SYS_CTRL_RX SYS_CTRL_RX_I0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), 
        .CLK(CLK), .RST(RST), .EN(EN), .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData) );
  SYS_CTRL_TX SYS_CTRL_TX_I0 ( .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), 
        .RDData(RDData), .RdData_Valid(RdData_Valid), .Busy(Busy), .CLK(CLK), 
        .RST(RST), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD) );
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
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n16, 
        n14, n13, n15, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
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
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n9), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n8), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
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
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
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
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n5), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n7), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n6), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n4), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n3), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  AND2X2M U2 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n9) );
  AND2X2M U9 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  INVX2M U10 ( .A(ab_0__6_), .Y(n22) );
  CLKXOR2X2M U11 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U12 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  INVX2M U13 ( .A(ab_0__7_), .Y(n23) );
  INVX2M U14 ( .A(ab_0__5_), .Y(n21) );
  INVX2M U15 ( .A(ab_0__4_), .Y(n20) );
  INVX2M U16 ( .A(ab_0__3_), .Y(n19) );
  AND2X2M U17 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n11) );
  AND2X2M U18 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n12) );
  CLKXOR2X2M U19 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U20 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  INVX2M U21 ( .A(ab_0__2_), .Y(n18) );
  AND2X2M U22 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U23 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n14) );
  CLKXOR2X2M U24 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  AND2X2M U25 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n15) );
  CLKXOR2X2M U26 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  XNOR2X2M U27 ( .A(CARRYB_7__0_), .B(n17), .Y(A1_6_) );
  INVX2M U28 ( .A(SUMB_7__1_), .Y(n17) );
  AND2X2M U29 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
  CLKXOR2X2M U30 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(ab_1__3_), .B(n20), .Y(SUMB_1__3_) );
  XNOR2X2M U32 ( .A(ab_1__2_), .B(n19), .Y(SUMB_1__2_) );
  XNOR2X2M U33 ( .A(ab_1__6_), .B(n23), .Y(SUMB_1__6_) );
  XNOR2X2M U34 ( .A(ab_1__5_), .B(n22), .Y(SUMB_1__5_) );
  XNOR2X2M U35 ( .A(ab_1__4_), .B(n21), .Y(SUMB_1__4_) );
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
endmodule


module ALU ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N165, N166, N167, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;
  wire   [15:0] ALU_Value;

  ALU_DW_div_uns_0 div_68 ( .a({n13, n12, n11, n10, n9, n8, n7, n6}), .b({B[7], 
        n5, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}), .remainder({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  ALU_DW01_sub_0 sub_62 ( .A({1'b0, n13, n12, n11, n10, n9, n8, n7, n6}), .B({
        1'b0, B[7], n5, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_59 ( .A({1'b0, n13, n12, n11, n10, n9, n8, n7, n6}), .B({
        1'b0, B[7], n5, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_65 ( .A({n13, n12, n11, n10, n9, n8, n7, n6}), .B({B[7], 
        n5, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M ALU_OUT_reg_7_ ( .D(ALU_Value[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M ALU_OUT_reg_6_ ( .D(ALU_Value[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M ALU_OUT_reg_5_ ( .D(ALU_Value[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M ALU_OUT_reg_4_ ( .D(ALU_Value[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M ALU_OUT_reg_3_ ( .D(ALU_Value[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M ALU_OUT_reg_2_ ( .D(ALU_Value[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M ALU_OUT_reg_1_ ( .D(ALU_Value[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M ALU_OUT_reg_0_ ( .D(ALU_Value[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M ALU_OUT_reg_15_ ( .D(ALU_Value[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M ALU_OUT_reg_14_ ( .D(ALU_Value[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M ALU_OUT_reg_13_ ( .D(ALU_Value[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M ALU_OUT_reg_12_ ( .D(ALU_Value[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M ALU_OUT_reg_11_ ( .D(ALU_Value[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M ALU_OUT_reg_10_ ( .D(ALU_Value[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M ALU_OUT_reg_9_ ( .D(ALU_Value[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M ALU_OUT_reg_8_ ( .D(ALU_Value[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  NOR3BX2M U3 ( .AN(n105), .B(n130), .C(ALU_FUN[2]), .Y(n49) );
  BUFX2M U4 ( .A(A[6]), .Y(n12) );
  OAI2BB1X2M U7 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_Value[15]) );
  OAI2BB1X2M U8 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_Value[12]) );
  OAI2BB1X2M U9 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_Value[13]) );
  OAI2BB1X2M U10 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_Value[14]) );
  OAI2BB1X2M U11 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_Value[9]) );
  OAI2BB1X2M U12 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_Value[10]) );
  OAI2BB1X2M U13 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_Value[11]) );
  AOI31X2M U14 ( .A0(n93), .A1(n94), .A2(n95), .B0(n126), .Y(ALU_Value[0]) );
  AOI22X1M U15 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U16 ( .A0(n15), .A1(n142), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U17 ( .A0(N109), .A1(n14), .B0(n6), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U18 ( .A0(n81), .A1(n82), .A2(n83), .B0(n126), .Y(ALU_Value[1]) );
  AOI222X1M U19 ( .A0(N92), .A1(n37), .B0(N110), .B1(n14), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U20 ( .A0(n8), .A1(n128), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U21 ( .A0(N126), .A1(n49), .B0(n15), .B1(n141), .C0(n7), .C1(n42), 
        .Y(n82) );
  AOI31X2M U22 ( .A0(n75), .A1(n76), .A2(n77), .B0(n126), .Y(ALU_Value[2]) );
  AOI22X1M U23 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U24 ( .A0(n9), .A1(n128), .B0(n15), .B1(n140), .C0(n78), .Y(n77)
         );
  AOI222X1M U25 ( .A0(N111), .A1(n14), .B0(n8), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U26 ( .A0(n69), .A1(n70), .A2(n71), .B0(n126), .Y(ALU_Value[3]) );
  AOI22X1M U27 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U28 ( .A0(n10), .A1(n128), .B0(n15), .B1(n139), .C0(n72), .Y(n71)
         );
  AOI222X1M U29 ( .A0(N112), .A1(n14), .B0(n9), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U30 ( .A0(n63), .A1(n64), .A2(n65), .B0(n126), .Y(ALU_Value[4]) );
  AOI221XLM U31 ( .A0(n128), .A1(n11), .B0(n15), .B1(n138), .C0(n66), .Y(n65)
         );
  AOI22X1M U32 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI222X1M U33 ( .A0(N113), .A1(n14), .B0(n10), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI31X2M U34 ( .A0(n57), .A1(n58), .A2(n59), .B0(n126), .Y(ALU_Value[5]) );
  AOI221XLM U35 ( .A0(n128), .A1(n12), .B0(n15), .B1(n137), .C0(n60), .Y(n59)
         );
  AOI22X1M U36 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI222X1M U37 ( .A0(N114), .A1(n14), .B0(n11), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U38 ( .A0(n51), .A1(n52), .A2(n53), .B0(n126), .Y(ALU_Value[6]) );
  AOI221XLM U39 ( .A0(n128), .A1(n13), .B0(n15), .B1(n136), .C0(n54), .Y(n53)
         );
  AOI22X1M U40 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI222X1M U41 ( .A0(N115), .A1(n14), .B0(n42), .B1(n12), .C0(N131), .C1(n49), 
        .Y(n52) );
  AOI31X2M U42 ( .A0(n38), .A1(n39), .A2(n40), .B0(n126), .Y(ALU_Value[7]) );
  AOI221XLM U43 ( .A0(n15), .A1(n135), .B0(n42), .B1(n13), .C0(n43), .Y(n40)
         );
  AOI22X1M U44 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI22X1M U45 ( .A0(N132), .A1(n49), .B0(N116), .B1(n14), .Y(n39) );
  AOI21X2M U46 ( .A0(n33), .A1(n34), .B0(n126), .Y(ALU_Value[8]) );
  AOI21X2M U47 ( .A0(N99), .A1(n37), .B0(n125), .Y(n33) );
  AOI2BB2XLM U48 ( .B0(N117), .B1(n14), .A0N(n135), .A1N(n36), .Y(n34) );
  INVX2M U49 ( .A(n5), .Y(n124) );
  NAND2X2M U50 ( .A(Enable), .B(n125), .Y(n32) );
  INVX2M U51 ( .A(n92), .Y(n125) );
  AOI211X2M U52 ( .A0(N108), .A1(n50), .B0(n15), .C0(n47), .Y(n92) );
  AND4X2M U53 ( .A(N167), .B(n99), .C(n4), .D(n131), .Y(n90) );
  OAI222X1M U54 ( .A0(n55), .A1(n124), .B0(n5), .B1(n56), .C0(n36), .C1(n137), 
        .Y(n54) );
  AOI221XLM U55 ( .A0(n12), .A1(n46), .B0(n47), .B1(n136), .C0(n15), .Y(n56)
         );
  AOI221XLM U56 ( .A0(n46), .A1(n136), .B0(n12), .B1(n48), .C0(n42), .Y(n55)
         );
  OAI2BB1X2M U57 ( .A0N(n129), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U58 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND3X2M U59 ( .A(n106), .B(n131), .C(n4), .Y(n46) );
  AND2X2M U60 ( .A(n99), .B(n105), .Y(n42) );
  NOR2X2M U61 ( .A(n131), .B(n4), .Y(n105) );
  BUFX2M U62 ( .A(n41), .Y(n15) );
  NOR2X2M U63 ( .A(n107), .B(n127), .Y(n41) );
  INVX2M U64 ( .A(n100), .Y(n127) );
  INVX2M U65 ( .A(n107), .Y(n129) );
  NOR2BX2M U66 ( .AN(n106), .B(n127), .Y(n37) );
  NAND3X2M U67 ( .A(n129), .B(n131), .C(n4), .Y(n36) );
  INVX2M U68 ( .A(Enable), .Y(n126) );
  NOR2BX2M U69 ( .AN(n14), .B(n126), .Y(n31) );
  AND2X2M U70 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U71 ( .A(n91), .Y(n128) );
  INVX2M U72 ( .A(n7), .Y(n141) );
  INVX2M U73 ( .A(n6), .Y(n142) );
  INVX2M U74 ( .A(n12), .Y(n136) );
  INVX2M U75 ( .A(n13), .Y(n135) );
  INVX2M U76 ( .A(n9), .Y(n139) );
  INVX2M U77 ( .A(n8), .Y(n140) );
  INVX2M U78 ( .A(n11), .Y(n137) );
  INVX2M U79 ( .A(n10), .Y(n138) );
  BUFX2M U80 ( .A(B[6]), .Y(n5) );
  BUFX2M U81 ( .A(A[7]), .Y(n13) );
  BUFX2M U82 ( .A(A[5]), .Y(n11) );
  BUFX2M U83 ( .A(A[4]), .Y(n10) );
  BUFX2M U84 ( .A(A[3]), .Y(n9) );
  BUFX2M U85 ( .A(A[2]), .Y(n8) );
  BUFX2M U86 ( .A(A[1]), .Y(n7) );
  BUFX2M U87 ( .A(A[0]), .Y(n6) );
  INVX2M U88 ( .A(n27), .Y(n122) );
  INVX2M U89 ( .A(n16), .Y(n120) );
  OAI21X2M U90 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U91 ( .A0(n6), .A1(n46), .B0(n47), .B1(n142), .C0(n15), .Y(n102)
         );
  AOI31X2M U92 ( .A0(N165), .A1(n4), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U93 ( .A(n130), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U94 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U95 ( .A0(n7), .A1(n46), .B0(n47), .B1(n141), .C0(n15), .Y(n87) );
  AOI31X2M U96 ( .A0(N166), .A1(n4), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U97 ( .A(n131), .B(ALU_FUN[2]), .C(n130), .Y(n89) );
  INVX2M U98 ( .A(B[0]), .Y(n119) );
  INVX2M U99 ( .A(B[2]), .Y(n121) );
  OAI222X1M U100 ( .A0(n79), .A1(n121), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n141), .Y(n78) );
  AOI221XLM U101 ( .A0(n8), .A1(n46), .B0(n47), .B1(n140), .C0(n15), .Y(n80)
         );
  AOI221XLM U102 ( .A0(n46), .A1(n140), .B0(n8), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U103 ( .A0(n73), .A1(n123), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n140), .Y(n72) );
  AOI221XLM U104 ( .A0(n9), .A1(n46), .B0(n47), .B1(n139), .C0(n15), .Y(n74)
         );
  AOI221XLM U105 ( .A0(n46), .A1(n139), .B0(n9), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U106 ( .A0(n67), .A1(n134), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n139), .Y(n66) );
  INVX2M U107 ( .A(B[4]), .Y(n134) );
  AOI221XLM U108 ( .A0(n10), .A1(n46), .B0(n47), .B1(n138), .C0(n15), .Y(n68)
         );
  AOI221XLM U109 ( .A0(n46), .A1(n138), .B0(n10), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U110 ( .A0(n61), .A1(n133), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n138), .Y(n60) );
  INVX2M U111 ( .A(B[5]), .Y(n133) );
  AOI221XLM U112 ( .A0(n11), .A1(n46), .B0(n47), .B1(n137), .C0(n15), .Y(n62)
         );
  AOI221XLM U113 ( .A0(n46), .A1(n137), .B0(n11), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U114 ( .A0(n44), .A1(n132), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n136), .Y(n43) );
  INVX2M U115 ( .A(B[7]), .Y(n132) );
  AOI221XLM U116 ( .A0(n46), .A1(n13), .B0(n47), .B1(n135), .C0(n15), .Y(n45)
         );
  AOI221XLM U117 ( .A0(n46), .A1(n135), .B0(n13), .B1(n48), .C0(n42), .Y(n44)
         );
  OAI2B2X1M U118 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n141), .Y(n97) );
  AOI221XLM U119 ( .A0(n46), .A1(n142), .B0(n6), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI2B2X1M U120 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n142), .Y(n85) );
  AOI221XLM U121 ( .A0(n46), .A1(n141), .B0(n7), .B1(n48), .C0(n42), .Y(n86)
         );
  NOR2X2M U122 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND2X2M U123 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  NOR2X2M U124 ( .A(n4), .B(ALU_FUN[0]), .Y(n100) );
  INVX2M U125 ( .A(ALU_FUN[0]), .Y(n131) );
  INVX2M U126 ( .A(ALU_FUN[1]), .Y(n130) );
  BUFX2M U127 ( .A(ALU_FUN[3]), .Y(n4) );
  NAND3X2M U128 ( .A(n106), .B(ALU_FUN[0]), .C(n4), .Y(n101) );
  AND2X2M U129 ( .A(ALU_FUN[2]), .B(n130), .Y(n99) );
  INVX2M U130 ( .A(B[3]), .Y(n123) );
  NAND3X2M U131 ( .A(n4), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  BUFX2M U132 ( .A(n35), .Y(n14) );
  NOR3X2M U133 ( .A(n127), .B(ALU_FUN[2]), .C(n130), .Y(n35) );
  BUFX2M U134 ( .A(Enable), .Y(OUT_VALID) );
  NOR2X1M U135 ( .A(n135), .B(B[7]), .Y(n115) );
  NAND2BX1M U136 ( .AN(B[4]), .B(n10), .Y(n108) );
  NAND2BX1M U137 ( .AN(n10), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U138 ( .A(n108), .B(n20), .Y(n110) );
  NOR2X1M U139 ( .A(n123), .B(n9), .Y(n28) );
  NOR2X1M U140 ( .A(n121), .B(n8), .Y(n19) );
  NOR2X1M U141 ( .A(n119), .B(n6), .Y(n16) );
  CLKNAND2X2M U142 ( .A(n8), .B(n121), .Y(n30) );
  NAND2BX1M U143 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U144 ( .A0(n16), .A1(n141), .B0(B[1]), .Y(n17) );
  AOI211X1M U145 ( .A0(n7), .A1(n120), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U146 ( .A(n9), .B(n123), .Y(n29) );
  OAI31X1M U147 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U148 ( .AN(n11), .B(B[5]), .Y(n113) );
  OAI211X1M U149 ( .A0(n110), .A1(n21), .B0(n20), .C0(n113), .Y(n22) );
  NAND2BX1M U150 ( .AN(B[5]), .B(n11), .Y(n109) );
  XNOR2X1M U151 ( .A(n12), .B(n5), .Y(n112) );
  AOI32X1M U152 ( .A0(n22), .A1(n109), .A2(n112), .B0(n5), .B1(n136), .Y(n23)
         );
  CLKNAND2X2M U153 ( .A(B[7]), .B(n135), .Y(n116) );
  OAI21X1M U154 ( .A0(n115), .A1(n23), .B0(n116), .Y(N167) );
  CLKNAND2X2M U155 ( .A(n6), .B(n119), .Y(n26) );
  OA21X1M U156 ( .A0(n26), .A1(n141), .B0(B[1]), .Y(n24) );
  AOI211X1M U157 ( .A0(n26), .A1(n141), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U158 ( .A0(n122), .A1(n30), .A2(n29), .B0(n28), .Y(n111) );
  OAI2B11X1M U159 ( .A1N(n111), .A0(n110), .B0(n109), .C0(n108), .Y(n114) );
  AOI32X1M U160 ( .A0(n114), .A1(n113), .A2(n112), .B0(n12), .B1(n124), .Y(
        n117) );
  AOI2B1X1M U161 ( .A1N(n117), .A0(n116), .B0(n115), .Y(n118) );
  CLKINVX1M U162 ( .A(n118), .Y(N166) );
  NOR2X1M U163 ( .A(N167), .B(N166), .Y(N165) );
endmodule


module deserializer ( deser_en, sampled_bit, edge_cnt, CLK, RST, P_DATA );
  input [2:0] edge_cnt;
  output [7:0] P_DATA;
  input deser_en, sampled_bit, CLK, RST;
  wire   n1, n10, n11, n12, n13, n14, n15, n16, n17, n2, n3, n4, n5, n6, n7,
         n8, n9;

  DFFRQX2M P_DATA_reg_0_ ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M P_DATA_reg_5_ ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M P_DATA_reg_1_ ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M P_DATA_reg_4_ ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M P_DATA_reg_7_ ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M P_DATA_reg_3_ ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M P_DATA_reg_6_ ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M P_DATA_reg_2_ ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  NAND4X2M U2 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(edge_cnt[0]), .D(deser_en), .Y(n1) );
  OAI22X1M U3 ( .A0(n2), .A1(n9), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n4), .Y(n15) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n3), .Y(n16) );
  INVX2M U9 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n9), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n3), .A0N(sampled_bit), .A1N(n2), .Y(n17) );
  INVX2M U12 ( .A(P_DATA[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA[7]), .Y(n3) );
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
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XNOR2X2M U5 ( .A(sampled_bit), .B(PAR_TYPE), .Y(n4) );
  XOR3XLM U6 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
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


module data_sampling ( edge_cnt, dat_samp_en, CLK, RST, RX_IN, Prescale, 
        sampled_bit );
  input [2:0] edge_cnt;
  input [4:0] Prescale;
  input dat_samp_en, CLK, RST, RX_IN;
  output sampled_bit;
  wire   sample_bit_1, sample_bit_2, sample_bit_3, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n1;

  DFFRQX2M sample_bit_3_reg ( .D(n37), .CK(CLK), .RN(RST), .Q(sample_bit_3) );
  DFFRQX2M sample_bit_1_reg ( .D(n36), .CK(CLK), .RN(RST), .Q(sample_bit_1) );
  DFFRQX2M sample_bit_2_reg ( .D(n38), .CK(CLK), .RN(RST), .Q(sample_bit_2) );
  DFFRQX2M sampled_bit_reg ( .D(n35), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  INVX2M U3 ( .A(RX_IN), .Y(n1) );
  NOR2X2M U4 ( .A(n21), .B(n22), .Y(n20) );
  NAND2X2M U5 ( .A(n26), .B(n21), .Y(n27) );
  OAI2BB2X1M U6 ( .B0(n12), .B1(n1), .A0N(n12), .A1N(sample_bit_1), .Y(n36) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n11), .A0N(n11), .A1N(sample_bit_2), .Y(n38) );
  OAI2BB2X1M U8 ( .B0(n1), .B1(n10), .A0N(n10), .A1N(sample_bit_3), .Y(n37) );
  XNOR2X2M U9 ( .A(Prescale[1]), .B(edge_cnt[0]), .Y(n17) );
  NAND4X2M U10 ( .A(n17), .B(n18), .C(dat_samp_en), .D(n23), .Y(n10) );
  NOR2X2M U11 ( .A(n24), .B(n25), .Y(n23) );
  CLKXOR2X2M U12 ( .A(n27), .B(n19), .Y(n24) );
  XOR3XLM U13 ( .A(edge_cnt[2]), .B(n26), .C(n21), .Y(n25) );
  NAND4X2M U14 ( .A(n30), .B(dat_samp_en), .C(n31), .D(n19), .Y(n11) );
  NOR2X2M U15 ( .A(n17), .B(n34), .Y(n31) );
  XNOR2X2M U16 ( .A(n21), .B(edge_cnt[2]), .Y(n30) );
  XNOR2X2M U17 ( .A(edge_cnt[1]), .B(n29), .Y(n34) );
  NAND4X2M U18 ( .A(n14), .B(n15), .C(n16), .D(dat_samp_en), .Y(n12) );
  CLKXOR2X2M U19 ( .A(n19), .B(n20), .Y(n15) );
  NOR2BX2M U20 ( .AN(n17), .B(n18), .Y(n16) );
  XOR3XLM U21 ( .A(n22), .B(edge_cnt[2]), .C(n21), .Y(n14) );
  OAI2BB2X1M U22 ( .B0(n8), .B1(n9), .A0N(sampled_bit), .A1N(n9), .Y(n35) );
  NAND4X2M U23 ( .A(dat_samp_en), .B(n10), .C(n11), .D(n12), .Y(n9) );
  AOI21X2M U24 ( .A0(sample_bit_2), .A1(sample_bit_1), .B0(n13), .Y(n8) );
  OA21X2M U25 ( .A0(sample_bit_2), .A1(sample_bit_1), .B0(sample_bit_3), .Y(
        n13) );
  CLKXOR2X2M U26 ( .A(n28), .B(edge_cnt[1]), .Y(n18) );
  NAND2BX2M U27 ( .AN(n26), .B(n22), .Y(n28) );
  AOI21X2M U28 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n33), .Y(n29) );
  NOR2X2M U29 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n33) );
  NOR2X2M U30 ( .A(Prescale[1]), .B(n29), .Y(n26) );
  NAND2X2M U31 ( .A(n29), .B(Prescale[1]), .Y(n22) );
  CLKXOR2X2M U32 ( .A(n33), .B(Prescale[3]), .Y(n21) );
  CLKXOR2X2M U33 ( .A(n32), .B(Prescale[4]), .Y(n19) );
  NAND2BX2M U34 ( .AN(Prescale[3]), .B(n33), .Y(n32) );
endmodule


module edge_bit_counter ( enable, CLK, RST, bit_cnt, edge_cnt );
  output [3:0] bit_cnt;
  output [2:0] edge_cnt;
  input enable, CLK, RST;
  wire   n2, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n1, n3, n4, n5,
         n6, n7, n8;
  wire   [2:0] edge_cnt_value;
  wire   [3:0] bit_cnt_value;

  DFFRQX2M bit_cnt_reg_3_ ( .D(bit_cnt_value[3]), .CK(CLK), .RN(RST), .Q(
        bit_cnt[3]) );
  DFFRQX2M bit_cnt_reg_2_ ( .D(bit_cnt_value[2]), .CK(CLK), .RN(RST), .Q(
        bit_cnt[2]) );
  DFFRQX2M bit_cnt_reg_0_ ( .D(bit_cnt_value[0]), .CK(CLK), .RN(RST), .Q(
        bit_cnt[0]) );
  DFFRQX2M edge_cnt_reg_1_ ( .D(edge_cnt_value[1]), .CK(CLK), .RN(RST), .Q(
        edge_cnt[1]) );
  DFFRX1M edge_cnt_reg_2_ ( .D(edge_cnt_value[2]), .CK(CLK), .RN(RST), .Q(
        edge_cnt[2]), .QN(n2) );
  DFFRQX2M edge_cnt_reg_0_ ( .D(edge_cnt_value[0]), .CK(CLK), .RN(RST), .Q(
        edge_cnt[0]) );
  DFFRQX2M bit_cnt_reg_1_ ( .D(bit_cnt_value[1]), .CK(CLK), .RN(RST), .Q(
        bit_cnt[1]) );
  INVX2M U3 ( .A(n16), .Y(n1) );
  OAI21X2M U4 ( .A0(enable), .A1(n18), .B0(n16), .Y(n17) );
  NAND3X2M U5 ( .A(enable), .B(n18), .C(n11), .Y(n16) );
  NAND2BX2M U6 ( .AN(n11), .B(enable), .Y(n9) );
  OAI32X1M U7 ( .A0(n7), .A1(bit_cnt[3]), .A2(n12), .B0(n13), .B1(n8), .Y(
        bit_cnt_value[3]) );
  INVX2M U8 ( .A(bit_cnt[3]), .Y(n8) );
  AOI21X2M U9 ( .A0(n1), .A1(n7), .B0(n14), .Y(n13) );
  OAI32X1M U10 ( .A0(n5), .A1(bit_cnt[1]), .A2(n16), .B0(n15), .B1(n6), .Y(
        bit_cnt_value[1]) );
  INVX2M U11 ( .A(bit_cnt[1]), .Y(n6) );
  OAI32X1M U12 ( .A0(n9), .A1(n3), .A2(n4), .B0(n2), .B1(n9), .Y(
        edge_cnt_value[2]) );
  OAI22X1M U13 ( .A0(bit_cnt[0]), .A1(n16), .B0(n5), .B1(n17), .Y(
        bit_cnt_value[0]) );
  OAI2BB2X1M U14 ( .B0(bit_cnt[2]), .B1(n12), .A0N(n14), .A1N(bit_cnt[2]), .Y(
        bit_cnt_value[2]) );
  NAND3X2M U15 ( .A(n1), .B(bit_cnt[1]), .C(bit_cnt[0]), .Y(n12) );
  NAND2X2M U16 ( .A(n15), .B(bit_cnt[1]), .Y(n14) );
  OA21X2M U17 ( .A0(bit_cnt[0]), .A1(n16), .B0(n17), .Y(n15) );
  NOR2X2M U18 ( .A(edge_cnt[0]), .B(n9), .Y(edge_cnt_value[0]) );
  NOR2X2M U19 ( .A(n10), .B(n9), .Y(edge_cnt_value[1]) );
  XNOR2X2M U20 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .Y(n10) );
  NOR3X2M U21 ( .A(n4), .B(n3), .C(n2), .Y(n11) );
  NAND4X2M U22 ( .A(bit_cnt[3]), .B(bit_cnt[1]), .C(n5), .D(n7), .Y(n18) );
  INVX2M U23 ( .A(bit_cnt[0]), .Y(n5) );
  INVX2M U24 ( .A(edge_cnt[0]), .Y(n3) );
  INVX2M U25 ( .A(edge_cnt[1]), .Y(n4) );
  INVX2M U26 ( .A(bit_cnt[2]), .Y(n7) );
endmodule


module RX_FSM ( RX_IN, PAR_EN, bit_cnt, edge_cnt, par_err, strt_glitch, 
        stp_err, CLK, RST, dat_samp_en, par_chk_en, strt_chk_en, stp_chk_en, 
        enable, deser_en, data_vaild );
  input [3:0] bit_cnt;
  input [2:0] edge_cnt;
  input RX_IN, PAR_EN, par_err, strt_glitch, stp_err, CLK, RST;
  output dat_samp_en, par_chk_en, strt_chk_en, stp_chk_en, enable, deser_en,
         data_vaild;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n1, n3, n4,
         n5, n6, n7;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  OR2X2M U3 ( .A(n19), .B(dat_samp_en), .Y(enable) );
  OAI211X2M U4 ( .A0(n11), .A1(n4), .B0(n14), .C0(n17), .Y(next_state[0]) );
  AOI221XLM U5 ( .A0(strt_chk_en), .A1(n11), .B0(n18), .B1(n7), .C0(n19), .Y(
        n17) );
  INVX2M U6 ( .A(RX_IN), .Y(n7) );
  NAND4X2M U7 ( .A(n15), .B(n12), .C(n4), .D(n1), .Y(dat_samp_en) );
  INVX2M U8 ( .A(stp_chk_en), .Y(n4) );
  INVX2M U9 ( .A(strt_chk_en), .Y(n1) );
  AO21XLM U10 ( .A0(n9), .A1(deser_en), .B0(n10), .Y(next_state[2]) );
  OAI31XLM U11 ( .A0(n11), .A1(par_err), .A2(n12), .B0(n4), .Y(n10) );
  INVX2M U12 ( .A(n15), .Y(deser_en) );
  NOR2BXLM U13 ( .AN(n18), .B(stp_err), .Y(data_vaild) );
  NOR3X2M U14 ( .A(current_state[0]), .B(current_state[1]), .C(n5), .Y(
        stp_chk_en) );
  NOR4X1M U15 ( .A(RX_IN), .B(current_state[0]), .C(current_state[1]), .D(
        current_state[2]), .Y(n19) );
  INVX2M U16 ( .A(n12), .Y(par_chk_en) );
  NAND3X2M U17 ( .A(current_state[0]), .B(n5), .C(current_state[1]), .Y(n12)
         );
  INVX2M U18 ( .A(current_state[2]), .Y(n5) );
  AOI32X1M U19 ( .A0(PAR_EN), .A1(n6), .A2(deser_en), .B0(n11), .B1(par_chk_en), .Y(n14) );
  INVX2M U20 ( .A(n16), .Y(n6) );
  NOR3X2M U21 ( .A(current_state[1]), .B(current_state[2]), .C(n3), .Y(
        strt_chk_en) );
  NAND3BX2M U22 ( .AN(n11), .B(bit_cnt[3]), .C(n20), .Y(n16) );
  NOR3X2M U23 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n20) );
  NOR3X2M U24 ( .A(n3), .B(current_state[1]), .C(n5), .Y(n18) );
  NAND3X2M U25 ( .A(n3), .B(n5), .C(current_state[1]), .Y(n15) );
  NAND3X2M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .C(edge_cnt[2]), .Y(n11) );
  NOR2X2M U27 ( .A(n16), .B(PAR_EN), .Y(n9) );
  INVX2M U28 ( .A(current_state[0]), .Y(n3) );
  NAND2BX2M U29 ( .AN(n13), .B(n14), .Y(next_state[1]) );
  OAI32X1M U30 ( .A0(n1), .A1(strt_glitch), .A2(n11), .B0(n9), .B1(n15), .Y(
        n13) );
endmodule


module UART_RX ( RX_IN, PAR_EN, Prescale, PAR_TYP, CLK, RST, par_err, stp_err, 
        data_valid, P_DATA_RX );
  input [4:0] Prescale;
  output [7:0] P_DATA_RX;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output par_err, stp_err, data_valid;
  wire   deser_en, sampled_bit, strt_chk_en, strt_glitch, par_chk_en,
         stp_chk_en, dat_samp_en, enable, n1, n2;
  wire   [2:0] edge_cnt;
  wire   [3:0] bit_cnt;

  deserializer deserializer_I ( .deser_en(deser_en), .sampled_bit(sampled_bit), 
        .edge_cnt(edge_cnt), .CLK(CLK), .RST(n1), .P_DATA(P_DATA_RX) );
  strt_check strt_check_I ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .strt_glitch(strt_glitch) );
  parity_check parity_check_I ( .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYPE(PAR_TYP), .P_DATA(P_DATA_RX), .par_err(par_err) );
  stop_check stop_check_I ( .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), 
        .stp_err(stp_err) );
  data_sampling data_sampling_I ( .edge_cnt(edge_cnt), .dat_samp_en(
        dat_samp_en), .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .Prescale(Prescale), 
        .sampled_bit(sampled_bit) );
  edge_bit_counter edge_bit_counter_I ( .enable(enable), .CLK(CLK), .RST(n1), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  RX_FSM RX_FSM ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .par_err(par_err), .strt_glitch(strt_glitch), 
        .stp_err(stp_err), .CLK(CLK), .RST(n1), .dat_samp_en(dat_samp_en), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .enable(enable), .deser_en(deser_en), .data_vaild(
        data_valid) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module serializer ( P_DATA, ser_en, CLK, RST, Busy, mux_sel, Data_Vaild, 
        ser_data, ser_done );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input ser_en, CLK, RST, Busy, Data_Vaild;
  output ser_data, ser_done;
  wire   n1, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n2, n3, n4, n5;
  wire   [7:1] input_data;
  wire   [1:0] Counter;

  DFFRQX2M input_data_reg_6_ ( .D(n24), .CK(CLK), .RN(RST), .Q(input_data[6])
         );
  DFFRQX2M input_data_reg_5_ ( .D(n25), .CK(CLK), .RN(RST), .Q(input_data[5])
         );
  DFFRQX2M input_data_reg_4_ ( .D(n26), .CK(CLK), .RN(RST), .Q(input_data[4])
         );
  DFFRQX2M input_data_reg_3_ ( .D(n27), .CK(CLK), .RN(RST), .Q(input_data[3])
         );
  DFFRQX2M input_data_reg_2_ ( .D(n28), .CK(CLK), .RN(RST), .Q(input_data[2])
         );
  DFFRQX2M input_data_reg_1_ ( .D(n29), .CK(CLK), .RN(RST), .Q(input_data[1])
         );
  DFFRQX2M input_data_reg_7_ ( .D(n23), .CK(CLK), .RN(RST), .Q(input_data[7])
         );
  DFFRQX2M input_data_reg_0_ ( .D(n22), .CK(CLK), .RN(RST), .Q(ser_data) );
  DFFRQX2M Counter_reg_1_ ( .D(n20), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M Counter_reg_0_ ( .D(n21), .CK(CLK), .RN(RST), .Q(Counter[0]) );
  DFFRX1M Counter_reg_2_ ( .D(n19), .CK(CLK), .RN(RST), .QN(n1) );
  NOR2X2M U3 ( .A(n3), .B(n2), .Y(n10) );
  AOI21X2M U4 ( .A0(n4), .A1(n3), .B0(n10), .Y(n9) );
  INVX2M U5 ( .A(n18), .Y(n2) );
  INVX2M U6 ( .A(n7), .Y(n3) );
  NOR3X2M U7 ( .A(n1), .B(n4), .C(n5), .Y(ser_done) );
  OAI32X1M U8 ( .A0(n7), .A1(Counter[1]), .A2(n4), .B0(n9), .B1(n5), .Y(n20)
         );
  OAI32X1M U9 ( .A0(n6), .A1(n5), .A2(n7), .B0(n8), .B1(n1), .Y(n19) );
  AOI21BX2M U10 ( .A0(n3), .A1(n5), .B0N(n9), .Y(n8) );
  NAND2X2M U11 ( .A(Counter[0]), .B(n1), .Y(n6) );
  NAND3BX2M U12 ( .AN(mux_sel[1]), .B(Data_Vaild), .C(mux_sel[0]), .Y(n18) );
  NAND2X2M U13 ( .A(ser_en), .B(n18), .Y(n7) );
  OAI2BB2X1M U14 ( .B0(Counter[0]), .B1(n7), .A0N(Counter[0]), .A1N(n10), .Y(
        n21) );
  INVX2M U15 ( .A(Counter[0]), .Y(n4) );
  INVX2M U16 ( .A(Counter[1]), .Y(n5) );
  OAI2BB1X2M U17 ( .A0N(ser_data), .A1N(n10), .B0(n11), .Y(n22) );
  AOI22X1M U18 ( .A0(P_DATA[0]), .A1(n2), .B0(input_data[1]), .B1(n3), .Y(n11)
         );
  OAI2BB1X2M U19 ( .A0N(n10), .A1N(input_data[1]), .B0(n17), .Y(n29) );
  AOI22X1M U20 ( .A0(P_DATA[1]), .A1(n2), .B0(input_data[2]), .B1(n3), .Y(n17)
         );
  OAI2BB1X2M U21 ( .A0N(n10), .A1N(input_data[2]), .B0(n16), .Y(n28) );
  AOI22X1M U22 ( .A0(P_DATA[2]), .A1(n2), .B0(input_data[3]), .B1(n3), .Y(n16)
         );
  OAI2BB1X2M U23 ( .A0N(n10), .A1N(input_data[3]), .B0(n15), .Y(n27) );
  AOI22X1M U24 ( .A0(P_DATA[3]), .A1(n2), .B0(input_data[4]), .B1(n3), .Y(n15)
         );
  OAI2BB1X2M U25 ( .A0N(n10), .A1N(input_data[4]), .B0(n14), .Y(n26) );
  AOI22X1M U26 ( .A0(P_DATA[4]), .A1(n2), .B0(input_data[5]), .B1(n3), .Y(n14)
         );
  OAI2BB1X2M U27 ( .A0N(n10), .A1N(input_data[5]), .B0(n13), .Y(n25) );
  AOI22X1M U28 ( .A0(P_DATA[5]), .A1(n2), .B0(input_data[6]), .B1(n3), .Y(n13)
         );
  OAI2BB1X2M U29 ( .A0N(n10), .A1N(input_data[6]), .B0(n12), .Y(n24) );
  AOI22X1M U30 ( .A0(P_DATA[6]), .A1(n2), .B0(input_data[7]), .B1(n3), .Y(n12)
         );
  AO22X1M U31 ( .A0(n10), .A1(input_data[7]), .B0(P_DATA[7]), .B1(n2), .Y(n23)
         );
endmodule


module FSM ( Data_Vaild, PAR_EN, ser_done, CLK, RST, mux_sel, ser_en, busy );
  output [1:0] mux_sel;
  input Data_Vaild, PAR_EN, ser_done, CLK, RST;
  output ser_en, busy;
  wire   busy_value, n5, n6, n7, n8, n9, n1, n2, n3, n4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M busy_reg ( .D(busy_value), .CK(CLK), .RN(RST), .Q(busy) );
  DFFRX1M current_state_reg_2_ ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n3) );
  INVX2M U3 ( .A(ser_done), .Y(n4) );
  NAND2X2M U4 ( .A(n6), .B(n7), .Y(mux_sel[1]) );
  OAI32X1M U5 ( .A0(n2), .A1(current_state[2]), .A2(current_state[1]), .B0(n8), 
        .B1(n6), .Y(next_state[1]) );
  NOR2BX2M U6 ( .AN(n9), .B(n4), .Y(n8) );
  OAI32X1M U7 ( .A0(n1), .A1(current_state[1]), .A2(current_state[0]), .B0(n6), 
        .B1(n9), .Y(next_state[0]) );
  INVX2M U8 ( .A(Data_Vaild), .Y(n1) );
  OAI21X2M U9 ( .A0(current_state[1]), .A1(current_state[0]), .B0(n7), .Y(
        mux_sel[0]) );
  OAI31X1M U10 ( .A0(n4), .A1(PAR_EN), .A2(n6), .B0(n7), .Y(next_state[2]) );
  AND4X2M U11 ( .A(n4), .B(n2), .C(current_state[1]), .D(n5), .Y(ser_en) );
  NAND3X2M U12 ( .A(n2), .B(n3), .C(current_state[1]), .Y(n6) );
  NAND3X2M U13 ( .A(current_state[0]), .B(n3), .C(current_state[1]), .Y(n7) );
  OAI21BX1M U14 ( .A0(current_state[1]), .A1(n5), .B0N(mux_sel[1]), .Y(
        busy_value) );
  NAND2X2M U15 ( .A(PAR_EN), .B(ser_done), .Y(n9) );
  INVX2M U16 ( .A(current_state[0]), .Y(n2) );
  CLKXOR2X2M U17 ( .A(current_state[2]), .B(n2), .Y(n5) );
endmodule


module MUX ( ser_data, mux_sel, par_bit, CLK, RST, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit, CLK, RST;
  output TX_OUT;
  wire   MUX_OUT, n2, n3, n1;

  DFFRHQX8M TX_OUT_reg ( .D(MUX_OUT), .CK(CLK), .RN(RST), .Q(TX_OUT) );
  OAI21X2M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(MUX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  INVX2M U5 ( .A(mux_sel[0]), .Y(n1) );
  NOR2BX2M U6 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
endmodule


module Parity_Calc ( P_DATA, Data_Vaild, PAR_TYP, mux_sel, Busy, CLK, RST, 
        par_bit );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input Data_Vaild, PAR_TYP, Busy, CLK, RST;
  output par_bit;
  wire   N7, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n2, n15;
  wire   [7:0] input_data;

  DFFRQX2M input_data_reg_5_ ( .D(n12), .CK(CLK), .RN(RST), .Q(input_data[5])
         );
  DFFRQX2M input_data_reg_1_ ( .D(n8), .CK(CLK), .RN(RST), .Q(input_data[1])
         );
  DFFRQX2M input_data_reg_4_ ( .D(n11), .CK(CLK), .RN(RST), .Q(input_data[4])
         );
  DFFRQX2M input_data_reg_0_ ( .D(n7), .CK(CLK), .RN(RST), .Q(input_data[0])
         );
  DFFRQX2M par_bit_reg ( .D(N7), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX2M input_data_reg_6_ ( .D(n13), .CK(CLK), .RN(RST), .Q(input_data[6])
         );
  DFFRQX2M input_data_reg_2_ ( .D(n9), .CK(CLK), .RN(RST), .Q(input_data[2])
         );
  DFFRQX2M input_data_reg_7_ ( .D(n14), .CK(CLK), .RN(RST), .Q(input_data[7])
         );
  DFFRQX2M input_data_reg_3_ ( .D(n10), .CK(CLK), .RN(RST), .Q(input_data[3])
         );
  INVX2M U3 ( .A(n2), .Y(n15) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(PAR_TYP), .Y(N7) );
  XOR3XLM U5 ( .A(input_data[5]), .B(input_data[4]), .C(n6), .Y(n3) );
  XOR3XLM U6 ( .A(input_data[1]), .B(input_data[0]), .C(n5), .Y(n4) );
  CLKXOR2X2M U7 ( .A(input_data[7]), .B(input_data[6]), .Y(n6) );
  BUFX2M U8 ( .A(n1), .Y(n2) );
  NAND3BX2M U9 ( .AN(mux_sel[1]), .B(Data_Vaild), .C(mux_sel[0]), .Y(n1) );
  AO22X1M U10 ( .A0(n2), .A1(input_data[2]), .B0(P_DATA[2]), .B1(n15), .Y(n9)
         );
  AO22X1M U11 ( .A0(n2), .A1(input_data[3]), .B0(P_DATA[3]), .B1(n15), .Y(n10)
         );
  AO22X1M U12 ( .A0(n2), .A1(input_data[7]), .B0(P_DATA[7]), .B1(n15), .Y(n14)
         );
  AO22X1M U13 ( .A0(n2), .A1(input_data[0]), .B0(P_DATA[0]), .B1(n15), .Y(n7)
         );
  AO22X1M U14 ( .A0(n2), .A1(input_data[1]), .B0(P_DATA[1]), .B1(n15), .Y(n8)
         );
  AO22X1M U15 ( .A0(n2), .A1(input_data[4]), .B0(P_DATA[4]), .B1(n15), .Y(n11)
         );
  AO22X1M U16 ( .A0(n2), .A1(input_data[5]), .B0(P_DATA[5]), .B1(n15), .Y(n12)
         );
  AO22X1M U17 ( .A0(n2), .A1(input_data[6]), .B0(P_DATA[6]), .B1(n15), .Y(n13)
         );
  CLKXOR2X2M U18 ( .A(input_data[3]), .B(input_data[2]), .Y(n5) );
endmodule


module UART_TX ( P_DATA, Data_Vaild, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input Data_Vaild, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_en, ser_data, ser_done, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  serializer serializer_I ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(CLK), .RST(
        n1), .Busy(Busy), .mux_sel(mux_sel), .Data_Vaild(Data_Vaild), 
        .ser_data(ser_data), .ser_done(ser_done) );
  FSM FSM_I ( .Data_Vaild(Data_Vaild), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK), .RST(n1), .mux_sel(mux_sel), .ser_en(ser_en), .busy(Busy)
         );
  MUX MUX_I ( .ser_data(ser_data), .mux_sel(mux_sel), .par_bit(par_bit), .CLK(
        CLK), .RST(n1), .TX_OUT(TX_OUT) );
  Parity_Calc Parity_Calc_I ( .P_DATA(P_DATA), .Data_Vaild(Data_Vaild), 
        .PAR_TYP(PAR_TYP), .mux_sel(mux_sel), .Busy(Busy), .CLK(CLK), .RST(n1), 
        .par_bit(par_bit) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART ( RX_IN, P_DATA_TX, RX_CLK, TX_CLK, RST, PAR_EN, PAR_TYP, Prescale, 
        Data_Vaild_TX, data_valid_RX, Busy, TX_OUT, P_DATA_RX, par_err, 
        stp_err );
  input [7:0] P_DATA_TX;
  input [4:0] Prescale;
  output [7:0] P_DATA_RX;
  input RX_IN, RX_CLK, TX_CLK, RST, PAR_EN, PAR_TYP, Data_Vaild_TX;
  output data_valid_RX, Busy, TX_OUT, par_err, stp_err;
  wire   n1, n2;

  UART_RX UART_RX_I0 ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .Prescale(Prescale), 
        .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(n1), .par_err(par_err), 
        .stp_err(stp_err), .data_valid(data_valid_RX), .P_DATA_RX(P_DATA_RX)
         );
  UART_TX UART_TX_I0 ( .P_DATA(P_DATA_TX), .Data_Vaild(Data_Vaild_TX), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT), .Busy(Busy) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_TOP ( RX_IN, REF_CLK, UART_CLK, RST, TX_OUT, par_err, stp_err );
  input RX_IN, REF_CLK, UART_CLK, RST;
  output TX_OUT, par_err, stp_err;
  wire   WrEn, RdEn, SYNC_RST1, RdData_Valid, SYNC_RST2, TX_CLK, CLK_EN,
         ALU_CLK, Busy, SYNC_Busy, data_valid_RX, RX_D_VLD, TX_D_VLD,
         Data_Vaild_TX, OUT_Valid, EN, n2, n3, n4, n5, n6, n7, n8,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5;
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

  RegFile RegFile_I0 ( .WrData(WrData), .Address({Address[3:2], n8, n7}), 
        .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK), .RST(n5), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2({
        SYNOPSYS_UNCONNECTED_1, REG2}), .REG3({SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        REG3}) );
  ClkDiv ClkDiv_I0 ( .i_ref_clk(UART_CLK), .i_rst_n(n3), .i_clk_en(1'b1), 
        .i_div_ratio(REG3), .o_div_clk(TX_CLK) );
  Clock_Gating Clock_Gating_I0 ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(
        ALU_CLK) );
  BIT_SYNC BIT_SYNC_I0 ( .ASYNC(Busy), .CLK(REF_CLK), .RST(n5), .SYNC(
        SYNC_Busy) );
  DATA_SYNC_0 DATA_SYNC_I0 ( .Unsync_bus(P_DATA_RX), .bus_enable(data_valid_RX), .CLK(REF_CLK), .RST(n5), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD) );
  DATA_SYNC_1 DATA_SYNC_I1 ( .Unsync_bus(TX_P_DATA), .bus_enable(TX_D_VLD), 
        .CLK(TX_CLK), .RST(n3), .sync_bus(P_DATA_TX), .enable_pulse(
        Data_Vaild_TX) );
  RST_SYNC_0 RST_SYNC_I0 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(SYNC_RST1) );
  RST_SYNC_1 RST_SYNC_I1 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(SYNC_RST2) );
  SYS_CTRL SYS_CTRL_I0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), .CLK(
        REF_CLK), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), .RDData(
        RdData), .RdData_Valid(RdData_Valid), .Busy(SYNC_Busy), .EN(EN), 
        .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), .Address(Address), .WrEn(WrEn), 
        .RdEn(RdEn), .WrData(WrData), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(
        TX_D_VLD) );
  ALU ALU_I0 ( .A(REG0), .B(REG1), .ALU_FUN(ALU_FUN), .Enable(EN), .CLK(
        ALU_CLK), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  UART UART_I0 ( .RX_IN(n2), .P_DATA_TX(P_DATA_TX), .RX_CLK(UART_CLK), 
        .TX_CLK(TX_CLK), .RST(n3), .PAR_EN(REG2[0]), .PAR_TYP(REG2[1]), 
        .Prescale(REG2[6:2]), .Data_Vaild_TX(Data_Vaild_TX), .data_valid_RX(
        data_valid_RX), .Busy(Busy), .TX_OUT(TX_OUT), .P_DATA_RX(P_DATA_RX), 
        .par_err(par_err), .stp_err(stp_err) );
  BUFX2M U1 ( .A(Address[0]), .Y(n7) );
  BUFX2M U2 ( .A(Address[1]), .Y(n8) );
  BUFX2M U3 ( .A(RX_IN), .Y(n2) );
  INVX4M U4 ( .A(n6), .Y(n5) );
  INVX2M U5 ( .A(SYNC_RST1), .Y(n6) );
  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(SYNC_RST2), .Y(n4) );
endmodule

