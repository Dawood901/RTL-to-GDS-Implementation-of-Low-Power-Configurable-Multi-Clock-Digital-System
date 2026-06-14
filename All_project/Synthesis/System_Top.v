/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  8 06:38:54 2025
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   sync_reg_0_;

  DFFRQX2M sync_reg_reg_1_ ( .D(sync_reg_0_), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M sync_reg_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(sync_reg_0_) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   sync_reg_0_;

  DFFRQX2M sync_reg_reg_1_ ( .D(sync_reg_0_), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M sync_reg_reg_0_ ( .D(1'b1), .CK(CLK), .RN(RST), .Q(sync_reg_0_) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, unsync_bus, bus_enable, 
        sync_bus, enable_pulse_d );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse_d;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n19, n20, n21, n22, n23, n24, n25,
         n26, n14, n15, n16;
  wire   [1:0] sync_reg;

  DFFRX2M sync_bus_reg_5_ ( .D(n7), .CK(CLK), .RN(n14), .Q(sync_bus[5]), .QN(
        n25) );
  DFFRX2M sync_bus_reg_4_ ( .D(n6), .CK(CLK), .RN(n14), .Q(sync_bus[4]), .QN(
        n22) );
  DFFRX2M sync_bus_reg_0_ ( .D(n2), .CK(CLK), .RN(n14), .Q(sync_bus[0]), .QN(
        n23) );
  DFFRX2M sync_bus_reg_1_ ( .D(n3), .CK(CLK), .RN(n14), .Q(sync_bus[1]), .QN(
        n21) );
  DFFRX1M sync_bus_reg_7_ ( .D(n9), .CK(CLK), .RN(n14), .Q(sync_bus[7]), .QN(
        n26) );
  DFFRX1M sync_bus_reg_3_ ( .D(n5), .CK(CLK), .RN(n14), .Q(sync_bus[3]), .QN(
        n20) );
  DFFRX1M sync_reg_reg_1_ ( .D(sync_reg[0]), .CK(CLK), .RN(n14), .Q(
        sync_reg[1]) );
  DFFRX1M enable_pulse_d_reg ( .D(n16), .CK(CLK), .RN(n14), .Q(enable_pulse_d)
         );
  DFFRX1M enable_flop_reg ( .D(sync_reg[1]), .CK(CLK), .RN(n14), .QN(n24) );
  DFFRX1M sync_bus_reg_6_ ( .D(n8), .CK(CLK), .RN(n14), .Q(sync_bus[6]) );
  DFFRX1M sync_bus_reg_2_ ( .D(n4), .CK(CLK), .RN(n14), .Q(sync_bus[2]) );
  DFFRX1M sync_reg_reg_0_ ( .D(bus_enable), .CK(CLK), .RN(n14), .Q(sync_reg[0]) );
  INVX8M U3 ( .A(n19), .Y(n16) );
  INVX6M U4 ( .A(n15), .Y(n14) );
  INVX2M U5 ( .A(RST), .Y(n15) );
  NAND2X2M U6 ( .A(sync_reg[1]), .B(n24), .Y(n19) );
  OAI2BB2X1M U7 ( .B0(n16), .B1(n22), .A0N(unsync_bus[4]), .A1N(n16), .Y(n6)
         );
  OAI2BB2X1M U8 ( .B0(n16), .B1(n23), .A0N(unsync_bus[0]), .A1N(n16), .Y(n2)
         );
  OAI2BB2X1M U9 ( .B0(n16), .B1(n25), .A0N(unsync_bus[5]), .A1N(n16), .Y(n7)
         );
  OAI2BB2X1M U10 ( .B0(n16), .B1(n20), .A0N(unsync_bus[3]), .A1N(n16), .Y(n5)
         );
  OAI2BB2X1M U11 ( .B0(n16), .B1(n21), .A0N(unsync_bus[1]), .A1N(n16), .Y(n3)
         );
  OAI2BB2X1M U12 ( .B0(n16), .B1(n26), .A0N(unsync_bus[7]), .A1N(n16), .Y(n9)
         );
  AO22X1M U13 ( .A0(sync_bus[2]), .A1(n19), .B0(unsync_bus[2]), .B1(n16), .Y(
        n4) );
  AO22X1M U14 ( .A0(sync_bus[6]), .A1(n19), .B0(unsync_bus[6]), .B1(n16), .Y(
        n8) );
endmodule


module fifo_mem_A_SIZE3_D_SIZE8_F_DEPTH8_P_SIZE4 ( w_clk, w_rstn, w_full, 
        w_inc, w_addr, r_addr, w_data, r_data );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rstn, w_full, w_inc;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296;
  wire   [63:0] FIFO_MEM;

  NAND3BX4M U82 ( .AN(w_full), .B(w_addr[2]), .C(w_inc), .Y(n206) );
  DFFRX1M FIFO_MEM_reg_4__7_ ( .D(n61), .CK(w_clk), .RN(n142), .QN(n223) );
  DFFRX1M FIFO_MEM_reg_4__6_ ( .D(n60), .CK(w_clk), .RN(n142), .QN(n217) );
  DFFRX1M FIFO_MEM_reg_4__5_ ( .D(n59), .CK(w_clk), .RN(n141), .QN(n234) );
  DFFRX1M FIFO_MEM_reg_4__4_ ( .D(n58), .CK(w_clk), .RN(n141), .QN(n229) );
  DFFRX1M FIFO_MEM_reg_4__3_ ( .D(n57), .CK(w_clk), .RN(n141), .QN(n244) );
  DFFRX1M FIFO_MEM_reg_4__2_ ( .D(n56), .CK(w_clk), .RN(n141), .QN(n239) );
  DFFRX1M FIFO_MEM_reg_4__1_ ( .D(n55), .CK(w_clk), .RN(n141), .QN(n254) );
  DFFRX1M FIFO_MEM_reg_4__0_ ( .D(n54), .CK(w_clk), .RN(n141), .QN(n249) );
  DFFRX1M FIFO_MEM_reg_6__7_ ( .D(n77), .CK(w_clk), .RN(n142), .QN(n222) );
  DFFRX1M FIFO_MEM_reg_6__6_ ( .D(n76), .CK(w_clk), .RN(n142), .QN(n216) );
  DFFRX1M FIFO_MEM_reg_6__5_ ( .D(n75), .CK(w_clk), .RN(n142), .QN(n233) );
  DFFRX1M FIFO_MEM_reg_6__4_ ( .D(n74), .CK(w_clk), .RN(n142), .QN(n228) );
  DFFRX1M FIFO_MEM_reg_6__3_ ( .D(n73), .CK(w_clk), .RN(n142), .QN(n243) );
  DFFRX1M FIFO_MEM_reg_6__2_ ( .D(n72), .CK(w_clk), .RN(n142), .QN(n238) );
  DFFRX1M FIFO_MEM_reg_6__1_ ( .D(n71), .CK(w_clk), .RN(n142), .QN(n253) );
  DFFRX1M FIFO_MEM_reg_6__0_ ( .D(n70), .CK(w_clk), .RN(n142), .QN(n248) );
  DFFRX1M FIFO_MEM_reg_7__7_ ( .D(n85), .CK(w_clk), .RN(n143), .QN(n221) );
  DFFRX1M FIFO_MEM_reg_7__6_ ( .D(n84), .CK(w_clk), .RN(n143), .QN(n215) );
  DFFRX1M FIFO_MEM_reg_7__5_ ( .D(n83), .CK(w_clk), .RN(n143), .Q(n265), .QN(
        n232) );
  DFFRX1M FIFO_MEM_reg_7__4_ ( .D(n82), .CK(w_clk), .RN(n143), .Q(n266), .QN(
        n227) );
  DFFRX1M FIFO_MEM_reg_7__3_ ( .D(n81), .CK(w_clk), .RN(n143), .Q(n267), .QN(
        n242) );
  DFFRX1M FIFO_MEM_reg_7__2_ ( .D(n80), .CK(w_clk), .RN(n143), .Q(n268), .QN(
        n237) );
  DFFRX1M FIFO_MEM_reg_7__1_ ( .D(n79), .CK(w_clk), .RN(n142), .Q(n269), .QN(
        n252) );
  DFFRX1M FIFO_MEM_reg_7__0_ ( .D(n78), .CK(w_clk), .RN(n142), .Q(n270), .QN(
        n247) );
  DFFRX1M FIFO_MEM_reg_2__7_ ( .D(n45), .CK(w_clk), .RN(n140), .Q(n279), .QN(
        n224) );
  DFFRX1M FIFO_MEM_reg_2__6_ ( .D(n44), .CK(w_clk), .RN(n140), .Q(n280), .QN(
        n218) );
  DFFRX1M FIFO_MEM_reg_2__5_ ( .D(n43), .CK(w_clk), .RN(n140), .Q(n281), .QN(
        n235) );
  DFFRX1M FIFO_MEM_reg_2__4_ ( .D(n42), .CK(w_clk), .RN(n140), .Q(n282), .QN(
        n230) );
  DFFRX1M FIFO_MEM_reg_2__3_ ( .D(n41), .CK(w_clk), .RN(n140), .Q(n283), .QN(
        n245) );
  DFFRX1M FIFO_MEM_reg_2__2_ ( .D(n40), .CK(w_clk), .RN(n140), .Q(n284), .QN(
        n240) );
  DFFRX1M FIFO_MEM_reg_2__1_ ( .D(n39), .CK(w_clk), .RN(n140), .Q(n285), .QN(
        n255) );
  DFFRX1M FIFO_MEM_reg_2__0_ ( .D(n38), .CK(w_clk), .RN(n140), .Q(n286), .QN(
        n250) );
  DFFRX1M FIFO_MEM_reg_0__7_ ( .D(n29), .CK(w_clk), .RN(n141), .Q(n271), .QN(
        n226) );
  DFFRX1M FIFO_MEM_reg_0__6_ ( .D(n28), .CK(w_clk), .RN(n141), .Q(n272), .QN(
        n220) );
  DFFRX1M FIFO_MEM_reg_0__5_ ( .D(n27), .CK(w_clk), .RN(n141), .Q(n273), .QN(
        n236) );
  DFFRX1M FIFO_MEM_reg_0__4_ ( .D(n26), .CK(w_clk), .RN(n141), .Q(n274), .QN(
        n231) );
  DFFRX1M FIFO_MEM_reg_0__3_ ( .D(n25), .CK(w_clk), .RN(n141), .Q(n275), .QN(
        n246) );
  DFFRX1M FIFO_MEM_reg_0__2_ ( .D(n24), .CK(w_clk), .RN(n141), .Q(n276), .QN(
        n241) );
  DFFRX1M FIFO_MEM_reg_0__1_ ( .D(n23), .CK(w_clk), .RN(n140), .Q(n277), .QN(
        n256) );
  DFFRX1M FIFO_MEM_reg_0__0_ ( .D(n22), .CK(w_clk), .RN(n140), .Q(n278), .QN(
        n251) );
  DFFRX1M FIFO_MEM_reg_1__7_ ( .D(n37), .CK(w_clk), .RN(n140), .Q(n287), .QN(
        n225) );
  DFFRX1M FIFO_MEM_reg_1__6_ ( .D(n36), .CK(w_clk), .RN(n140), .Q(n288), .QN(
        n219) );
  DFFRX1M FIFO_MEM_reg_5__5_ ( .D(n67), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[45]) );
  DFFRX1M FIFO_MEM_reg_5__4_ ( .D(n66), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[44]) );
  DFFRX1M FIFO_MEM_reg_5__3_ ( .D(n65), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[43]) );
  DFFRX1M FIFO_MEM_reg_5__2_ ( .D(n64), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[42]) );
  DFFRX1M FIFO_MEM_reg_5__1_ ( .D(n63), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[41]) );
  DFFRX1M FIFO_MEM_reg_5__0_ ( .D(n62), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[40]) );
  DFFRX1M FIFO_MEM_reg_5__7_ ( .D(n69), .CK(w_clk), .RN(n145), .QN(n163) );
  DFFRX1M FIFO_MEM_reg_5__6_ ( .D(n68), .CK(w_clk), .RN(n146), .QN(n164) );
  DFFRX1M FIFO_MEM_reg_3__7_ ( .D(n53), .CK(w_clk), .RN(n144), .Q(FIFO_MEM[31]) );
  DFFRX1M FIFO_MEM_reg_3__6_ ( .D(n52), .CK(w_clk), .RN(n143), .Q(FIFO_MEM[30]) );
  DFFRX1M FIFO_MEM_reg_3__5_ ( .D(n51), .CK(w_clk), .RN(n143), .QN(n259) );
  DFFRX1M FIFO_MEM_reg_3__4_ ( .D(n50), .CK(w_clk), .RN(n143), .QN(n260) );
  DFFRX1M FIFO_MEM_reg_3__3_ ( .D(n49), .CK(w_clk), .RN(n143), .QN(n261) );
  DFFRX1M FIFO_MEM_reg_3__2_ ( .D(n48), .CK(w_clk), .RN(n143), .QN(n262) );
  DFFRX1M FIFO_MEM_reg_3__1_ ( .D(n47), .CK(w_clk), .RN(n143), .QN(n263) );
  DFFRX1M FIFO_MEM_reg_3__0_ ( .D(n46), .CK(w_clk), .RN(n143), .QN(n264) );
  DFFRX1M FIFO_MEM_reg_1__5_ ( .D(n35), .CK(w_clk), .RN(n144), .QN(n165) );
  DFFRX1M FIFO_MEM_reg_1__4_ ( .D(n34), .CK(w_clk), .RN(n144), .QN(n166) );
  DFFRX1M FIFO_MEM_reg_1__3_ ( .D(n33), .CK(w_clk), .RN(n144), .QN(n167) );
  DFFRX1M FIFO_MEM_reg_1__2_ ( .D(n32), .CK(w_clk), .RN(n144), .QN(n168) );
  DFFRX1M FIFO_MEM_reg_1__1_ ( .D(n31), .CK(w_clk), .RN(n144), .QN(n257) );
  DFFRX1M FIFO_MEM_reg_1__0_ ( .D(n30), .CK(w_clk), .RN(n144), .QN(n258) );
  NOR3X6M U2 ( .A(n206), .B(w_addr[1]), .C(n161), .Y(n208) );
  BUFX6M U3 ( .A(n146), .Y(n144) );
  BUFX6M U4 ( .A(n145), .Y(n143) );
  NOR2X2M U5 ( .A(r_addr[1]), .B(r_addr[2]), .Y(n171) );
  NAND2XLM U6 ( .A(r_addr[2]), .B(r_addr[1]), .Y(n174) );
  NOR3X2M U7 ( .A(w_addr[0]), .B(w_addr[1]), .C(n206), .Y(n209) );
  BUFX2M U8 ( .A(n211), .Y(n127) );
  NOR3BX2M U9 ( .AN(w_inc), .B(w_addr[2]), .C(w_full), .Y(n211) );
  CLKBUFX6M U10 ( .A(n210), .Y(n132) );
  CLKBUFX6M U11 ( .A(r_addr[0]), .Y(n128) );
  CLKBUFX6M U12 ( .A(n174), .Y(n137) );
  INVX4M U13 ( .A(w_data[0]), .Y(n296) );
  INVX4M U14 ( .A(w_data[1]), .Y(n295) );
  INVX4M U15 ( .A(w_data[2]), .Y(n294) );
  INVX4M U16 ( .A(w_data[3]), .Y(n293) );
  INVX4M U17 ( .A(w_data[4]), .Y(n292) );
  INVX4M U18 ( .A(w_data[5]), .Y(n291) );
  INVX4M U19 ( .A(w_data[6]), .Y(n290) );
  INVX4M U20 ( .A(w_data[7]), .Y(n289) );
  INVX2M U21 ( .A(w_addr[0]), .Y(n161) );
  INVX2M U22 ( .A(w_addr[1]), .Y(n162) );
  BUFX6M U23 ( .A(w_rstn), .Y(n140) );
  BUFX6M U24 ( .A(n146), .Y(n141) );
  BUFX6M U25 ( .A(n145), .Y(n142) );
  BUFX2M U26 ( .A(n146), .Y(n145) );
  INVX4M U27 ( .A(n135), .Y(n154) );
  INVX4M U28 ( .A(n129), .Y(n147) );
  BUFX2M U29 ( .A(w_rstn), .Y(n146) );
  INVX4M U30 ( .A(n130), .Y(n148) );
  INVX4M U31 ( .A(n131), .Y(n149) );
  INVX4M U32 ( .A(n132), .Y(n150) );
  OAI22X1M U33 ( .A0(n150), .A1(n264), .B0(n296), .B1(n132), .Y(n46) );
  OAI22X1M U34 ( .A0(n150), .A1(n263), .B0(n295), .B1(n132), .Y(n47) );
  OAI22X1M U35 ( .A0(n150), .A1(n262), .B0(n294), .B1(n132), .Y(n48) );
  OAI22X1M U36 ( .A0(n150), .A1(n261), .B0(n293), .B1(n132), .Y(n49) );
  OAI22X1M U37 ( .A0(n150), .A1(n260), .B0(n292), .B1(n132), .Y(n50) );
  OAI22X1M U38 ( .A0(n150), .A1(n259), .B0(n291), .B1(n132), .Y(n51) );
  OAI22X1M U39 ( .A0(n296), .A1(n130), .B0(n148), .B1(n258), .Y(n30) );
  OAI22X1M U40 ( .A0(n295), .A1(n130), .B0(n148), .B1(n257), .Y(n31) );
  OAI22X1M U41 ( .A0(n294), .A1(n130), .B0(n148), .B1(n168), .Y(n32) );
  OAI22X1M U42 ( .A0(n293), .A1(n130), .B0(n148), .B1(n167), .Y(n33) );
  OAI22X1M U43 ( .A0(n292), .A1(n130), .B0(n148), .B1(n166), .Y(n34) );
  OAI22X1M U44 ( .A0(n291), .A1(n130), .B0(n148), .B1(n165), .Y(n35) );
  CLKBUFX6M U45 ( .A(n205), .Y(n135) );
  NOR3X2M U46 ( .A(n161), .B(n206), .C(n162), .Y(n205) );
  CLKBUFX6M U47 ( .A(n214), .Y(n129) );
  NAND3XLM U48 ( .A(n161), .B(n162), .C(n127), .Y(n214) );
  INVX4M U49 ( .A(n133), .Y(n151) );
  INVX4M U50 ( .A(n134), .Y(n153) );
  INVX4M U51 ( .A(n138), .Y(n156) );
  INVX4M U52 ( .A(n139), .Y(n160) );
  INVX4M U53 ( .A(n136), .Y(n157) );
  OAI22X1M U54 ( .A0(n208), .A1(n164), .B0(n290), .B1(n152), .Y(n68) );
  OAI22X1M U55 ( .A0(n208), .A1(n163), .B0(n289), .B1(n152), .Y(n69) );
  OAI22X1M U56 ( .A0(n156), .A1(n260), .B0(n160), .B1(n166), .Y(n188) );
  OAI22X1M U57 ( .A0(n156), .A1(n259), .B0(n160), .B1(n165), .Y(n184) );
  INVX8M U58 ( .A(n208), .Y(n152) );
  INVX4M U59 ( .A(n128), .Y(n155) );
  INVX4M U60 ( .A(n137), .Y(n159) );
  OAI22X1M U61 ( .A0(n156), .A1(n262), .B0(n160), .B1(n168), .Y(n196) );
  OAI22X1M U62 ( .A0(n156), .A1(n261), .B0(n160), .B1(n167), .Y(n192) );
  OAI22X1M U63 ( .A0(n156), .A1(n264), .B0(n160), .B1(n258), .Y(n204) );
  OAI22X1M U64 ( .A0(n156), .A1(n263), .B0(n160), .B1(n257), .Y(n200) );
  OAI22X1M U65 ( .A0(n290), .A1(n130), .B0(n219), .B1(n148), .Y(n36) );
  OAI22X1M U66 ( .A0(n289), .A1(n130), .B0(n225), .B1(n148), .Y(n37) );
  OAI22X1M U67 ( .A0(n296), .A1(n131), .B0(n250), .B1(n149), .Y(n38) );
  OAI22X1M U68 ( .A0(n295), .A1(n131), .B0(n255), .B1(n149), .Y(n39) );
  OAI22X1M U69 ( .A0(n294), .A1(n131), .B0(n240), .B1(n149), .Y(n40) );
  OAI22X1M U70 ( .A0(n293), .A1(n131), .B0(n245), .B1(n149), .Y(n41) );
  OAI22X1M U71 ( .A0(n292), .A1(n131), .B0(n230), .B1(n149), .Y(n42) );
  OAI22X1M U72 ( .A0(n291), .A1(n131), .B0(n235), .B1(n149), .Y(n43) );
  OAI22X1M U73 ( .A0(n290), .A1(n131), .B0(n218), .B1(n149), .Y(n44) );
  OAI22X1M U74 ( .A0(n289), .A1(n131), .B0(n224), .B1(n149), .Y(n45) );
  OAI22X1M U75 ( .A0(n296), .A1(n129), .B0(n251), .B1(n147), .Y(n22) );
  OAI22X1M U76 ( .A0(n295), .A1(n129), .B0(n256), .B1(n147), .Y(n23) );
  OAI22X1M U77 ( .A0(n294), .A1(n129), .B0(n241), .B1(n147), .Y(n24) );
  OAI22X1M U78 ( .A0(n293), .A1(n129), .B0(n246), .B1(n147), .Y(n25) );
  OAI22X1M U79 ( .A0(n292), .A1(n129), .B0(n231), .B1(n147), .Y(n26) );
  OAI22X1M U80 ( .A0(n291), .A1(n129), .B0(n236), .B1(n147), .Y(n27) );
  OAI22X1M U81 ( .A0(n290), .A1(n129), .B0(n220), .B1(n147), .Y(n28) );
  OAI22X1M U83 ( .A0(n289), .A1(n129), .B0(n226), .B1(n147), .Y(n29) );
  OAI2BB2X1M U84 ( .B0(n290), .B1(n132), .A0N(n132), .A1N(FIFO_MEM[30]), .Y(
        n52) );
  OAI2BB2X1M U85 ( .B0(n289), .B1(n132), .A0N(n132), .A1N(FIFO_MEM[31]), .Y(
        n53) );
  NAND3XLM U86 ( .A(w_addr[1]), .B(w_addr[0]), .C(n127), .Y(n210) );
  CLKBUFX6M U87 ( .A(n213), .Y(n130) );
  NAND3XLM U88 ( .A(w_addr[0]), .B(n162), .C(n127), .Y(n213) );
  CLKBUFX6M U89 ( .A(n212), .Y(n131) );
  NAND3XLM U90 ( .A(w_addr[1]), .B(n161), .C(n127), .Y(n212) );
  OAI22X4M U91 ( .A0(n177), .A1(n155), .B0(n128), .B1(n178), .Y(r_data[6]) );
  AOI221X2M U92 ( .A0(n139), .A1(n272), .B0(n138), .B1(n280), .C0(n179), .Y(
        n178) );
  AOI221X2M U93 ( .A0(n139), .A1(n288), .B0(FIFO_MEM[30]), .B1(n138), .C0(n180), .Y(n177) );
  OAI22X4M U94 ( .A0(n185), .A1(n155), .B0(n128), .B1(n186), .Y(r_data[4]) );
  AOI221X2M U95 ( .A0(n139), .A1(n274), .B0(n138), .B1(n282), .C0(n187), .Y(
        n186) );
  AOI221X2M U96 ( .A0(FIFO_MEM[44]), .A1(n157), .B0(n159), .B1(n266), .C0(n188), .Y(n185) );
  OAI22X4M U97 ( .A0(n181), .A1(n155), .B0(n128), .B1(n182), .Y(r_data[5]) );
  AOI221X2M U98 ( .A0(n139), .A1(n273), .B0(n138), .B1(n281), .C0(n183), .Y(
        n182) );
  AOI221X2M U99 ( .A0(FIFO_MEM[45]), .A1(n157), .B0(n159), .B1(n265), .C0(n184), .Y(n181) );
  OAI22X1M U100 ( .A0(n216), .A1(n137), .B0(n217), .B1(n136), .Y(n179) );
  OAI22X1M U101 ( .A0(n215), .A1(n137), .B0(n136), .B1(n164), .Y(n180) );
  OAI22X1M U102 ( .A0(n154), .A1(n296), .B0(n247), .B1(n135), .Y(n78) );
  OAI22X1M U103 ( .A0(n154), .A1(n295), .B0(n252), .B1(n135), .Y(n79) );
  OAI22X1M U104 ( .A0(n154), .A1(n294), .B0(n237), .B1(n135), .Y(n80) );
  OAI22X1M U105 ( .A0(n154), .A1(n293), .B0(n242), .B1(n135), .Y(n81) );
  OAI22X1M U106 ( .A0(n154), .A1(n292), .B0(n227), .B1(n135), .Y(n82) );
  OAI22X1M U107 ( .A0(n154), .A1(n291), .B0(n232), .B1(n135), .Y(n83) );
  OAI22X1M U108 ( .A0(n154), .A1(n290), .B0(n215), .B1(n135), .Y(n84) );
  OAI22X1M U109 ( .A0(n154), .A1(n289), .B0(n221), .B1(n135), .Y(n85) );
  OAI22X1M U110 ( .A0(n296), .A1(n151), .B0(n249), .B1(n133), .Y(n54) );
  OAI22X1M U111 ( .A0(n295), .A1(n151), .B0(n254), .B1(n133), .Y(n55) );
  OAI22X1M U112 ( .A0(n294), .A1(n151), .B0(n239), .B1(n133), .Y(n56) );
  OAI22X1M U113 ( .A0(n293), .A1(n151), .B0(n244), .B1(n133), .Y(n57) );
  OAI22X1M U114 ( .A0(n292), .A1(n151), .B0(n229), .B1(n133), .Y(n58) );
  OAI22X1M U115 ( .A0(n291), .A1(n151), .B0(n234), .B1(n133), .Y(n59) );
  OAI22X1M U116 ( .A0(n290), .A1(n151), .B0(n217), .B1(n133), .Y(n60) );
  OAI22X1M U117 ( .A0(n289), .A1(n151), .B0(n223), .B1(n133), .Y(n61) );
  OAI22X1M U118 ( .A0(n296), .A1(n153), .B0(n248), .B1(n134), .Y(n70) );
  OAI22X1M U119 ( .A0(n295), .A1(n153), .B0(n253), .B1(n134), .Y(n71) );
  OAI22X1M U120 ( .A0(n294), .A1(n153), .B0(n238), .B1(n134), .Y(n72) );
  OAI22X1M U121 ( .A0(n293), .A1(n153), .B0(n243), .B1(n134), .Y(n73) );
  OAI22X1M U122 ( .A0(n292), .A1(n153), .B0(n228), .B1(n134), .Y(n74) );
  OAI22X1M U123 ( .A0(n291), .A1(n153), .B0(n233), .B1(n134), .Y(n75) );
  OAI22X1M U124 ( .A0(n290), .A1(n153), .B0(n216), .B1(n134), .Y(n76) );
  OAI22X1M U125 ( .A0(n289), .A1(n153), .B0(n222), .B1(n134), .Y(n77) );
  OAI2BB2X1M U126 ( .B0(n296), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[40]), .Y(
        n62) );
  OAI2BB2X1M U127 ( .B0(n295), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[41]), .Y(
        n63) );
  OAI2BB2X1M U128 ( .B0(n294), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[42]), .Y(
        n64) );
  OAI2BB2X1M U129 ( .B0(n293), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[43]), .Y(
        n65) );
  OAI2BB2X1M U130 ( .B0(n292), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[44]), .Y(
        n66) );
  OAI2BB2X1M U131 ( .B0(n291), .B1(n152), .A0N(n152), .A1N(FIFO_MEM[45]), .Y(
        n67) );
  CLKBUFX6M U132 ( .A(n175), .Y(n136) );
  NAND2X2M U133 ( .A(r_addr[2]), .B(n158), .Y(n175) );
  INVX2M U134 ( .A(r_addr[1]), .Y(n158) );
  CLKBUFX6M U135 ( .A(n172), .Y(n138) );
  NOR2X2M U136 ( .A(n158), .B(r_addr[2]), .Y(n172) );
  CLKBUFX6M U137 ( .A(n171), .Y(n139) );
  CLKBUFX6M U138 ( .A(n207), .Y(n134) );
  NOR3X2M U139 ( .A(n206), .B(w_addr[0]), .C(n162), .Y(n207) );
  CLKBUFX6M U140 ( .A(n209), .Y(n133) );
  OAI22X4M U141 ( .A0(n193), .A1(n155), .B0(n128), .B1(n194), .Y(r_data[2]) );
  AOI221X2M U142 ( .A0(n139), .A1(n276), .B0(n138), .B1(n284), .C0(n195), .Y(
        n194) );
  AOI221X2M U143 ( .A0(FIFO_MEM[42]), .A1(n157), .B0(n159), .B1(n268), .C0(
        n196), .Y(n193) );
  OAI22X4M U144 ( .A0(n169), .A1(n155), .B0(n128), .B1(n170), .Y(r_data[7]) );
  AOI221X2M U145 ( .A0(n139), .A1(n271), .B0(n138), .B1(n279), .C0(n173), .Y(
        n170) );
  AOI221X2M U146 ( .A0(n139), .A1(n287), .B0(FIFO_MEM[31]), .B1(n138), .C0(
        n176), .Y(n169) );
  OAI22X4M U147 ( .A0(n189), .A1(n155), .B0(n128), .B1(n190), .Y(r_data[3]) );
  AOI221X2M U148 ( .A0(n139), .A1(n275), .B0(n138), .B1(n283), .C0(n191), .Y(
        n190) );
  AOI221X2M U149 ( .A0(FIFO_MEM[43]), .A1(n157), .B0(n159), .B1(n267), .C0(
        n192), .Y(n189) );
  OAI22X4M U150 ( .A0(n201), .A1(n155), .B0(n128), .B1(n202), .Y(r_data[0]) );
  AOI221X2M U151 ( .A0(n139), .A1(n278), .B0(n138), .B1(n286), .C0(n203), .Y(
        n202) );
  AOI221X2M U152 ( .A0(FIFO_MEM[40]), .A1(n157), .B0(n159), .B1(n270), .C0(
        n204), .Y(n201) );
  OAI22X4M U153 ( .A0(n197), .A1(n155), .B0(n128), .B1(n198), .Y(r_data[1]) );
  AOI221X2M U154 ( .A0(n139), .A1(n277), .B0(n138), .B1(n285), .C0(n199), .Y(
        n198) );
  AOI221X2M U155 ( .A0(FIFO_MEM[41]), .A1(n157), .B0(n159), .B1(n269), .C0(
        n200), .Y(n197) );
  OAI22X1M U156 ( .A0(n222), .A1(n137), .B0(n223), .B1(n136), .Y(n173) );
  OAI22X1M U157 ( .A0(n238), .A1(n137), .B0(n239), .B1(n136), .Y(n195) );
  OAI22X1M U158 ( .A0(n243), .A1(n137), .B0(n244), .B1(n136), .Y(n191) );
  OAI22X1M U159 ( .A0(n228), .A1(n137), .B0(n229), .B1(n136), .Y(n187) );
  OAI22X1M U160 ( .A0(n233), .A1(n137), .B0(n234), .B1(n136), .Y(n183) );
  OAI22X1M U161 ( .A0(n248), .A1(n137), .B0(n249), .B1(n136), .Y(n203) );
  OAI22X1M U162 ( .A0(n253), .A1(n137), .B0(n254), .B1(n136), .Y(n199) );
  OAI22X1M U163 ( .A0(n221), .A1(n137), .B0(n136), .B1(n163), .Y(n176) );
endmodule


module DF_Sync_DATA_SIZE4_0 ( sync_clk, sync_rstn, unsync_ip, sync_op );
  input [3:0] unsync_ip;
  output [3:0] sync_op;
  input sync_clk, sync_rstn;
  wire   n3, n4;
  wire   [3:0] meta_flop;

  DFFRQX1M sync_op_reg_3_ ( .D(meta_flop[3]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[3]) );
  DFFRQX1M sync_op_reg_2_ ( .D(meta_flop[2]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[2]) );
  DFFRQX1M sync_op_reg_1_ ( .D(meta_flop[1]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[1]) );
  DFFRQX1M sync_op_reg_0_ ( .D(meta_flop[0]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[0]) );
  DFFRQX1M meta_flop_reg_3_ ( .D(unsync_ip[3]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[3]) );
  DFFRQX1M meta_flop_reg_2_ ( .D(unsync_ip[2]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[2]) );
  DFFRQX1M meta_flop_reg_1_ ( .D(unsync_ip[1]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[1]) );
  DFFRQX1M meta_flop_reg_0_ ( .D(unsync_ip[0]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[0]) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(sync_rstn), .Y(n4) );
endmodule


module fifo_wr ( w_clk, w_rstn, w_inc, sync_rd_ptr, w_addr, gray_w_ptr, full
 );
  input [3:0] sync_rd_ptr;
  output [2:0] w_addr;
  output [3:0] gray_w_ptr;
  input w_clk, w_rstn, w_inc;
  output full;
  wire   n11, n12, n13, n14, n7, n8, n9, n10, n15, n16, n17, n18, n19, n20,
         n21, n22;
  wire   [3:0] comb_gray_w_ptr;

  DFFRX2M w_ptr_reg_3_ ( .D(n11), .CK(w_clk), .RN(n21), .Q(comb_gray_w_ptr[3]), 
        .QN(n20) );
  DFFRX1M gray_w_ptr_reg_3_ ( .D(comb_gray_w_ptr[3]), .CK(w_clk), .RN(n21), 
        .Q(gray_w_ptr[3]) );
  DFFRX1M gray_w_ptr_reg_2_ ( .D(comb_gray_w_ptr[2]), .CK(w_clk), .RN(n21), 
        .Q(gray_w_ptr[2]) );
  DFFRX1M gray_w_ptr_reg_1_ ( .D(comb_gray_w_ptr[1]), .CK(w_clk), .RN(n21), 
        .Q(gray_w_ptr[1]) );
  DFFRX1M gray_w_ptr_reg_0_ ( .D(comb_gray_w_ptr[0]), .CK(w_clk), .RN(n21), 
        .Q(gray_w_ptr[0]) );
  DFFRX4M w_ptr_reg_0_ ( .D(n14), .CK(w_clk), .RN(n21), .Q(w_addr[0]) );
  DFFRHQX8M w_ptr_reg_1_ ( .D(n13), .CK(w_clk), .RN(n21), .Q(w_addr[1]) );
  DFFRX4M w_ptr_reg_2_ ( .D(n12), .CK(w_clk), .RN(n21), .Q(w_addr[2]) );
  INVX4M U3 ( .A(n22), .Y(n21) );
  INVX2M U4 ( .A(w_rstn), .Y(n22) );
  INVX2M U5 ( .A(n15), .Y(full) );
  NAND2X2M U6 ( .A(w_inc), .B(n15), .Y(n7) );
  CLKXOR2X2M U7 ( .A(w_addr[0]), .B(w_addr[1]), .Y(comb_gray_w_ptr[0]) );
  XNOR2X2M U8 ( .A(comb_gray_w_ptr[0]), .B(sync_rd_ptr[0]), .Y(n19) );
  NAND4X2M U9 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U10 ( .A(n20), .B(sync_rd_ptr[3]), .Y(n17) );
  CLKXOR2X2M U11 ( .A(comb_gray_w_ptr[2]), .B(sync_rd_ptr[2]), .Y(n18) );
  XNOR2X2M U12 ( .A(comb_gray_w_ptr[1]), .B(sync_rd_ptr[1]), .Y(n16) );
  CLKXOR2X2M U13 ( .A(w_addr[1]), .B(w_addr[2]), .Y(comb_gray_w_ptr[1]) );
  XNOR2X4M U14 ( .A(n20), .B(w_addr[2]), .Y(comb_gray_w_ptr[2]) );
  NOR2BX2M U15 ( .AN(w_addr[0]), .B(n7), .Y(n8) );
  CLKXOR2X2M U16 ( .A(n10), .B(n20), .Y(n11) );
  NAND2BX2M U17 ( .AN(n9), .B(w_addr[2]), .Y(n10) );
  XNOR2X1M U18 ( .A(w_addr[0]), .B(n7), .Y(n14) );
  CLKXOR2X2M U19 ( .A(w_addr[1]), .B(n8), .Y(n13) );
  XNOR2X2M U20 ( .A(w_addr[2]), .B(n9), .Y(n12) );
  NAND2X2M U21 ( .A(n8), .B(w_addr[1]), .Y(n9) );
endmodule


module fifo_rd ( r_clk, r_rstn, r_inc, sync_wr_ptr, rd_addr, empty, 
        gray_rd_ptr );
  input [3:0] sync_wr_ptr;
  output [2:0] rd_addr;
  output [3:0] gray_rd_ptr;
  input r_clk, r_rstn, r_inc;
  output empty;
  wire   n11, n12, n13, n14, n29, n2, n3, n4, n5, n6, n7, n8, n9, n10, n25,
         n27, n28;
  wire   [3:0] comb_gray_rd_ptr;

  DFFRX4M rd_ptr_reg_0_ ( .D(n14), .CK(r_clk), .RN(n27), .Q(rd_addr[0]) );
  DFFRQX2M rd_ptr_reg_3_ ( .D(n11), .CK(r_clk), .RN(n27), .Q(
        comb_gray_rd_ptr[3]) );
  DFFRQX1M gray_rd_ptr_reg_3_ ( .D(comb_gray_rd_ptr[3]), .CK(r_clk), .RN(n27), 
        .Q(gray_rd_ptr[3]) );
  DFFRQX1M gray_rd_ptr_reg_1_ ( .D(comb_gray_rd_ptr[1]), .CK(r_clk), .RN(n27), 
        .Q(gray_rd_ptr[1]) );
  DFFRQX1M gray_rd_ptr_reg_0_ ( .D(comb_gray_rd_ptr[0]), .CK(r_clk), .RN(n27), 
        .Q(gray_rd_ptr[0]) );
  DFFRQX1M gray_rd_ptr_reg_2_ ( .D(comb_gray_rd_ptr[2]), .CK(r_clk), .RN(n27), 
        .Q(gray_rd_ptr[2]) );
  DFFRQX4M rd_ptr_reg_2_ ( .D(n12), .CK(r_clk), .RN(n27), .Q(rd_addr[2]) );
  DFFRQX1M rd_ptr_reg_1_ ( .D(n13), .CK(r_clk), .RN(n27), .Q(n29) );
  INVXLM U3 ( .A(n29), .Y(n25) );
  INVX4M U4 ( .A(n25), .Y(rd_addr[1]) );
  INVX4M U5 ( .A(n28), .Y(n27) );
  INVX2M U6 ( .A(r_rstn), .Y(n28) );
  INVX2M U7 ( .A(n6), .Y(empty) );
  CLKXOR2X2M U8 ( .A(comb_gray_rd_ptr[3]), .B(rd_addr[2]), .Y(
        comb_gray_rd_ptr[2]) );
  CLKXOR2X2M U9 ( .A(rd_addr[2]), .B(rd_addr[1]), .Y(comb_gray_rd_ptr[1]) );
  CLKXOR2X2M U10 ( .A(rd_addr[0]), .B(rd_addr[1]), .Y(comb_gray_rd_ptr[0]) );
  NOR2BX2M U11 ( .AN(rd_addr[0]), .B(n2), .Y(n3) );
  XNOR2X2M U12 ( .A(comb_gray_rd_ptr[0]), .B(sync_wr_ptr[0]), .Y(n10) );
  CLKXOR2X2M U13 ( .A(rd_addr[1]), .B(n3), .Y(n13) );
  XNOR2X2M U14 ( .A(rd_addr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U15 ( .A(comb_gray_rd_ptr[3]), .B(n5), .Y(n11) );
  NAND2BX2M U16 ( .AN(n4), .B(rd_addr[2]), .Y(n5) );
  XNOR2X2M U17 ( .A(rd_addr[0]), .B(n2), .Y(n14) );
  NAND4X2M U18 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U19 ( .A(comb_gray_rd_ptr[3]), .B(sync_wr_ptr[3]), .Y(n9) );
  XNOR2X2M U20 ( .A(comb_gray_rd_ptr[1]), .B(sync_wr_ptr[1]), .Y(n8) );
  XNOR2X2M U21 ( .A(comb_gray_rd_ptr[2]), .B(sync_wr_ptr[2]), .Y(n7) );
  NAND2X2M U22 ( .A(n3), .B(rd_addr[1]), .Y(n4) );
  NAND2X2M U23 ( .A(r_inc), .B(n6), .Y(n2) );
endmodule


module DF_Sync_DATA_SIZE4_1 ( sync_clk, sync_rstn, unsync_ip, sync_op );
  input [3:0] unsync_ip;
  output [3:0] sync_op;
  input sync_clk, sync_rstn;
  wire   n3, n4;
  wire   [3:0] meta_flop;

  DFFRQX2M sync_op_reg_3_ ( .D(meta_flop[3]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[3]) );
  DFFRQX2M sync_op_reg_1_ ( .D(meta_flop[1]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[1]) );
  DFFRQX2M sync_op_reg_0_ ( .D(meta_flop[0]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[0]) );
  DFFRQX2M sync_op_reg_2_ ( .D(meta_flop[2]), .CK(sync_clk), .RN(n3), .Q(
        sync_op[2]) );
  DFFRQX2M meta_flop_reg_3_ ( .D(unsync_ip[3]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[3]) );
  DFFRQX2M meta_flop_reg_2_ ( .D(unsync_ip[2]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[2]) );
  DFFRQX2M meta_flop_reg_1_ ( .D(unsync_ip[1]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[1]) );
  DFFRQX2M meta_flop_reg_0_ ( .D(unsync_ip[0]), .CK(sync_clk), .RN(n3), .Q(
        meta_flop[0]) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(sync_rstn), .Y(n4) );
endmodule


module Async_fifo_D_SIZE8_P_SIZE4_F_DEPTH8 ( i_w_clk, i_w_rstn, i_w_inc, 
        i_r_clk, i_r_rstn, i_r_inc, i_w_data, o_r_data, o_full, o_empty );
  input [7:0] i_w_data;
  output [7:0] o_r_data;
  input i_w_clk, i_w_rstn, i_w_inc, i_r_clk, i_r_rstn, i_r_inc;
  output o_full, o_empty;
  wire   n5, n6, n7, n8;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] gray_w_ptr;
  wire   [3:0] w2r_ptr;
  wire   [3:0] r2w_ptr;
  wire   [3:0] gray_rd_ptr;

  fifo_mem_A_SIZE3_D_SIZE8_F_DEPTH8_P_SIZE4 u_fifo_mem ( .w_clk(i_w_clk), 
        .w_rstn(n5), .w_full(o_full), .w_inc(i_w_inc), .w_addr(w_addr), 
        .r_addr(r_addr), .w_data(i_w_data), .r_data(o_r_data) );
  DF_Sync_DATA_SIZE4_0 u_w2r_sync ( .sync_clk(i_r_clk), .sync_rstn(n7), 
        .unsync_ip(gray_w_ptr), .sync_op(w2r_ptr) );
  fifo_wr u_fifo_wr ( .w_clk(i_w_clk), .w_rstn(n5), .w_inc(i_w_inc), 
        .sync_rd_ptr(r2w_ptr), .w_addr(w_addr), .gray_w_ptr(gray_w_ptr), 
        .full(o_full) );
  fifo_rd u_fifo_rd ( .r_clk(i_r_clk), .r_rstn(n7), .r_inc(i_r_inc), 
        .sync_wr_ptr(w2r_ptr), .rd_addr(r_addr), .empty(o_empty), 
        .gray_rd_ptr(gray_rd_ptr) );
  DF_Sync_DATA_SIZE4_1 u_r2w_sync ( .sync_clk(i_w_clk), .sync_rstn(n5), 
        .unsync_ip(gray_rd_ptr), .sync_op(r2w_ptr) );
  INVX2M U1 ( .A(n6), .Y(n5) );
  INVX2M U2 ( .A(i_w_rstn), .Y(n6) );
  INVX2M U3 ( .A(n8), .Y(n7) );
  INVX2M U4 ( .A(i_r_rstn), .Y(n8) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX1M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX1M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVX2M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n9, n10, n11, n12, n13, n14, n15,
         n16, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;

  MX2X6M U36 ( .A(i_ref_clk), .B(div_clk), .S0(n54), .Y(o_div_clk) );
  OAI221X4M U16 ( .A0(odd_edge_tog), .A1(n16), .B0(n14), .B1(n58), .C0(
        i_div_ratio[0]), .Y(n12) );
  ClkDiv_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(n52), .Q(div_clk) );
  DFFRQX2M count_reg_6_ ( .D(n19), .CK(i_ref_clk), .RN(n52), .Q(count[6]) );
  DFFRQX2M count_reg_5_ ( .D(n20), .CK(i_ref_clk), .RN(n52), .Q(count[5]) );
  DFFRQX2M count_reg_1_ ( .D(n24), .CK(i_ref_clk), .RN(n52), .Q(count[1]) );
  DFFRQX2M count_reg_4_ ( .D(n21), .CK(i_ref_clk), .RN(n52), .Q(count[4]) );
  DFFRQX2M count_reg_3_ ( .D(n22), .CK(i_ref_clk), .RN(n52), .Q(count[3]) );
  DFFRQX2M count_reg_2_ ( .D(n23), .CK(i_ref_clk), .RN(n52), .Q(count[2]) );
  DFFRQX2M count_reg_0_ ( .D(n25), .CK(i_ref_clk), .RN(n52), .Q(count[0]) );
  DFFSX1M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog), .QN(n58) );
  XNOR2X4M U3 ( .A(count[6]), .B(i_div_ratio[7]), .Y(n35) );
  XNOR2X4M U4 ( .A(count[0]), .B(i_div_ratio[1]), .Y(n31) );
  AOI21X2M U5 ( .A0(i_div_ratio[2]), .A1(i_div_ratio[1]), .B0(n44), .Y(n43) );
  NOR2X4M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n44) );
  BUFX4M U7 ( .A(n9), .Y(n51) );
  CLKINVX3M U8 ( .A(n51), .Y(n54) );
  OAI31X2M U9 ( .A0(n33), .A1(i_div_ratio[7]), .A2(i_div_ratio[6]), .B0(
        i_clk_en), .Y(n9) );
  INVX4M U10 ( .A(n53), .Y(n52) );
  AND3X4M U11 ( .A(n11), .B(n12), .C(n54), .Y(n10) );
  NAND2X2M U12 ( .A(n40), .B(n55), .Y(n33) );
  NAND2X2M U13 ( .A(n44), .B(n56), .Y(n42) );
  OAI2BB2X1M U14 ( .B0(n54), .B1(n61), .A0N(N19), .A1N(n10), .Y(n22) );
  OAI2BB2X1M U15 ( .B0(n54), .B1(n60), .A0N(N20), .A1N(n10), .Y(n21) );
  OAI2BB2X1M U17 ( .B0(n54), .B1(n59), .A0N(N17), .A1N(n10), .Y(n24) );
  OAI21X2M U18 ( .A0(n44), .A1(n56), .B0(n42), .Y(n45) );
  NAND2X2M U19 ( .A(n35), .B(n36), .Y(n34) );
  INVX2M U20 ( .A(i_rst), .Y(n53) );
  NOR2X4M U21 ( .A(n42), .B(i_div_ratio[4]), .Y(n40) );
  AO22XLM U22 ( .A0(n51), .A1(count[5]), .B0(N21), .B1(n10), .Y(n20) );
  AO22XLM U23 ( .A0(n51), .A1(count[6]), .B0(N22), .B1(n10), .Y(n19) );
  AO22XLM U24 ( .A0(n51), .A1(count[2]), .B0(N18), .B1(n10), .Y(n23) );
  AO22XLM U25 ( .A0(n51), .A1(count[0]), .B0(N16), .B1(n10), .Y(n25) );
  INVX2M U26 ( .A(i_div_ratio[3]), .Y(n56) );
  CLKXOR2X2M U27 ( .A(div_clk), .B(n13), .Y(n18) );
  AOI21X1M U28 ( .A0(n12), .A1(n11), .B0(n51), .Y(n13) );
  CLKXOR2X2M U29 ( .A(odd_edge_tog), .B(n15), .Y(n17) );
  NOR2X1M U30 ( .A(n51), .B(n12), .Y(n15) );
  INVX2M U31 ( .A(i_div_ratio[5]), .Y(n55) );
  NOR4BX2M U32 ( .AN(n31), .B(n46), .C(n47), .D(n34), .Y(n16) );
  NAND3X2M U33 ( .A(n48), .B(n49), .C(n50), .Y(n46) );
  AOI211X2M U34 ( .A0(i_div_ratio[6]), .A1(n57), .B0(n30), .C0(n31), .Y(n29)
         );
  INVX2M U35 ( .A(n35), .Y(n57) );
  OAI2BB2X1M U37 ( .B0(n32), .B1(n33), .A0N(n33), .A1N(n34), .Y(n30) );
  AOI2B1X1M U38 ( .A1N(i_div_ratio[6]), .A0(n35), .B0(n36), .Y(n32) );
  CLKXOR2X2M U39 ( .A(n39), .B(count[4]), .Y(n38) );
  OAI21X2M U40 ( .A0(n40), .A1(n55), .B0(n33), .Y(n39) );
  CLKXOR2X2M U41 ( .A(n61), .B(n41), .Y(n37) );
  AOI21X2M U42 ( .A0(i_div_ratio[4]), .A1(n42), .B0(n40), .Y(n41) );
  AND4X2M U43 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n14) );
  CLKXOR2X2M U44 ( .A(count[1]), .B(n43), .Y(n27) );
  XNOR2X2M U45 ( .A(count[2]), .B(n45), .Y(n26) );
  NOR2X2M U46 ( .A(n37), .B(n38), .Y(n28) );
  XNOR2X4M U47 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n36) );
  CLKXOR2X2M U48 ( .A(n59), .B(i_div_ratio[2]), .Y(n50) );
  CLKXOR2X2M U49 ( .A(n60), .B(i_div_ratio[5]), .Y(n48) );
  CLKXOR2X2M U50 ( .A(count[2]), .B(n56), .Y(n49) );
  NAND2BX2M U51 ( .AN(i_div_ratio[0]), .B(n14), .Y(n11) );
  INVX2M U52 ( .A(count[3]), .Y(n61) );
  INVX2M U53 ( .A(count[4]), .Y(n60) );
  INVX2M U54 ( .A(count[1]), .Y(n59) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[4]), .B(count[3]), .Y(n47) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n42, n3, n4, n5, n6, n32, n34, n35, n36, n37;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  AND2X2M U11 ( .A(n35), .B(n32), .Y(OUT[1]) );
  AND2X2M U12 ( .A(IN[4]), .B(n34), .Y(n32) );
  CLKINVX2M U17 ( .A(IN[0]), .Y(n36) );
  NOR4BX4M U18 ( .AN(IN[2]), .B(IN[3]), .C(IN[4]), .D(IN[5]), .Y(n3) );
  NOR3BX2M U19 ( .AN(IN[3]), .B(IN[4]), .C(n4), .Y(n42) );
  BUFX2M U20 ( .A(n42), .Y(OUT[2]) );
  CLKINVX1M U21 ( .A(n4), .Y(n34) );
  INVXLM U22 ( .A(IN[3]), .Y(n35) );
  AND3X2M U23 ( .A(n3), .B(n37), .C(n36), .Y(OUT[3]) );
  INVX2M U24 ( .A(IN[1]), .Y(n37) );
  OR4X1M U25 ( .A(IN[5]), .B(IN[0]), .C(IN[1]), .D(IN[2]), .Y(n4) );
  OAI211X4M U26 ( .A0(n5), .A1(n3), .B0(n36), .C0(n37), .Y(OUT[0]) );
  NOR3X2M U27 ( .A(n6), .B(IN[5]), .C(IN[2]), .Y(n5) );
  XNOR2X1M U28 ( .A(IN[3]), .B(IN[4]), .Y(n6) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67;
  wire   [6:0] count;

  MX2X6M U33 ( .A(i_ref_clk), .B(div_clk), .S0(n60), .Y(o_div_clk) );
  OAI221X4M U15 ( .A0(odd_edge_tog), .A1(n15), .B0(n16), .B1(n62), .C0(
        i_div_ratio[0]), .Y(n10) );
  ClkDiv_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSX1M odd_edge_tog_reg ( .D(n56), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog), .QN(n62) );
  DFFRX1M count_reg_4_ ( .D(n52), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]), 
        .QN(n64) );
  DFFRX1M count_reg_3_ ( .D(n51), .CK(i_ref_clk), .RN(n58), .Q(count[3]), .QN(
        n65) );
  DFFRX1M count_reg_1_ ( .D(n49), .CK(i_ref_clk), .RN(n58), .Q(count[1]), .QN(
        n66) );
  DFFRX1M div_clk_reg ( .D(n55), .CK(i_ref_clk), .RN(n58), .Q(div_clk) );
  DFFRX2M count_reg_0_ ( .D(n48), .CK(i_ref_clk), .RN(n58), .Q(count[0]) );
  DFFRX2M count_reg_2_ ( .D(n50), .CK(i_ref_clk), .RN(n58), .Q(count[2]) );
  DFFRX2M count_reg_6_ ( .D(n54), .CK(i_ref_clk), .RN(n58), .Q(count[6]) );
  DFFRX2M count_reg_5_ ( .D(n53), .CK(i_ref_clk), .RN(n58), .Q(count[5]) );
  XNOR2X4M U3 ( .A(count[6]), .B(i_div_ratio[7]), .Y(n31) );
  XNOR2X4M U4 ( .A(count[0]), .B(i_div_ratio[1]), .Y(n17) );
  BUFX4M U5 ( .A(n11), .Y(n57) );
  CLKINVX3M U6 ( .A(n57), .Y(n60) );
  OAI31X2M U7 ( .A0(n30), .A1(i_div_ratio[7]), .A2(i_div_ratio[6]), .B0(
        i_clk_en), .Y(n11) );
  NOR2X3M U8 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n40) );
  INVX4M U9 ( .A(n59), .Y(n58) );
  NAND2X2M U10 ( .A(n40), .B(n61), .Y(n38) );
  OAI21X2M U11 ( .A0(n40), .A1(n61), .B0(n38), .Y(n41) );
  AND3X4M U12 ( .A(n13), .B(n10), .C(n60), .Y(n14) );
  OAI2BB2X1M U13 ( .B0(n60), .B1(n66), .A0N(N17), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U14 ( .B0(n60), .B1(n65), .A0N(N19), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U16 ( .B0(n60), .B1(n64), .A0N(N20), .A1N(n14), .Y(n52) );
  NAND2X2M U17 ( .A(n36), .B(n67), .Y(n30) );
  INVX2M U18 ( .A(i_div_ratio[3]), .Y(n61) );
  AOI21X1M U19 ( .A0(i_div_ratio[2]), .A1(i_div_ratio[1]), .B0(n40), .Y(n39)
         );
  NAND2BX2M U20 ( .AN(i_div_ratio[0]), .B(n16), .Y(n13) );
  NAND2X2M U21 ( .A(n31), .B(n32), .Y(n20) );
  INVX2M U22 ( .A(i_rst), .Y(n59) );
  NOR2X4M U23 ( .A(n38), .B(i_div_ratio[4]), .Y(n36) );
  AO22XLM U24 ( .A0(n57), .A1(count[2]), .B0(N18), .B1(n14), .Y(n50) );
  AO22XLM U25 ( .A0(n57), .A1(count[5]), .B0(N21), .B1(n14), .Y(n53) );
  AO22XLM U26 ( .A0(n57), .A1(count[0]), .B0(N16), .B1(n14), .Y(n48) );
  AO22XLM U27 ( .A0(n57), .A1(count[6]), .B0(N22), .B1(n14), .Y(n54) );
  NOR4BX2M U28 ( .AN(n17), .B(n18), .C(n19), .D(n20), .Y(n15) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[4]), .B(count[3]), .Y(n19) );
  AOI211X2M U30 ( .A0(i_div_ratio[6]), .A1(n63), .B0(n28), .C0(n17), .Y(n27)
         );
  INVX2M U31 ( .A(n31), .Y(n63) );
  OAI2BB2X1M U32 ( .B0(n29), .B1(n30), .A0N(n30), .A1N(n20), .Y(n28) );
  AOI2B1X1M U34 ( .A1N(i_div_ratio[6]), .A0(n31), .B0(n32), .Y(n29) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n12), .Y(n55) );
  AOI21X1M U36 ( .A0(n10), .A1(n13), .B0(n57), .Y(n12) );
  CLKXOR2X2M U37 ( .A(n35), .B(count[4]), .Y(n34) );
  OAI21X2M U38 ( .A0(n36), .A1(n67), .B0(n30), .Y(n35) );
  CLKXOR2X2M U39 ( .A(n65), .B(n37), .Y(n33) );
  AOI21X2M U40 ( .A0(i_div_ratio[4]), .A1(n38), .B0(n36), .Y(n37) );
  CLKXOR2X2M U41 ( .A(odd_edge_tog), .B(n9), .Y(n56) );
  NOR2X1M U42 ( .A(n10), .B(n57), .Y(n9) );
  AND4X2M U43 ( .A(n24), .B(n25), .C(n26), .D(n27), .Y(n16) );
  XNOR2X2M U44 ( .A(count[2]), .B(n41), .Y(n24) );
  CLKXOR2X2M U45 ( .A(count[1]), .B(n39), .Y(n25) );
  NOR2X2M U46 ( .A(n33), .B(n34), .Y(n26) );
  NAND3X2M U47 ( .A(n21), .B(n22), .C(n23), .Y(n18) );
  CLKXOR2X2M U48 ( .A(n64), .B(i_div_ratio[5]), .Y(n21) );
  CLKXOR2X2M U49 ( .A(count[2]), .B(n61), .Y(n22) );
  CLKXOR2X2M U50 ( .A(n66), .B(i_div_ratio[2]), .Y(n23) );
  XNOR2X4M U51 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n32) );
  INVX2M U52 ( .A(i_div_ratio[5]), .Y(n67) );
endmodule


module uart_fsm ( data_valid, par_en, ser_done, ser_en, mux_sel, busy, clk, 
        rst_n );
  output [1:0] mux_sel;
  input data_valid, par_en, ser_done, clk, rst_n;
  output ser_en, busy;
  wire   n5, n6, n7, n8, n9, n12, n13, n14, n15, n16, n17, n18;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M cs_reg_2_ ( .D(ns[2]), .CK(clk), .RN(n14), .Q(cs[2]) );
  DFFRQX1M cs_reg_1_ ( .D(n16), .CK(clk), .RN(n14), .Q(cs[1]) );
  DFFRQX1M cs_reg_0_ ( .D(ns[0]), .CK(clk), .RN(n14), .Q(cs[0]) );
  AOI2B1X2M U3 ( .A1N(par_en), .A0(ser_done), .B0(n13), .Y(n5) );
  INVXLM U4 ( .A(cs[0]), .Y(n12) );
  INVX4M U5 ( .A(n12), .Y(n13) );
  INVX2M U6 ( .A(n15), .Y(n14) );
  INVX2M U7 ( .A(rst_n), .Y(n15) );
  OR2X2M U8 ( .A(ser_en), .B(mux_sel[0]), .Y(busy) );
  NOR3BX2M U9 ( .AN(mux_sel[1]), .B(n15), .C(n5), .Y(ns[2]) );
  XNOR2X4M U10 ( .A(n13), .B(cs[1]), .Y(n8) );
  AND2X2M U11 ( .A(n8), .B(n9), .Y(mux_sel[0]) );
  XNOR2X2M U12 ( .A(n18), .B(n13), .Y(n9) );
  NOR2X6M U13 ( .A(n17), .B(cs[2]), .Y(mux_sel[1]) );
  INVX2M U14 ( .A(cs[1]), .Y(n17) );
  INVX2M U15 ( .A(cs[2]), .Y(n18) );
  NOR3X2M U16 ( .A(n15), .B(n13), .C(n6), .Y(ns[0]) );
  AOI33X2M U17 ( .A0(mux_sel[1]), .A1(ser_done), .A2(par_en), .B0(n17), .B1(
        n18), .B2(data_valid), .Y(n6) );
  NOR2X4M U18 ( .A(n8), .B(cs[2]), .Y(ser_en) );
  INVX2M U19 ( .A(n7), .Y(n16) );
  AOI32X1M U20 ( .A0(n13), .A1(n18), .A2(n17), .B0(mux_sel[1]), .B1(n5), .Y(n7) );
endmodule


module parity ( p_data, data_valid, par_type, rst_n, par_bit, clk, par_en );
  input [7:0] p_data;
  input data_valid, par_type, rst_n, clk, par_en;
  output par_bit;
  wire   n7, n1, n2, n3, n4, n5, n6;

  DFFRQX1M par_bit_reg ( .D(n7), .CK(clk), .RN(rst_n), .Q(par_bit) );
  XOR3XLM U2 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
  NAND2X2M U6 ( .A(par_en), .B(data_valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(par_type), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n5), .Y(n4) );
endmodule


module serializer ( p_data, ser_en, ser_done, ser_data, clk, rst_n, busy );
  input [7:0] p_data;
  input ser_en, clk, rst_n, busy;
  output ser_done, ser_data;
  wire   N1, N2, N3, N12, n16, n17, n18, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n6, n7, n8, n9, n10, n11, n35, n36, n37, n38, n39,
         n40, n41, n42, n43;
  wire   [7:0] temp_ser_data;

  DFFRQX2M ser_done_reg ( .D(n16), .CK(clk), .RN(n39), .Q(ser_done) );
  DFFRQX2M count_reg_2_ ( .D(n18), .CK(clk), .RN(n39), .Q(N3) );
  MX2X2M U25 ( .A(n30), .B(n29), .S0(N3), .Y(N12) );
  DFFRQX1M temp_ser_data_reg_7_ ( .D(n28), .CK(clk), .RN(n39), .Q(
        temp_ser_data[7]) );
  DFFRQX1M temp_ser_data_reg_6_ ( .D(n27), .CK(clk), .RN(n39), .Q(
        temp_ser_data[6]) );
  DFFRQX1M temp_ser_data_reg_5_ ( .D(n26), .CK(clk), .RN(n39), .Q(
        temp_ser_data[5]) );
  DFFRQX1M temp_ser_data_reg_1_ ( .D(n22), .CK(clk), .RN(n39), .Q(
        temp_ser_data[1]) );
  DFFRQX1M temp_ser_data_reg_4_ ( .D(n25), .CK(clk), .RN(n39), .Q(
        temp_ser_data[4]) );
  DFFRQX1M temp_ser_data_reg_0_ ( .D(n21), .CK(clk), .RN(n39), .Q(
        temp_ser_data[0]) );
  DFFRQX1M temp_ser_data_reg_3_ ( .D(n24), .CK(clk), .RN(n39), .Q(
        temp_ser_data[3]) );
  DFFRQX1M temp_ser_data_reg_2_ ( .D(n23), .CK(clk), .RN(n39), .Q(
        temp_ser_data[2]) );
  DFFRQX1M ser_data_reg ( .D(n17), .CK(clk), .RN(n39), .Q(ser_data) );
  DFFRQX1M count_reg_1_ ( .D(n40), .CK(clk), .RN(n39), .Q(N2) );
  DFFRQX4M count_reg_0_ ( .D(n20), .CK(clk), .RN(rst_n), .Q(N1) );
  MX4XLM U10 ( .A(temp_ser_data[4]), .B(temp_ser_data[5]), .C(temp_ser_data[6]), .D(temp_ser_data[7]), .S0(N1), .S1(n36), .Y(n29) );
  MX4XLM U9 ( .A(temp_ser_data[0]), .B(temp_ser_data[1]), .C(temp_ser_data[2]), 
        .D(temp_ser_data[3]), .S0(N1), .S1(n36), .Y(n30) );
  INVX2M U3 ( .A(n35), .Y(n36) );
  INVX2M U4 ( .A(N2), .Y(n35) );
  AOI32X1M U5 ( .A0(n42), .A1(n35), .A2(N1), .B0(n9), .B1(n36), .Y(n8) );
  NAND3X1M U6 ( .A(n42), .B(N1), .C(n36), .Y(n10) );
  INVX4M U7 ( .A(n38), .Y(n43) );
  BUFX6M U8 ( .A(rst_n), .Y(n39) );
  INVX4M U11 ( .A(n37), .Y(n38) );
  INVX2M U12 ( .A(n7), .Y(n42) );
  INVX2M U13 ( .A(busy), .Y(n37) );
  NAND2BX2M U14 ( .AN(ser_en), .B(n38), .Y(n6) );
  NAND2X2M U15 ( .A(ser_en), .B(n38), .Y(n7) );
  AO22X1M U16 ( .A0(temp_ser_data[2]), .A1(busy), .B0(p_data[2]), .B1(n43), 
        .Y(n23) );
  AO22X1M U17 ( .A0(temp_ser_data[3]), .A1(busy), .B0(p_data[3]), .B1(n43), 
        .Y(n24) );
  AO22X1M U18 ( .A0(temp_ser_data[0]), .A1(n38), .B0(p_data[0]), .B1(n43), .Y(
        n21) );
  AO22X1M U19 ( .A0(temp_ser_data[4]), .A1(n38), .B0(p_data[4]), .B1(n43), .Y(
        n25) );
  AO22X1M U20 ( .A0(temp_ser_data[1]), .A1(n38), .B0(p_data[1]), .B1(n43), .Y(
        n22) );
  AO22X1M U21 ( .A0(temp_ser_data[5]), .A1(n38), .B0(p_data[5]), .B1(n43), .Y(
        n26) );
  OAI21X2M U22 ( .A0(N1), .A1(n7), .B0(n6), .Y(n9) );
  OAI2B2X1M U23 ( .A1N(N1), .A0(n6), .B0(N1), .B1(n7), .Y(n20) );
  OAI2B2X1M U24 ( .A1N(ser_done), .A0(n6), .B0(n41), .B1(n10), .Y(n16) );
  OAI22X1M U26 ( .A0(N3), .A1(n10), .B0(n11), .B1(n41), .Y(n18) );
  AOI21X2M U27 ( .A0(n42), .A1(n35), .B0(n9), .Y(n11) );
  INVX2M U28 ( .A(n8), .Y(n40) );
  AO22X1M U29 ( .A0(temp_ser_data[6]), .A1(n38), .B0(p_data[6]), .B1(n43), .Y(
        n27) );
  AO22X1M U30 ( .A0(temp_ser_data[7]), .A1(n38), .B0(p_data[7]), .B1(n43), .Y(
        n28) );
  AO22X1M U31 ( .A0(ser_data), .A1(n7), .B0(N12), .B1(n42), .Y(n17) );
  INVX2M U32 ( .A(N3), .Y(n41) );
endmodule


module uart_mux ( mux_sel, ser_data, par_bit, tx_out );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output tx_out;
  wire   n8, n2, n3, n7;

  NOR2BX2M U3 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  CLKBUFX8M U4 ( .A(n8), .Y(tx_out) );
  INVX2M U5 ( .A(mux_sel[0]), .Y(n7) );
  NAND3X2M U6 ( .A(mux_sel[1]), .B(n7), .C(ser_data), .Y(n3) );
  OAI21X2M U7 ( .A0(n2), .A1(n7), .B0(n3), .Y(n8) );
endmodule


module uart_top ( p_data, data_valid, par_en, par_type, clk, rst_n, tx_out, 
        busy );
  input [7:0] p_data;
  input data_valid, par_en, par_type, clk, rst_n;
  output tx_out, busy;
  wire   ser_done, ser_en, par_bit, ser_data, n3, n4;
  wire   [1:0] mux_sel;

  uart_fsm fsm_int ( .data_valid(data_valid), .par_en(par_en), .ser_done(
        ser_done), .ser_en(ser_en), .mux_sel(mux_sel), .busy(busy), .clk(clk), 
        .rst_n(n3) );
  parity parity_int ( .p_data(p_data), .data_valid(data_valid), .par_type(
        par_type), .rst_n(n3), .par_bit(par_bit), .clk(clk), .par_en(par_en)
         );
  serializer serializer_int ( .p_data(p_data), .ser_en(ser_en), .ser_done(
        ser_done), .ser_data(ser_data), .clk(clk), .rst_n(n3), .busy(busy) );
  uart_mux mux_inst ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), .tx_out(tx_out) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(rst_n), .Y(n4) );
endmodule


module uart_rx_fsm ( rx_in, clk, rst_n, edge_cnt, bit_cnt, par_en, strt_glitch, 
        stp_err, par_err, prescale, data_samp_en, enable, par_chk_en, 
        strt_chk_en, stp_chk_en, deser_en, data_valid );
  input [5:0] edge_cnt;
  input [3:0] bit_cnt;
  input [5:0] prescale;
  input rx_in, clk, rst_n, par_en, strt_glitch, stp_err, par_err;
  output data_samp_en, enable, par_chk_en, strt_chk_en, stp_chk_en, deser_en,
         data_valid;
  wire   n95, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n74, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M cs_reg_2_ ( .D(ns[2]), .CK(clk), .RN(n77), .Q(cs[2]) );
  DFFRQX2M cs_reg_0_ ( .D(ns[0]), .CK(clk), .RN(n77), .Q(cs[0]) );
  DFFRQX2M cs_reg_1_ ( .D(ns[1]), .CK(clk), .RN(n77), .Q(cs[1]) );
  BUFX2M U3 ( .A(enable), .Y(data_samp_en) );
  AOI21X2M U4 ( .A0(edge_cnt[0]), .A1(n61), .B0(prescale[0]), .Y(n58) );
  OAI33X2M U5 ( .A0(n91), .A1(n42), .A2(n85), .B0(n84), .B1(rx_in), .B2(n40), 
        .Y(n47) );
  AOI31X2M U6 ( .A0(bit_cnt[1]), .A1(n49), .A2(bit_cnt[0]), .B0(n86), .Y(n40)
         );
  NOR2X3M U7 ( .A(edge_cnt[4]), .B(edge_cnt[5]), .Y(n27) );
  INVXLM U8 ( .A(n95), .Y(n74) );
  INVX4M U9 ( .A(n74), .Y(enable) );
  OAI221X1M U10 ( .A0(n84), .A1(n86), .B0(cs[2]), .B1(n87), .C0(n18), .Y(n95)
         );
  NOR4X2M U11 ( .A(n83), .B(bit_cnt[1]), .C(bit_cnt[2]), .D(bit_cnt[3]), .Y(
        n46) );
  OAI21X1M U12 ( .A0(edge_cnt[2]), .A1(edge_cnt[1]), .B0(edge_cnt[3]), .Y(n33)
         );
  NOR2X2M U13 ( .A(prescale[1]), .B(prescale[0]), .Y(n64) );
  NAND2X1M U14 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .Y(n34) );
  XNOR2X1M U15 ( .A(edge_cnt[2]), .B(n63), .Y(n50) );
  NAND2X2M U16 ( .A(n64), .B(n93), .Y(n37) );
  NOR2X4M U17 ( .A(n37), .B(prescale[3]), .Y(n31) );
  NOR2X2M U18 ( .A(cs[0]), .B(cs[1]), .Y(n41) );
  XOR3XLM U19 ( .A(n94), .B(edge_cnt[5]), .C(n56), .Y(n55) );
  INVX2M U20 ( .A(cs[2]), .Y(n86) );
  BUFX2M U21 ( .A(rst_n), .Y(n77) );
  INVX2M U22 ( .A(n37), .Y(n89) );
  OAI21X2M U23 ( .A0(n31), .A1(n92), .B0(n56), .Y(n62) );
  NAND2X2M U24 ( .A(n31), .B(n92), .Y(n56) );
  INVX2M U25 ( .A(n41), .Y(n84) );
  OAI21X2M U26 ( .A0(n64), .A1(n93), .B0(n37), .Y(n63) );
  INVX2M U27 ( .A(n23), .Y(n78) );
  NOR2X4M U28 ( .A(n87), .B(n18), .Y(n30) );
  OAI2B1X2M U29 ( .A1N(n30), .A0(n38), .B0(n39), .Y(ns[2]) );
  AOI32X1M U30 ( .A0(n79), .A1(n91), .A2(deser_en), .B0(n40), .B1(n41), .Y(n39) );
  INVX2M U31 ( .A(n42), .Y(n79) );
  INVX2M U32 ( .A(deser_en), .Y(n85) );
  NAND2X2M U33 ( .A(n30), .B(n38), .Y(n44) );
  NAND3BX2M U34 ( .AN(n47), .B(n44), .C(n48), .Y(ns[0]) );
  OR4X1M U35 ( .A(n46), .B(n18), .C(cs[1]), .D(strt_glitch), .Y(n48) );
  AOI211X2M U36 ( .A0(n90), .A1(n94), .B0(n58), .C0(n59), .Y(n52) );
  AOI2B1X1M U37 ( .A1N(edge_cnt[0]), .A0(n60), .B0(n88), .Y(n59) );
  INVX2M U38 ( .A(n56), .Y(n90) );
  CLKINVX2M U39 ( .A(prescale[4]), .Y(n92) );
  NAND2X4M U40 ( .A(cs[0]), .B(n86), .Y(n18) );
  XNOR2X2M U41 ( .A(edge_cnt[3]), .B(n57), .Y(n54) );
  AOI21X1M U42 ( .A0(prescale[3]), .A1(n37), .B0(n31), .Y(n57) );
  INVX2M U43 ( .A(prescale[2]), .Y(n93) );
  NAND4X2M U44 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n20) );
  XNOR2X2M U45 ( .A(edge_cnt[4]), .B(n62), .Y(n51) );
  NOR4X2M U46 ( .A(n54), .B(n84), .C(n86), .D(n55), .Y(n53) );
  NOR3BX2M U47 ( .AN(stp_err), .B(par_en), .C(n20), .Y(stp_chk_en) );
  INVX2M U48 ( .A(cs[1]), .Y(n87) );
  NOR3X6M U49 ( .A(cs[0]), .B(cs[2]), .C(n87), .Y(deser_en) );
  OAI2B11X2M U50 ( .A1N(edge_cnt[4]), .A0(n28), .B0(n29), .C0(n30), .Y(n22) );
  AOI211X2M U51 ( .A0(edge_cnt[0]), .A1(edge_cnt[2]), .B0(edge_cnt[3]), .C0(
        n81), .Y(n28) );
  OAI31X2M U52 ( .A0(edge_cnt[0]), .A1(edge_cnt[4]), .A2(edge_cnt[2]), .B0(n78), .Y(n29) );
  INVX2M U53 ( .A(n34), .Y(n81) );
  AOI211X2M U54 ( .A0(par_err), .A1(par_en), .B0(n20), .C0(stp_err), .Y(
        data_valid) );
  INVX2M U55 ( .A(prescale[5]), .Y(n94) );
  XOR2X2M U56 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n61) );
  NAND3X2M U57 ( .A(prescale[4]), .B(n31), .C(n32), .Y(n23) );
  AOI21X1M U58 ( .A0(n27), .A1(n33), .B0(prescale[5]), .Y(n32) );
  NAND3X1M U59 ( .A(prescale[3]), .B(n89), .C(n35), .Y(n21) );
  AOI31X2M U60 ( .A0(n34), .A1(n82), .A2(n27), .B0(n36), .Y(n35) );
  INVX2M U61 ( .A(edge_cnt[3]), .Y(n82) );
  NAND2X2M U62 ( .A(n92), .B(n94), .Y(n36) );
  XNOR2X2M U63 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n60) );
  AND3X2M U64 ( .A(n23), .B(n21), .C(n24), .Y(n19) );
  NAND4X1M U65 ( .A(n89), .B(n25), .C(prescale[5]), .D(n26), .Y(n24) );
  OR4X1M U66 ( .A(edge_cnt[1]), .B(edge_cnt[2]), .C(edge_cnt[3]), .D(
        edge_cnt[5]), .Y(n25) );
  NOR3X2M U67 ( .A(n27), .B(prescale[4]), .C(prescale[3]), .Y(n26) );
  NOR3X4M U68 ( .A(n18), .B(cs[1]), .C(n19), .Y(strt_chk_en) );
  NOR4BX2M U69 ( .AN(n21), .B(n22), .C(n19), .D(edge_cnt[5]), .Y(par_chk_en)
         );
  NAND3BX2M U70 ( .AN(bit_cnt[1]), .B(n49), .C(bit_cnt[0]), .Y(n42) );
  NOR2BX4M U71 ( .AN(bit_cnt[3]), .B(bit_cnt[2]), .Y(n49) );
  INVX2M U72 ( .A(bit_cnt[0]), .Y(n83) );
  INVX2M U73 ( .A(prescale[0]), .Y(n88) );
  OAI211X2M U74 ( .A0(n43), .A1(n85), .B0(n80), .C0(n44), .Y(ns[1]) );
  NOR2X2M U75 ( .A(par_en), .B(n42), .Y(n43) );
  INVX2M U76 ( .A(n45), .Y(n80) );
  NOR3BX2M U77 ( .AN(n46), .B(n18), .C(strt_glitch), .Y(n45) );
  NAND3X2M U78 ( .A(n49), .B(n83), .C(bit_cnt[1]), .Y(n38) );
  INVX2M U79 ( .A(par_en), .Y(n91) );
endmodule


module parity_check ( par_typ, par_chk_en, par_err, sampled_bit, clk, rst_n, 
        p_data, prescale );
  input [7:0] p_data;
  input [5:0] prescale;
  input par_typ, par_chk_en, sampled_bit, clk, rst_n;
  output par_err;
  wire   N10, n10, n1, n2, n3, n4, n5;

  DFFRQX1M par_err_reg ( .D(N10), .CK(clk), .RN(rst_n), .Q(n10) );
  BUFX10M U3 ( .A(n10), .Y(par_err) );
  NOR2BX2M U4 ( .AN(par_chk_en), .B(n1), .Y(N10) );
  XOR3XLM U5 ( .A(p_data[4]), .B(p_data[3]), .C(n2), .Y(n1) );
  XOR3XLM U6 ( .A(n3), .B(p_data[1]), .C(n4), .Y(n2) );
  XOR3XLM U7 ( .A(p_data[7]), .B(p_data[6]), .C(n5), .Y(n4) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(par_typ), .Y(n5) );
  XOR3XLM U9 ( .A(p_data[5]), .B(p_data[2]), .C(p_data[0]), .Y(n3) );
endmodule


module start_check ( strt_chk_en, strt_glitch, clk, rst_n, sampled_bit );
  input strt_chk_en, clk, rst_n, sampled_bit;
  output strt_glitch;
  wire   n1;

  DFFRQX2M strt_glitch_reg ( .D(n1), .CK(clk), .RN(rst_n), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n1) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, clk, rst_n, stp_err, p_data );
  input [7:0] p_data;
  input stp_chk_en, sampled_bit, clk, rst_n;
  output stp_err;
  wire   n2, n7, n6;

  DFFRQX1M stp_err_reg ( .D(n2), .CK(clk), .RN(rst_n), .Q(n7) );
  BUFX10M U2 ( .A(n7), .Y(stp_err) );
  OAI2BB2X1M U3 ( .B0(sampled_bit), .B1(n6), .A0N(n6), .A1N(stp_err), .Y(n2)
         );
  INVX2M U4 ( .A(stp_chk_en), .Y(n6) );
endmodule


module Deserializer ( sampled_bit, deser_en, clk, rst_n, p_data, edge_cnt, 
        prescale );
  output [7:0] p_data;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input sampled_bit, deser_en, clk, rst_n;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58;

  DFFRQX2M p_data_reg_0_ ( .D(n10), .CK(clk), .RN(n48), .Q(p_data[0]) );
  DFFRQX2M p_data_reg_4_ ( .D(n14), .CK(clk), .RN(n48), .Q(p_data[4]) );
  DFFRQX2M p_data_reg_7_ ( .D(n17), .CK(clk), .RN(n48), .Q(p_data[7]) );
  DFFRQX2M p_data_reg_1_ ( .D(n11), .CK(clk), .RN(n48), .Q(p_data[1]) );
  DFFRQX2M p_data_reg_3_ ( .D(n13), .CK(clk), .RN(n48), .Q(p_data[3]) );
  DFFRQX2M p_data_reg_6_ ( .D(n16), .CK(clk), .RN(n48), .Q(p_data[6]) );
  DFFRQX2M p_data_reg_5_ ( .D(n15), .CK(clk), .RN(n48), .Q(p_data[5]) );
  DFFRQX2M p_data_reg_2_ ( .D(n12), .CK(clk), .RN(n48), .Q(p_data[2]) );
  OAI21X2M U3 ( .A0(prescale[4]), .A1(n26), .B0(prescale[5]), .Y(n28) );
  XOR2X1M U4 ( .A(n28), .B(edge_cnt[5]), .Y(n27) );
  XNOR2X1M U5 ( .A(prescale[0]), .B(edge_cnt[0]), .Y(n23) );
  XNOR2X1M U6 ( .A(n31), .B(edge_cnt[2]), .Y(n46) );
  NOR2X4M U7 ( .A(prescale[2]), .B(prescale[1]), .Y(n30) );
  NOR4BX1M U8 ( .AN(n46), .B(n20), .C(n21), .D(n22), .Y(n18) );
  INVX4M U9 ( .A(n49), .Y(n48) );
  INVX2M U10 ( .A(rst_n), .Y(n49) );
  INVX4M U11 ( .A(n47), .Y(n50) );
  OAI22X1M U12 ( .A0(n47), .A1(n57), .B0(n50), .B1(n53), .Y(n13) );
  OAI22X1M U13 ( .A0(n47), .A1(n55), .B0(n50), .B1(n54), .Y(n11) );
  OAI22X1M U14 ( .A0(n47), .A1(n54), .B0(n50), .B1(n57), .Y(n12) );
  OAI22X1M U15 ( .A0(n47), .A1(n53), .B0(n50), .B1(n52), .Y(n14) );
  OAI22X1M U16 ( .A0(n47), .A1(n52), .B0(n50), .B1(n51), .Y(n15) );
  OAI22X1M U17 ( .A0(n47), .A1(n51), .B0(n50), .B1(n56), .Y(n16) );
  NAND2X2M U18 ( .A(n30), .B(n58), .Y(n26) );
  OAI21X2M U19 ( .A0(n30), .A1(n58), .B0(n26), .Y(n29) );
  OAI2BB2X1M U20 ( .B0(n47), .B1(n56), .A0N(sampled_bit), .A1N(n47), .Y(n17)
         );
  OAI31X2M U21 ( .A0(n26), .A1(prescale[5]), .A2(prescale[4]), .B0(n27), .Y(
        n21) );
  CLKINVX2M U22 ( .A(prescale[3]), .Y(n58) );
  OAI2BB2X1M U23 ( .B0(n50), .B1(n55), .A0N(n50), .A1N(p_data[0]), .Y(n10) );
  CLKBUFX6M U24 ( .A(n18), .Y(n47) );
  CLKXOR2X2M U25 ( .A(n29), .B(edge_cnt[3]), .Y(n20) );
  NAND4X2M U26 ( .A(n23), .B(n24), .C(deser_en), .D(n25), .Y(n22) );
  XOR2X1M U27 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n25) );
  XOR3XLM U28 ( .A(prescale[4]), .B(edge_cnt[4]), .C(n26), .Y(n24) );
  AO21XLM U29 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n30), .Y(n31) );
  INVX2M U30 ( .A(p_data[7]), .Y(n56) );
  INVX2M U31 ( .A(p_data[1]), .Y(n55) );
  INVX2M U32 ( .A(p_data[2]), .Y(n54) );
  INVX2M U33 ( .A(p_data[6]), .Y(n51) );
  INVX2M U34 ( .A(p_data[3]), .Y(n57) );
  INVX2M U35 ( .A(p_data[4]), .Y(n53) );
  INVX2M U36 ( .A(p_data[5]), .Y(n52) );
endmodule


module data_sampling ( data_samp_en, edge_cnt, rx_in, clk, prescale, 
        sampled_bit, rst_n );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input data_samp_en, rx_in, clk, rst_n;
  output sampled_bit;
  wire   sample1, sample2, sample3, n17, n18, n19, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n41, n42, n43, n44;

  DFFRQX2M sample2_reg ( .D(n17), .CK(clk), .RN(n41), .Q(sample2) );
  DFFRQX2M sample1_reg ( .D(n19), .CK(clk), .RN(n41), .Q(sample1) );
  DFFRQX1M sample3_reg ( .D(n18), .CK(clk), .RN(n41), .Q(sample3) );
  OAI2BB1X2M U3 ( .A0N(sample1), .A1N(sample2), .B0(n4), .Y(sampled_bit) );
  CLKINVX1M U4 ( .A(edge_cnt[5]), .Y(n42) );
  CLKXOR2X2M U5 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n14) );
  BUFX2M U6 ( .A(rst_n), .Y(n41) );
  INVX2M U7 ( .A(data_samp_en), .Y(n43) );
  OAI2BB2X1M U8 ( .B0(n44), .B1(n23), .A0N(n23), .A1N(sample3), .Y(n18) );
  NAND4BX2M U9 ( .AN(n8), .B(data_samp_en), .C(n24), .D(n25), .Y(n23) );
  AOI2BB2X2M U10 ( .B0(edge_cnt[1]), .B1(prescale[2]), .A0N(n30), .A1N(n31), 
        .Y(n24) );
  AOI221X2M U11 ( .A0(n26), .A1(n27), .B0(n14), .B1(n22), .C0(n28), .Y(n25) );
  OAI2BB2X1M U12 ( .B0(n5), .B1(n44), .A0N(n5), .A1N(sample1), .Y(n19) );
  NAND4BX2M U13 ( .AN(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  CLKXOR2X2M U14 ( .A(prescale[1]), .B(n21), .Y(n7) );
  OAI31X2M U15 ( .A0(prescale[4]), .A1(prescale[5]), .A2(n13), .B0(n42), .Y(n6) );
  OAI2BB2X1M U16 ( .B0(n44), .B1(n32), .A0N(n32), .A1N(sample2), .Y(n17) );
  NAND4BBX2M U17 ( .AN(n8), .BN(n26), .C(n33), .D(n30), .Y(n32) );
  NOR4X2M U18 ( .A(edge_cnt[5]), .B(n21), .C(n43), .D(n14), .Y(n33) );
  INVX2M U19 ( .A(rx_in), .Y(n44) );
  NOR4X2M U20 ( .A(n10), .B(n11), .C(n43), .D(n12), .Y(n9) );
  XNOR2X2M U21 ( .A(edge_cnt[4]), .B(n15), .Y(n11) );
  XNOR2X2M U22 ( .A(n13), .B(n14), .Y(n12) );
  CLKXOR2X2M U23 ( .A(n16), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U24 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n26) );
  XNOR2X4M U25 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n30) );
  OAI21X1M U26 ( .A0(prescale[4]), .A1(n13), .B0(prescale[5]), .Y(n15) );
  NOR2X2M U27 ( .A(n22), .B(prescale[4]), .Y(n31) );
  OAI211X2M U28 ( .A0(prescale[2]), .A1(n26), .B0(n29), .C0(n42), .Y(n28) );
  OAI2B1X1M U29 ( .A1N(prescale[5]), .A0(n30), .B0(n31), .Y(n29) );
  OAI21X1M U30 ( .A0(prescale[3]), .A1(n14), .B0(edge_cnt[1]), .Y(n27) );
  OR2X2M U31 ( .A(n22), .B(prescale[1]), .Y(n13) );
  OR2X2M U32 ( .A(prescale[3]), .B(prescale[2]), .Y(n22) );
  NAND2X2M U33 ( .A(n13), .B(n20), .Y(n16) );
  OAI21X1M U34 ( .A0(prescale[1]), .A1(prescale[2]), .B0(prescale[3]), .Y(n20)
         );
  CLKXOR2X2M U35 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n8) );
  CLKXOR2X2M U36 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n21) );
  OAI21X2M U37 ( .A0(sample1), .A1(sample2), .B0(sample3), .Y(n4) );
endmodule


module edge_bit_counter ( bit_cnt, enable, clk, rst_n, edge_cnt, prescale );
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input [5:0] prescale;
  input enable, clk, rst_n;
  wire   n84, N8, N9, N10, N11, N32, N33, N34, N35, N36, N37, n18, n20, n21,
         n83, n86, n85, n87, n12, n13, n14, n15, n16, n17, n19, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n61, n63, n65, n67, n69, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82;
  wire   [5:2] add_18_carry;

  DFFRQX2M bit_cnt_reg_3_ ( .D(n18), .CK(clk), .RN(n71), .Q(bit_cnt[3]) );
  ADDHX1M U59 ( .A(edge_cnt[3]), .B(add_18_carry[3]), .CO(add_18_carry[4]), 
        .S(N10) );
  ADDHX1M U60 ( .A(edge_cnt[4]), .B(add_18_carry[4]), .CO(add_18_carry[5]), 
        .S(N11) );
  ADDHX1M U58 ( .A(edge_cnt[2]), .B(add_18_carry[2]), .CO(add_18_carry[3]), 
        .S(N9) );
  ADDHX1M U57 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(add_18_carry[2]), .S(N8)
         );
  DFFRQX1M bit_cnt_reg_0_ ( .D(n21), .CK(clk), .RN(n71), .Q(n84) );
  DFFRQX1M bit_cnt_reg_2_ ( .D(n73), .CK(clk), .RN(n71), .Q(n83) );
  DFFRQX1M edge_cnt_reg_1_ ( .D(N33), .CK(clk), .RN(n71), .Q(n87) );
  DFFRQX4M edge_cnt_reg_5_ ( .D(N37), .CK(clk), .RN(n71), .Q(edge_cnt[5]) );
  DFFRQX1M edge_cnt_reg_4_ ( .D(N36), .CK(clk), .RN(n71), .Q(n85) );
  DFFRQX1M edge_cnt_reg_3_ ( .D(N35), .CK(clk), .RN(n71), .Q(n86) );
  DFFRQX4M bit_cnt_reg_1_ ( .D(n20), .CK(clk), .RN(n71), .Q(bit_cnt[1]) );
  DFFRHQX8M edge_cnt_reg_2_ ( .D(N34), .CK(clk), .RN(n71), .Q(edge_cnt[2]) );
  DFFRHQX8M edge_cnt_reg_0_ ( .D(N32), .CK(clk), .RN(n71), .Q(edge_cnt[0]) );
  INVX2M U3 ( .A(n61), .Y(bit_cnt[2]) );
  INVX2M U4 ( .A(n83), .Y(n61) );
  XNOR2X2M U5 ( .A(edge_cnt[1]), .B(prescale[1]), .Y(n36) );
  INVX4M U6 ( .A(n67), .Y(edge_cnt[4]) );
  INVXLM U7 ( .A(n84), .Y(n63) );
  INVX4M U8 ( .A(n63), .Y(bit_cnt[0]) );
  INVXLM U9 ( .A(n86), .Y(n65) );
  INVX4M U10 ( .A(n65), .Y(edge_cnt[3]) );
  INVXLM U11 ( .A(n85), .Y(n67) );
  NOR2X2M U12 ( .A(prescale[1]), .B(prescale[0]), .Y(n41) );
  NOR2X1M U13 ( .A(edge_cnt[0]), .B(n37), .Y(n34) );
  NOR2BX1M U14 ( .AN(edge_cnt[0]), .B(n36), .Y(n35) );
  XNOR2X1M U15 ( .A(edge_cnt[2]), .B(n40), .Y(n25) );
  INVXLM U16 ( .A(n87), .Y(n69) );
  INVX6M U17 ( .A(n69), .Y(edge_cnt[1]) );
  NOR2X3M U18 ( .A(n32), .B(prescale[3]), .Y(n33) );
  NOR2X4M U19 ( .A(n78), .B(n23), .Y(n12) );
  INVX6M U20 ( .A(n72), .Y(n71) );
  INVX2M U21 ( .A(rst_n), .Y(n72) );
  INVX4M U22 ( .A(n12), .Y(n74) );
  CLKINVX2M U23 ( .A(enable), .Y(n78) );
  NOR3X4M U24 ( .A(n77), .B(n78), .C(n76), .Y(n16) );
  AOI21X2M U25 ( .A0(n77), .A1(enable), .B0(n12), .Y(n13) );
  OAI21X2M U26 ( .A0(n33), .A1(n80), .B0(n38), .Y(n39) );
  NAND2X2M U27 ( .A(n33), .B(n80), .Y(n38) );
  NAND2X2M U28 ( .A(n41), .B(n81), .Y(n32) );
  OAI21X2M U29 ( .A0(n41), .A1(n81), .B0(n32), .Y(n40) );
  NOR2BX2M U30 ( .AN(N10), .B(n74), .Y(N35) );
  NOR2BX2M U31 ( .AN(N11), .B(n74), .Y(N36) );
  NOR2BX2M U32 ( .AN(N9), .B(n74), .Y(N34) );
  NOR2BX2M U33 ( .AN(N8), .B(n74), .Y(N33) );
  OAI32X2M U34 ( .A0(n78), .A1(bit_cnt[0]), .A2(n12), .B0(n74), .B1(n77), .Y(
        n21) );
  AOI211X2M U35 ( .A0(n79), .A1(n82), .B0(n29), .C0(n30), .Y(n28) );
  INVX2M U36 ( .A(prescale[5]), .Y(n82) );
  OAI2B2X1M U37 ( .A1N(prescale[0]), .A0(n34), .B0(prescale[0]), .B1(n35), .Y(
        n29) );
  INVX2M U38 ( .A(n38), .Y(n79) );
  OAI21X2M U39 ( .A0(bit_cnt[1]), .A1(n78), .B0(n13), .Y(n17) );
  OAI21X2M U40 ( .A0(n13), .A1(n76), .B0(n14), .Y(n20) );
  NAND4X1M U41 ( .A(bit_cnt[0]), .B(enable), .C(n74), .D(n76), .Y(n14) );
  OAI21X2M U42 ( .A0(n19), .A1(n75), .B0(n22), .Y(n18) );
  NAND4X2M U43 ( .A(n23), .B(bit_cnt[2]), .C(n16), .D(n75), .Y(n22) );
  AOI21X1M U44 ( .A0(enable), .A1(n61), .B0(n17), .Y(n19) );
  INVX2M U45 ( .A(bit_cnt[3]), .Y(n75) );
  CLKINVX2M U46 ( .A(prescale[4]), .Y(n80) );
  INVX2M U47 ( .A(prescale[2]), .Y(n81) );
  XNOR2X2M U48 ( .A(edge_cnt[3]), .B(n31), .Y(n30) );
  AOI21X1M U49 ( .A0(prescale[3]), .A1(n32), .B0(n33), .Y(n31) );
  AND4X2M U50 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n23) );
  XOR3XLM U51 ( .A(prescale[5]), .B(edge_cnt[5]), .C(n38), .Y(n27) );
  XNOR2X2M U52 ( .A(edge_cnt[4]), .B(n39), .Y(n26) );
  XOR2X1M U53 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n37) );
  INVX2M U54 ( .A(n15), .Y(n73) );
  AOI32X1M U55 ( .A0(n16), .A1(n61), .A2(n74), .B0(n17), .B1(bit_cnt[2]), .Y(
        n15) );
  NOR2X2M U56 ( .A(edge_cnt[0]), .B(n74), .Y(N32) );
  NOR2X2M U61 ( .A(n24), .B(n74), .Y(N37) );
  XNOR2X2M U62 ( .A(edge_cnt[5]), .B(add_18_carry[5]), .Y(n24) );
  INVX2M U63 ( .A(bit_cnt[0]), .Y(n77) );
  INVX2M U64 ( .A(bit_cnt[1]), .Y(n76) );
endmodule


module uart_rx_top ( rx_in, clk, rst_n, prescale, par_en, par_typ, p_data, 
        par_err, stp_err, data_valid );
  input [5:0] prescale;
  output [7:0] p_data;
  input rx_in, clk, rst_n, par_en, par_typ;
  output par_err, stp_err, data_valid;
  wire   data_samp_en, enable, par_chk_en, strt_chk_en, stp_chk_en, deser_en,
         strt_glitch, sampled_bit, n3, n4;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  uart_rx_fsm uart_rx_fsm_inst ( .rx_in(rx_in), .clk(clk), .rst_n(n3), 
        .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), .par_en(par_en), .strt_glitch(
        strt_glitch), .stp_err(stp_err), .par_err(par_err), .prescale(prescale), .data_samp_en(data_samp_en), .enable(enable), .par_chk_en(par_chk_en), 
        .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), .deser_en(deser_en), .data_valid(data_valid) );
  parity_check parity_check_inst ( .par_typ(par_typ), .par_chk_en(par_chk_en), 
        .par_err(par_err), .sampled_bit(sampled_bit), .clk(clk), .rst_n(n3), 
        .p_data(p_data), .prescale({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}) );
  start_check start_check_inst ( .strt_chk_en(strt_chk_en), .strt_glitch(
        strt_glitch), .clk(clk), .rst_n(n3), .sampled_bit(sampled_bit) );
  stop_check stop_check_inst ( .stp_chk_en(stp_chk_en), .sampled_bit(
        sampled_bit), .clk(clk), .rst_n(n3), .stp_err(stp_err), .p_data(p_data) );
  Deserializer deserializer_inst ( .sampled_bit(sampled_bit), .deser_en(
        deser_en), .clk(clk), .rst_n(n3), .p_data(p_data), .edge_cnt(edge_cnt), 
        .prescale(prescale) );
  data_sampling data_sampling_rx_inst ( .data_samp_en(data_samp_en), 
        .edge_cnt(edge_cnt), .rx_in(rx_in), .clk(clk), .prescale(prescale), 
        .sampled_bit(sampled_bit), .rst_n(n3) );
  edge_bit_counter edge_bit_counter_inst ( .bit_cnt(bit_cnt), .enable(enable), 
        .clk(clk), .rst_n(n3), .edge_cnt(edge_cnt), .prescale(prescale) );
  INVX4M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(rst_n), .Y(n4) );
endmodule


module UART_DATA_WIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, 
        TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, 
        parity_type, parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n3, n4;

  uart_top U0_UART_TX ( .p_data(TX_IN_P), .data_valid(TX_IN_V), .par_en(
        parity_enable), .par_type(parity_type), .clk(TX_CLK), .rst_n(n3), 
        .tx_out(TX_OUT_S), .busy(TX_OUT_V) );
  uart_rx_top U0_UART_RX ( .rx_in(RX_IN_S), .clk(RX_CLK), .rst_n(n3), 
        .prescale(Prescale), .par_en(parity_enable), .par_typ(parity_type), 
        .p_data(RX_OUT_P), .par_err(parity_error), .stp_err(framing_error), 
        .data_valid(RX_OUT_V) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(RST), .Y(n4) );
endmodule


module sys_ctrl ( clk, rst, alu_out, out_valid, alu_fun, en, clk_en, address, 
        wr_en, rd_en, wr_data, rd_data, rd_data_valid, rx_p_data, rx_d_valid, 
        tx_p_data, tx_d_valid, clk_div_en );
  input [15:0] alu_out;
  output [3:0] alu_fun;
  output [3:0] address;
  output [7:0] wr_data;
  input [7:0] rd_data;
  input [7:0] rx_p_data;
  output [7:0] tx_p_data;
  input clk, rst, out_valid, rd_data_valid, rx_d_valid;
  output en, clk_en, wr_en, rd_en, tx_d_valid, clk_div_en;
  wire   n69, n70, n71, n72, n73, n74, n75, n76, n35, n39, n33, n34, n36, n37,
         n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n77, n78, n79, n80, n81, n82, n83, n84, n85, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123;
  wire   [3:0] cs;

  NOR4BX4M U45 ( .AN(n67), .B(n119), .C(n120), .D(n123), .Y(n64) );
  AOI31X4M U60 ( .A0(cs[2]), .A1(n114), .A2(n79), .B0(n50), .Y(n63) );
  AOI31X4M U65 ( .A0(cs[2]), .A1(cs[1]), .A2(n79), .B0(n100), .Y(n68) );
  OAI22X8M U67 ( .A0(n84), .A1(n108), .B0(n85), .B1(n119), .Y(address[3]) );
  OAI22X8M U68 ( .A0(n84), .A1(n109), .B0(n85), .B1(n123), .Y(address[2]) );
  OAI221X4M U70 ( .A0(n85), .A1(n121), .B0(n84), .B1(n111), .C0(n101), .Y(
        address[0]) );
  AOI2B1X8M U72 ( .A1N(n83), .A0(n113), .B0(n96), .Y(n84) );
  DFFRX1M addr_stored_reg_reg_3_ ( .D(n72), .CK(clk), .RN(rst), .QN(n108) );
  DFFRX1M addr_stored_reg_reg_2_ ( .D(n71), .CK(clk), .RN(rst), .QN(n109) );
  DFFRX1M addr_stored_reg_reg_1_ ( .D(n70), .CK(clk), .RN(rst), .QN(n110) );
  DFFRX1M addr_stored_reg_reg_0_ ( .D(n69), .CK(clk), .RN(rst), .QN(n111) );
  DFFRX4M cs_reg_2_ ( .D(n74), .CK(clk), .RN(rst), .Q(cs[2]), .QN(n113) );
  DFFRX4M cs_reg_3_ ( .D(n73), .CK(clk), .RN(rst), .Q(n107), .QN(n39) );
  DFFRX2M cs_reg_1_ ( .D(n75), .CK(clk), .RN(rst), .Q(cs[1]), .QN(n114) );
  DFFRX2M cs_reg_0_ ( .D(n76), .CK(clk), .RN(rst), .Q(n112), .QN(n35) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI22X4M U5 ( .A0(n84), .A1(n110), .B0(n85), .B1(n118), .Y(address[1]) );
  NAND4X2M U6 ( .A(out_valid), .B(n65), .C(n112), .D(n107), .Y(n45) );
  OAI222X1M U7 ( .A0(out_valid), .A1(n46), .B0(rx_d_valid), .B1(n77), .C0(
        rd_data_valid), .C1(n78), .Y(n48) );
  NOR2X6M U8 ( .A(n107), .B(n35), .Y(n79) );
  BUFX4M U9 ( .A(n68), .Y(n94) );
  NOR2X3M U10 ( .A(n68), .B(n118), .Y(alu_fun[1]) );
  BUFX4M U11 ( .A(n48), .Y(n95) );
  NOR2X6M U12 ( .A(n94), .B(n121), .Y(alu_fun[0]) );
  NOR2X6M U13 ( .A(n68), .B(n119), .Y(alu_fun[3]) );
  NAND2X2M U14 ( .A(n94), .B(n45), .Y(en) );
  NAND2X2M U15 ( .A(n63), .B(n83), .Y(wr_en) );
  OAI21X2M U16 ( .A0(n62), .A1(n52), .B0(n63), .Y(n58) );
  INVX2M U17 ( .A(n80), .Y(n106) );
  INVX2M U18 ( .A(rx_p_data[1]), .Y(n118) );
  NAND3X2M U19 ( .A(cs[1]), .B(n113), .C(n79), .Y(n81) );
  INVX2M U20 ( .A(rx_p_data[6]), .Y(n120) );
  NOR2X6M U21 ( .A(rd_en), .B(n59), .Y(n85) );
  INVX4M U22 ( .A(wr_en), .Y(n103) );
  INVX2M U23 ( .A(n62), .Y(n104) );
  INVX2M U24 ( .A(n46), .Y(n100) );
  NOR2X8M U25 ( .A(n94), .B(n123), .Y(alu_fun[2]) );
  NOR2X4M U26 ( .A(n107), .B(n112), .Y(n66) );
  INVX2M U27 ( .A(n50), .Y(n101) );
  CLKINVX2M U28 ( .A(n95), .Y(n99) );
  OAI22X1M U29 ( .A0(n99), .A1(n114), .B0(n57), .B1(n95), .Y(n75) );
  AOI211X2M U30 ( .A0(n117), .A1(n104), .B0(n58), .C0(n59), .Y(n57) );
  INVX2M U31 ( .A(n54), .Y(n117) );
  OAI22X1M U32 ( .A0(n99), .A1(n113), .B0(n61), .B1(n95), .Y(n74) );
  AOI211X2M U33 ( .A0(n115), .A1(n104), .B0(n58), .C0(rd_en), .Y(n61) );
  INVX2M U34 ( .A(n53), .Y(n115) );
  NOR2X4M U35 ( .A(n83), .B(n113), .Y(n50) );
  OR3X2M U36 ( .A(n96), .B(n97), .C(n98), .Y(tx_d_valid) );
  INVX4M U37 ( .A(n45), .Y(n98) );
  AND2X2M U38 ( .A(n65), .B(n79), .Y(n59) );
  INVX2M U39 ( .A(n81), .Y(rd_en) );
  NOR2X2M U40 ( .A(n103), .B(n119), .Y(wr_data[3]) );
  NOR2X2M U41 ( .A(n103), .B(n120), .Y(wr_data[6]) );
  NOR2X2M U42 ( .A(n103), .B(n123), .Y(wr_data[2]) );
  NOR2X2M U43 ( .A(n103), .B(n122), .Y(wr_data[4]) );
  NOR2X2M U44 ( .A(n103), .B(n121), .Y(wr_data[0]) );
  NOR2X2M U46 ( .A(n103), .B(n116), .Y(wr_data[7]) );
  NOR2X2M U47 ( .A(n103), .B(n118), .Y(wr_data[1]) );
  NAND4X2M U48 ( .A(n81), .B(n103), .C(n78), .D(n82), .Y(clk_en) );
  AOI21BX1M U49 ( .A0(n65), .A1(n107), .B0N(n94), .Y(n82) );
  OAI22X1M U50 ( .A0(n106), .A1(n109), .B0(n123), .B1(n80), .Y(n71) );
  OAI22X1M U51 ( .A0(n106), .A1(n111), .B0(n121), .B1(n80), .Y(n69) );
  OAI22X1M U52 ( .A0(n106), .A1(n110), .B0(n118), .B1(n80), .Y(n70) );
  OAI22X1M U53 ( .A0(n106), .A1(n108), .B0(n119), .B1(n80), .Y(n72) );
  NAND3X2M U54 ( .A(n121), .B(n122), .C(n64), .Y(n53) );
  NAND2X2M U55 ( .A(n65), .B(n66), .Y(n62) );
  NOR2X6M U56 ( .A(cs[2]), .B(cs[1]), .Y(n65) );
  NAND3X2M U57 ( .A(n35), .B(n107), .C(n65), .Y(n46) );
  INVX4M U58 ( .A(rx_p_data[2]), .Y(n123) );
  INVX4M U59 ( .A(rx_p_data[0]), .Y(n121) );
  INVX4M U61 ( .A(rx_p_data[3]), .Y(n119) );
  NAND3X2M U62 ( .A(n66), .B(n114), .C(cs[2]), .Y(n78) );
  CLKBUFX6M U63 ( .A(n33), .Y(n96) );
  NOR2BX2M U64 ( .AN(rd_data_valid), .B(n78), .Y(n33) );
  AOI211X2M U66 ( .A0(n39), .A1(n113), .B0(n102), .C0(n79), .Y(n77) );
  INVX2M U69 ( .A(n63), .Y(n102) );
  OAI22X1M U71 ( .A0(n39), .A1(n99), .B0(n94), .B1(n95), .Y(n73) );
  OAI22X1M U73 ( .A0(n35), .A1(n99), .B0(n47), .B1(n95), .Y(n76) );
  AOI211X2M U74 ( .A0(n104), .A1(n49), .B0(n50), .C0(n100), .Y(n47) );
  NAND4X2M U75 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n49) );
  NAND4X2M U76 ( .A(n122), .B(n120), .C(n123), .D(n55), .Y(n51) );
  NAND2X2M U77 ( .A(cs[1]), .B(n66), .Y(n83) );
  CLKBUFX6M U78 ( .A(n36), .Y(n97) );
  NOR2BX2M U79 ( .AN(out_valid), .B(n46), .Y(n36) );
  NOR3X2M U80 ( .A(n116), .B(rx_p_data[5]), .C(rx_p_data[1]), .Y(n67) );
  NOR2BX2M U81 ( .AN(rx_p_data[5]), .B(n103), .Y(wr_data[5]) );
  NAND3X2M U82 ( .A(rx_p_data[0]), .B(rx_p_data[4]), .C(n64), .Y(n52) );
  OAI2BB1X2M U83 ( .A0N(rd_data[0]), .A1N(n96), .B0(n44), .Y(tx_p_data[0]) );
  AOI22X1M U84 ( .A0(alu_out[0]), .A1(n97), .B0(alu_out[8]), .B1(n98), .Y(n44)
         );
  OAI2BB1X2M U85 ( .A0N(rd_data[1]), .A1N(n96), .B0(n43), .Y(tx_p_data[1]) );
  AOI22X1M U86 ( .A0(alu_out[1]), .A1(n97), .B0(alu_out[9]), .B1(n98), .Y(n43)
         );
  OAI2BB1X2M U87 ( .A0N(rd_data[2]), .A1N(n96), .B0(n42), .Y(tx_p_data[2]) );
  AOI22X1M U88 ( .A0(alu_out[2]), .A1(n97), .B0(alu_out[10]), .B1(n98), .Y(n42) );
  OAI2BB1X2M U89 ( .A0N(rd_data[3]), .A1N(n96), .B0(n41), .Y(tx_p_data[3]) );
  AOI22X1M U90 ( .A0(alu_out[3]), .A1(n97), .B0(alu_out[11]), .B1(n98), .Y(n41) );
  OAI2BB1X2M U91 ( .A0N(rd_data[4]), .A1N(n96), .B0(n40), .Y(tx_p_data[4]) );
  AOI22X1M U92 ( .A0(alu_out[4]), .A1(n97), .B0(alu_out[12]), .B1(n98), .Y(n40) );
  OAI2BB1X2M U93 ( .A0N(rd_data[5]), .A1N(n96), .B0(n38), .Y(tx_p_data[5]) );
  AOI22X1M U94 ( .A0(alu_out[5]), .A1(n97), .B0(alu_out[13]), .B1(n98), .Y(n38) );
  OAI2BB1X2M U95 ( .A0N(rd_data[6]), .A1N(n96), .B0(n37), .Y(tx_p_data[6]) );
  AOI22X1M U96 ( .A0(alu_out[6]), .A1(n97), .B0(alu_out[14]), .B1(n98), .Y(n37) );
  OAI2BB1X2M U97 ( .A0N(rd_data[7]), .A1N(n96), .B0(n34), .Y(tx_p_data[7]) );
  AOI22X1M U98 ( .A0(alu_out[7]), .A1(n97), .B0(alu_out[15]), .B1(n98), .Y(n34) );
  INVX2M U99 ( .A(rx_p_data[7]), .Y(n116) );
  NAND2X4M U100 ( .A(rx_d_valid), .B(n59), .Y(n80) );
  NAND4X2M U101 ( .A(rx_p_data[1]), .B(rx_p_data[3]), .C(rx_p_data[5]), .D(
        rx_p_data[7]), .Y(n56) );
  NAND4X2M U102 ( .A(n123), .B(n120), .C(rx_p_data[4]), .D(n60), .Y(n54) );
  NOR2X2M U103 ( .A(n121), .B(n56), .Y(n60) );
  INVX2M U104 ( .A(rx_p_data[4]), .Y(n122) );
  NOR2X2M U105 ( .A(rx_p_data[0]), .B(n56), .Y(n55) );
endmodule


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, RdData_VLD, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
  wire   regArr_11__7_, regArr_11__6_, regArr_11__5_, regArr_11__4_,
         regArr_11__3_, regArr_11__2_, regArr_11__1_, regArr_11__0_,
         regArr_10__7_, regArr_10__6_, regArr_10__5_, regArr_10__4_,
         regArr_10__3_, regArr_10__2_, regArr_10__1_, regArr_10__0_,
         regArr_9__7_, regArr_9__6_, regArr_9__5_, regArr_9__4_, regArr_9__3_,
         regArr_9__2_, regArr_9__1_, regArr_9__0_, regArr_8__7_, regArr_8__6_,
         regArr_8__5_, regArr_8__4_, regArr_8__3_, regArr_8__2_, regArr_8__1_,
         regArr_8__0_, regArr_7__7_, regArr_7__6_, regArr_7__5_, regArr_7__4_,
         regArr_7__3_, regArr_7__2_, regArr_7__1_, regArr_7__0_, regArr_6__7_,
         regArr_6__6_, regArr_6__5_, regArr_6__4_, regArr_6__3_, regArr_6__2_,
         regArr_6__1_, regArr_6__0_, regArr_5__7_, regArr_5__6_, regArr_5__5_,
         regArr_5__4_, regArr_5__3_, regArr_5__2_, regArr_5__1_, regArr_5__0_,
         regArr_4__7_, regArr_4__6_, regArr_4__5_, regArr_4__4_, regArr_4__3_,
         regArr_4__2_, regArr_4__1_, regArr_4__0_, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n472,
         n225, n226, n227, n228, n229, n230, n232, n233, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n246, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n335, n334, n336, n337, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471;

  DFFRX1M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n371), .Q(RdData_VLD), .QN(
        n335) );
  DFFSX1M regArr_reg_2__7_ ( .D(n72), .CK(CLK), .SN(RST), .Q(n472), .QN(n440)
         );
  DFFSX1M regArr_reg_3__5_ ( .D(n78), .CK(CLK), .SN(RST), .Q(REG3[5]), .QN(
        n427) );
  DFFRX1M regArr_reg_6__7_ ( .D(n104), .CK(CLK), .RN(n375), .Q(regArr_6__7_)
         );
  DFFRX1M regArr_reg_6__6_ ( .D(n103), .CK(CLK), .RN(n375), .Q(regArr_6__6_)
         );
  DFFRX1M regArr_reg_6__5_ ( .D(n102), .CK(CLK), .RN(n375), .Q(regArr_6__5_)
         );
  DFFRX1M regArr_reg_6__4_ ( .D(n101), .CK(CLK), .RN(n375), .Q(regArr_6__4_)
         );
  DFFRX1M regArr_reg_6__3_ ( .D(n100), .CK(CLK), .RN(n375), .Q(regArr_6__3_)
         );
  DFFRX1M regArr_reg_6__2_ ( .D(n99), .CK(CLK), .RN(n375), .Q(regArr_6__2_) );
  DFFRX1M regArr_reg_6__1_ ( .D(n98), .CK(CLK), .RN(n375), .Q(regArr_6__1_) );
  DFFRX1M regArr_reg_6__0_ ( .D(n97), .CK(CLK), .RN(n375), .Q(regArr_6__0_) );
  DFFRX1M regArr_reg_10__7_ ( .D(n136), .CK(CLK), .RN(n376), .Q(regArr_10__7_)
         );
  DFFRX1M regArr_reg_10__6_ ( .D(n135), .CK(CLK), .RN(n376), .Q(regArr_10__6_)
         );
  DFFRX1M regArr_reg_10__5_ ( .D(n134), .CK(CLK), .RN(n376), .Q(regArr_10__5_)
         );
  DFFRX1M regArr_reg_10__4_ ( .D(n133), .CK(CLK), .RN(n376), .Q(regArr_10__4_)
         );
  DFFRX1M regArr_reg_10__3_ ( .D(n132), .CK(CLK), .RN(n376), .Q(regArr_10__3_)
         );
  DFFRX1M regArr_reg_10__2_ ( .D(n131), .CK(CLK), .RN(n376), .Q(regArr_10__2_)
         );
  DFFRX1M regArr_reg_10__1_ ( .D(n130), .CK(CLK), .RN(n376), .Q(regArr_10__1_)
         );
  DFFRX1M regArr_reg_10__0_ ( .D(n129), .CK(CLK), .RN(n376), .Q(regArr_10__0_)
         );
  DFFRX1M regArr_reg_8__7_ ( .D(n120), .CK(CLK), .RN(n374), .Q(regArr_8__7_)
         );
  DFFRX1M regArr_reg_8__6_ ( .D(n119), .CK(CLK), .RN(n374), .Q(regArr_8__6_)
         );
  DFFRX1M regArr_reg_8__5_ ( .D(n118), .CK(CLK), .RN(n374), .Q(regArr_8__5_)
         );
  DFFRX1M regArr_reg_8__4_ ( .D(n117), .CK(CLK), .RN(n374), .Q(regArr_8__4_)
         );
  DFFRX1M regArr_reg_8__3_ ( .D(n116), .CK(CLK), .RN(n374), .Q(regArr_8__3_)
         );
  DFFRX1M regArr_reg_8__2_ ( .D(n115), .CK(CLK), .RN(n374), .Q(regArr_8__2_)
         );
  DFFRX1M regArr_reg_8__1_ ( .D(n114), .CK(CLK), .RN(n374), .Q(regArr_8__1_)
         );
  DFFRX1M regArr_reg_8__0_ ( .D(n113), .CK(CLK), .RN(n374), .Q(regArr_8__0_)
         );
  DFFRX1M regArr_reg_4__7_ ( .D(n88), .CK(CLK), .RN(n374), .Q(regArr_4__7_) );
  DFFRX1M regArr_reg_4__6_ ( .D(n87), .CK(CLK), .RN(n374), .Q(regArr_4__6_) );
  DFFRX1M regArr_reg_4__5_ ( .D(n86), .CK(CLK), .RN(n373), .Q(regArr_4__5_) );
  DFFRX1M regArr_reg_4__4_ ( .D(n85), .CK(CLK), .RN(n373), .Q(regArr_4__4_) );
  DFFRX1M regArr_reg_4__3_ ( .D(n84), .CK(CLK), .RN(n373), .Q(regArr_4__3_) );
  DFFRX1M regArr_reg_4__2_ ( .D(n83), .CK(CLK), .RN(n373), .Q(regArr_4__2_) );
  DFFRX1M regArr_reg_4__1_ ( .D(n82), .CK(CLK), .RN(n373), .Q(regArr_4__1_) );
  DFFRX1M regArr_reg_4__0_ ( .D(n81), .CK(CLK), .RN(n373), .Q(regArr_4__0_) );
  DFFRX1M regArr_reg_11__7_ ( .D(n144), .CK(CLK), .RN(n378), .Q(regArr_11__7_)
         );
  DFFRX1M regArr_reg_11__6_ ( .D(n143), .CK(CLK), .RN(n378), .Q(regArr_11__6_)
         );
  DFFRX1M regArr_reg_11__5_ ( .D(n142), .CK(CLK), .RN(n378), .Q(regArr_11__5_)
         );
  DFFRX1M regArr_reg_11__4_ ( .D(n141), .CK(CLK), .RN(n378), .Q(regArr_11__4_)
         );
  DFFRX1M regArr_reg_11__3_ ( .D(n140), .CK(CLK), .RN(n378), .Q(regArr_11__3_)
         );
  DFFRX1M regArr_reg_11__2_ ( .D(n139), .CK(CLK), .RN(n378), .Q(regArr_11__2_)
         );
  DFFRX1M regArr_reg_11__1_ ( .D(n138), .CK(CLK), .RN(n378), .Q(regArr_11__1_)
         );
  DFFRX1M regArr_reg_11__0_ ( .D(n137), .CK(CLK), .RN(n377), .Q(regArr_11__0_)
         );
  DFFRX1M regArr_reg_9__7_ ( .D(n128), .CK(CLK), .RN(n380), .Q(regArr_9__7_)
         );
  DFFRX1M regArr_reg_9__6_ ( .D(n127), .CK(CLK), .RN(n380), .Q(regArr_9__6_)
         );
  DFFRX1M regArr_reg_9__5_ ( .D(n126), .CK(CLK), .RN(n380), .Q(regArr_9__5_)
         );
  DFFRX1M regArr_reg_9__4_ ( .D(n125), .CK(CLK), .RN(n380), .Q(regArr_9__4_)
         );
  DFFRX1M regArr_reg_9__3_ ( .D(n124), .CK(CLK), .RN(n380), .Q(regArr_9__3_)
         );
  DFFRX1M regArr_reg_9__2_ ( .D(n123), .CK(CLK), .RN(n379), .Q(regArr_9__2_)
         );
  DFFRX1M regArr_reg_9__1_ ( .D(n122), .CK(CLK), .RN(n379), .Q(regArr_9__1_)
         );
  DFFRX1M regArr_reg_9__0_ ( .D(n121), .CK(CLK), .RN(n379), .Q(regArr_9__0_)
         );
  DFFRX1M regArr_reg_14__7_ ( .D(n168), .CK(CLK), .RN(n377), .QN(n408) );
  DFFRX1M regArr_reg_14__6_ ( .D(n167), .CK(CLK), .RN(n377), .QN(n409) );
  DFFRX1M regArr_reg_14__5_ ( .D(n166), .CK(CLK), .RN(n377), .QN(n410) );
  DFFRX1M regArr_reg_14__4_ ( .D(n165), .CK(CLK), .RN(n377), .QN(n411) );
  DFFRX1M regArr_reg_14__3_ ( .D(n164), .CK(CLK), .RN(n376), .QN(n412) );
  DFFRX1M regArr_reg_14__2_ ( .D(n163), .CK(CLK), .RN(n376), .QN(n413) );
  DFFRX1M regArr_reg_14__1_ ( .D(n162), .CK(CLK), .RN(n376), .QN(n414) );
  DFFRX1M regArr_reg_14__0_ ( .D(n161), .CK(CLK), .RN(n376), .QN(n415) );
  DFFRX1M regArr_reg_15__7_ ( .D(n176), .CK(CLK), .RN(n379), .QN(n400) );
  DFFRX1M regArr_reg_15__6_ ( .D(n175), .CK(CLK), .RN(n379), .QN(n401) );
  DFFRX1M regArr_reg_15__5_ ( .D(n174), .CK(CLK), .RN(n378), .QN(n402) );
  DFFRX1M regArr_reg_15__4_ ( .D(n173), .CK(CLK), .RN(n378), .QN(n403) );
  DFFRX1M regArr_reg_15__3_ ( .D(n172), .CK(CLK), .RN(n378), .QN(n404) );
  DFFRX1M regArr_reg_15__2_ ( .D(n171), .CK(CLK), .RN(n378), .QN(n405) );
  DFFRX1M regArr_reg_15__1_ ( .D(n170), .CK(CLK), .RN(n378), .QN(n406) );
  DFFRX1M regArr_reg_15__0_ ( .D(n169), .CK(CLK), .RN(n378), .QN(n407) );
  DFFRX1M regArr_reg_2__1_ ( .D(n66), .CK(CLK), .RN(n373), .Q(REG2[1]), .QN(
        n424) );
  DFFRX1M regArr_reg_0__7_ ( .D(n56), .CK(CLK), .RN(n372), .Q(REG0[7]), .QN(
        n435) );
  DFFRX1M regArr_reg_0__6_ ( .D(n55), .CK(CLK), .RN(n372), .Q(REG0[6]), .QN(
        n434) );
  DFFRX1M regArr_reg_0__5_ ( .D(n54), .CK(CLK), .RN(n373), .Q(REG0[5]), .QN(
        n433) );
  DFFRX1M regArr_reg_0__4_ ( .D(n53), .CK(CLK), .RN(n372), .Q(REG0[4]), .QN(
        n432) );
  DFFRX1M regArr_reg_0__3_ ( .D(n52), .CK(CLK), .RN(n373), .Q(REG0[3]), .QN(
        n431) );
  DFFRX1M regArr_reg_0__2_ ( .D(n51), .CK(CLK), .RN(n373), .Q(REG0[2]), .QN(
        n429) );
  DFFRX1M regArr_reg_0__1_ ( .D(n50), .CK(CLK), .RN(n373), .Q(REG0[1]), .QN(
        n430) );
  DFFRX1M regArr_reg_0__0_ ( .D(n49), .CK(CLK), .RN(n373), .Q(REG0[0]), .QN(
        n428) );
  DFFRX1M regArr_reg_7__7_ ( .D(n112), .CK(CLK), .RN(n377), .Q(regArr_7__7_)
         );
  DFFRX1M regArr_reg_7__6_ ( .D(n111), .CK(CLK), .RN(n377), .Q(regArr_7__6_)
         );
  DFFRX1M regArr_reg_7__5_ ( .D(n110), .CK(CLK), .RN(n377), .Q(regArr_7__5_)
         );
  DFFRX1M regArr_reg_7__4_ ( .D(n109), .CK(CLK), .RN(n377), .Q(regArr_7__4_)
         );
  DFFRX1M regArr_reg_7__3_ ( .D(n108), .CK(CLK), .RN(n377), .Q(regArr_7__3_)
         );
  DFFRX1M regArr_reg_7__2_ ( .D(n107), .CK(CLK), .RN(n377), .Q(regArr_7__2_)
         );
  DFFRX1M regArr_reg_7__1_ ( .D(n106), .CK(CLK), .RN(n377), .Q(regArr_7__1_)
         );
  DFFRX1M regArr_reg_7__0_ ( .D(n105), .CK(CLK), .RN(n377), .Q(regArr_7__0_)
         );
  DFFRX1M regArr_reg_13__7_ ( .D(n160), .CK(CLK), .RN(n380), .QN(n392) );
  DFFRX1M regArr_reg_13__6_ ( .D(n159), .CK(CLK), .RN(n380), .QN(n393) );
  DFFRX1M regArr_reg_13__5_ ( .D(n158), .CK(CLK), .RN(n380), .QN(n394) );
  DFFRX1M regArr_reg_13__4_ ( .D(n157), .CK(CLK), .RN(n380), .QN(n395) );
  DFFRX1M regArr_reg_13__3_ ( .D(n156), .CK(CLK), .RN(n380), .QN(n396) );
  DFFRX1M regArr_reg_13__2_ ( .D(n155), .CK(CLK), .RN(n380), .QN(n397) );
  DFFRX1M regArr_reg_13__1_ ( .D(n154), .CK(CLK), .RN(n380), .QN(n398) );
  DFFRX1M regArr_reg_13__0_ ( .D(n153), .CK(CLK), .RN(n380), .QN(n399) );
  DFFRX1M regArr_reg_12__7_ ( .D(n152), .CK(CLK), .RN(n375), .QN(n416) );
  DFFRX1M regArr_reg_12__6_ ( .D(n151), .CK(CLK), .RN(n375), .QN(n417) );
  DFFRX1M regArr_reg_12__5_ ( .D(n150), .CK(CLK), .RN(n375), .QN(n418) );
  DFFRX1M regArr_reg_12__4_ ( .D(n149), .CK(CLK), .RN(n375), .QN(n419) );
  DFFRX1M regArr_reg_12__3_ ( .D(n148), .CK(CLK), .RN(n375), .QN(n420) );
  DFFRX1M regArr_reg_12__2_ ( .D(n147), .CK(CLK), .RN(n374), .QN(n421) );
  DFFRX1M regArr_reg_12__1_ ( .D(n146), .CK(CLK), .RN(n374), .QN(n422) );
  DFFRX1M regArr_reg_12__0_ ( .D(n145), .CK(CLK), .RN(n374), .QN(n423) );
  DFFRX1M regArr_reg_5__2_ ( .D(n91), .CK(CLK), .RN(n379), .Q(regArr_5__2_) );
  DFFRX1M regArr_reg_5__1_ ( .D(n90), .CK(CLK), .RN(n379), .Q(regArr_5__1_) );
  DFFRX1M regArr_reg_5__0_ ( .D(n89), .CK(CLK), .RN(n379), .Q(regArr_5__0_) );
  DFFRX1M regArr_reg_5__7_ ( .D(n96), .CK(CLK), .RN(n379), .Q(regArr_5__7_) );
  DFFRX1M regArr_reg_5__6_ ( .D(n95), .CK(CLK), .RN(n379), .Q(regArr_5__6_) );
  DFFRX1M regArr_reg_5__5_ ( .D(n94), .CK(CLK), .RN(n379), .Q(regArr_5__5_) );
  DFFRX1M regArr_reg_5__4_ ( .D(n93), .CK(CLK), .RN(n379), .Q(regArr_5__4_) );
  DFFRX1M regArr_reg_5__3_ ( .D(n92), .CK(CLK), .RN(n379), .Q(regArr_5__3_) );
  DFFRX1M regArr_reg_3__7_ ( .D(n80), .CK(CLK), .RN(n371), .Q(REG3[7]), .QN(
        n461) );
  DFFRX1M regArr_reg_3__3_ ( .D(n76), .CK(CLK), .RN(n371), .Q(REG3[3]), .QN(
        n446) );
  DFFRX1M regArr_reg_3__0_ ( .D(n73), .CK(CLK), .RN(n373), .Q(REG3[0]), .QN(
        n426) );
  DFFRX1M regArr_reg_1__3_ ( .D(n60), .CK(CLK), .RN(n372), .Q(REG1[3]), .QN(
        n462) );
  DFFRX1M RdData_reg_7_ ( .D(n47), .CK(CLK), .RN(n371), .Q(RdData[7]) );
  DFFRX1M RdData_reg_6_ ( .D(n46), .CK(CLK), .RN(n381), .Q(RdData[6]) );
  DFFRX1M RdData_reg_5_ ( .D(n45), .CK(CLK), .RN(n381), .Q(RdData[5]) );
  DFFRX1M RdData_reg_4_ ( .D(n44), .CK(CLK), .RN(n381), .Q(RdData[4]) );
  DFFRX1M RdData_reg_3_ ( .D(n43), .CK(CLK), .RN(n381), .Q(RdData[3]) );
  DFFRX1M RdData_reg_2_ ( .D(n42), .CK(CLK), .RN(n381), .Q(RdData[2]) );
  DFFRX1M RdData_reg_1_ ( .D(n41), .CK(CLK), .RN(n381), .Q(RdData[1]) );
  DFFRX1M RdData_reg_0_ ( .D(n40), .CK(CLK), .RN(n381), .Q(RdData[0]) );
  DFFRHQX8M regArr_reg_2__5_ ( .D(n70), .CK(CLK), .RN(n372), .Q(REG2[5]) );
  DFFRHQX8M regArr_reg_2__3_ ( .D(n68), .CK(CLK), .RN(n372), .Q(REG2[3]) );
  DFFRHQX8M regArr_reg_2__6_ ( .D(n71), .CK(CLK), .RN(n372), .Q(REG2[6]) );
  DFFRHQX8M regArr_reg_2__4_ ( .D(n69), .CK(CLK), .RN(n372), .Q(REG2[4]) );
  DFFRHQX8M regArr_reg_1__0_ ( .D(n57), .CK(CLK), .RN(n371), .Q(REG1[0]) );
  DFFRHQX8M regArr_reg_2__2_ ( .D(n67), .CK(CLK), .RN(n371), .Q(REG2[2]) );
  DFFRHQX8M regArr_reg_1__7_ ( .D(n64), .CK(CLK), .RN(n371), .Q(REG1[7]) );
  DFFRHQX8M regArr_reg_1__6_ ( .D(n63), .CK(CLK), .RN(n372), .Q(REG1[6]) );
  DFFSX4M regArr_reg_2__0_ ( .D(n65), .CK(CLK), .SN(n371), .Q(REG2[0]), .QN(
        n425) );
  DFFRQX4M regArr_reg_1__5_ ( .D(n62), .CK(CLK), .RN(n371), .Q(REG1[5]) );
  DFFRQX4M regArr_reg_1__2_ ( .D(n59), .CK(CLK), .RN(n371), .Q(REG1[2]) );
  DFFRQX4M regArr_reg_1__4_ ( .D(n61), .CK(CLK), .RN(n376), .Q(REG1[4]) );
  DFFRQX4M regArr_reg_1__1_ ( .D(n58), .CK(CLK), .RN(n371), .Q(REG1[1]) );
  DFFRX2M regArr_reg_3__6_ ( .D(n79), .CK(CLK), .RN(n372), .Q(REG3[6]), .QN(
        n445) );
  DFFRX2M regArr_reg_3__1_ ( .D(n74), .CK(CLK), .RN(n372), .Q(REG3[1]), .QN(
        n442) );
  DFFRX2M regArr_reg_3__4_ ( .D(n77), .CK(CLK), .RN(n372), .Q(REG3[4]), .QN(
        n443) );
  DFFRX2M regArr_reg_3__2_ ( .D(n75), .CK(CLK), .RN(n372), .Q(REG3[2]), .QN(
        n444) );
  BUFX6M U3 ( .A(RST), .Y(n372) );
  BUFX6M U4 ( .A(n382), .Y(n379) );
  BUFX6M U5 ( .A(n382), .Y(n380) );
  BUFX6M U6 ( .A(n383), .Y(n377) );
  BUFX6M U7 ( .A(n383), .Y(n378) );
  BUFX6M U8 ( .A(n384), .Y(n373) );
  BUFX6M U9 ( .A(n384), .Y(n374) );
  BUFX6M U10 ( .A(n384), .Y(n375) );
  CLKBUFX6M U11 ( .A(n385), .Y(n371) );
  NOR2X2M U12 ( .A(Address[3]), .B(n451), .Y(n334) );
  NOR2X2M U13 ( .A(Address[3]), .B(Address[0]), .Y(n336) );
  INVXLM U14 ( .A(n472), .Y(n337) );
  INVX8M U15 ( .A(n337), .Y(REG2[7]) );
  NOR2X4M U16 ( .A(n345), .B(n236), .Y(n227) );
  NOR2X4M U17 ( .A(n342), .B(n236), .Y(n229) );
  NOR2BX4M U18 ( .AN(n239), .B(n236), .Y(n327) );
  NOR2BX4M U19 ( .AN(n241), .B(n236), .Y(n325) );
  OR2X2M U20 ( .A(Address[1]), .B(Address[2]), .Y(n339) );
  OR2X2M U21 ( .A(n458), .B(Address[2]), .Y(n340) );
  INVX8M U22 ( .A(WrData[3]), .Y(n468) );
  INVX8M U23 ( .A(WrData[6]), .Y(n465) );
  INVX8M U24 ( .A(WrData[4]), .Y(n467) );
  INVX8M U25 ( .A(WrData[1]), .Y(n470) );
  INVX8M U26 ( .A(WrData[0]), .Y(n471) );
  INVX8M U27 ( .A(WrData[7]), .Y(n464) );
  INVX8M U28 ( .A(WrData[2]), .Y(n469) );
  INVX8M U29 ( .A(WrData[5]), .Y(n466) );
  INVX4M U30 ( .A(n365), .Y(n452) );
  INVX4M U31 ( .A(n368), .Y(n450) );
  INVX4M U32 ( .A(n359), .Y(n447) );
  INVX4M U33 ( .A(n361), .Y(n448) );
  INVX4M U34 ( .A(n362), .Y(n455) );
  INVX4M U35 ( .A(n360), .Y(n454) );
  INVX4M U36 ( .A(n366), .Y(n449) );
  INVX4M U37 ( .A(n367), .Y(n453) );
  INVX4M U38 ( .A(n341), .Y(n346) );
  INVX4M U39 ( .A(n341), .Y(n347) );
  CLKBUFX8M U40 ( .A(n333), .Y(n351) );
  NAND2X2M U41 ( .A(n327), .B(n348), .Y(n333) );
  CLKBUFX8M U42 ( .A(n331), .Y(n356) );
  NAND2X2M U43 ( .A(n327), .B(n353), .Y(n331) );
  CLKBUFX8M U44 ( .A(n330), .Y(n357) );
  NAND2X2M U45 ( .A(n325), .B(n354), .Y(n330) );
  CLKBUFX8M U46 ( .A(n332), .Y(n352) );
  NAND2X2M U47 ( .A(n325), .B(n349), .Y(n332) );
  CLKBUFX8M U48 ( .A(n228), .Y(n369) );
  NAND2X2M U49 ( .A(n456), .B(n229), .Y(n228) );
  CLKBUFX8M U50 ( .A(n226), .Y(n370) );
  NAND2X2M U51 ( .A(n227), .B(n456), .Y(n226) );
  CLKBUFX8M U52 ( .A(n225), .Y(n344) );
  NAND2X2M U53 ( .A(n229), .B(n459), .Y(n225) );
  INVX8M U54 ( .A(n354), .Y(n457) );
  INVX8M U55 ( .A(n349), .Y(n460) );
  AND2X2M U56 ( .A(n227), .B(n459), .Y(n341) );
  CLKBUFX6M U57 ( .A(n326), .Y(n361) );
  NAND2X2M U58 ( .A(n327), .B(n459), .Y(n326) );
  CLKBUFX6M U59 ( .A(n324), .Y(n362) );
  NAND2X2M U60 ( .A(n325), .B(n459), .Y(n324) );
  CLKBUFX6M U61 ( .A(n328), .Y(n360) );
  NAND2X2M U62 ( .A(n325), .B(n456), .Y(n328) );
  CLKBUFX6M U63 ( .A(n235), .Y(n365) );
  NAND2X2M U64 ( .A(n350), .B(n229), .Y(n235) );
  CLKBUFX6M U65 ( .A(n230), .Y(n368) );
  NAND2X2M U66 ( .A(n353), .B(n227), .Y(n230) );
  CLKBUFX6M U67 ( .A(n233), .Y(n366) );
  NAND2X2M U68 ( .A(n348), .B(n227), .Y(n233) );
  CLKBUFX6M U69 ( .A(n232), .Y(n367) );
  NAND2X2M U70 ( .A(n355), .B(n229), .Y(n232) );
  CLKBUFX6M U71 ( .A(n329), .Y(n359) );
  NAND2X2M U72 ( .A(n327), .B(n456), .Y(n329) );
  CLKBUFX8M U73 ( .A(n383), .Y(n376) );
  BUFX4M U74 ( .A(n382), .Y(n381) );
  CLKINVX12M U75 ( .A(n358), .Y(n456) );
  CLKINVX12M U76 ( .A(n343), .Y(n459) );
  INVX4M U77 ( .A(n339), .Y(n349) );
  INVX4M U78 ( .A(n340), .Y(n354) );
  INVX4M U79 ( .A(n339), .Y(n348) );
  INVX4M U80 ( .A(n340), .Y(n353) );
  INVX4M U81 ( .A(n339), .Y(n350) );
  INVX4M U82 ( .A(n340), .Y(n355) );
  INVX4M U83 ( .A(n336), .Y(n342) );
  INVX4M U84 ( .A(n334), .Y(n345) );
  BUFX4M U85 ( .A(n237), .Y(n363) );
  BUFX4M U86 ( .A(n237), .Y(n364) );
  BUFX2M U87 ( .A(n385), .Y(n384) );
  BUFX2M U88 ( .A(n385), .Y(n382) );
  BUFX2M U89 ( .A(n385), .Y(n383) );
  INVX2M U90 ( .A(Address[1]), .Y(n458) );
  BUFX10M U91 ( .A(n250), .Y(n358) );
  NAND2X2M U92 ( .A(Address[2]), .B(n458), .Y(n250) );
  CLKAND2X6M U93 ( .A(Address[3]), .B(Address[0]), .Y(n241) );
  CLKAND2X6M U94 ( .A(Address[3]), .B(n451), .Y(n239) );
  BUFX10M U95 ( .A(n251), .Y(n343) );
  NAND2X2M U96 ( .A(Address[2]), .B(Address[1]), .Y(n251) );
  INVX2M U97 ( .A(Address[0]), .Y(n451) );
  NAND2BX4M U98 ( .AN(RdEn), .B(WrEn), .Y(n236) );
  NAND2BX2M U99 ( .AN(WrEn), .B(RdEn), .Y(n237) );
  OAI22X1M U100 ( .A0(n457), .A1(n426), .B0(n460), .B1(n388), .Y(n321) );
  OAI22X1M U101 ( .A0(n457), .A1(n461), .B0(n460), .B1(n387), .Y(n249) );
  OAI22X1M U102 ( .A0(n457), .A1(n445), .B0(n460), .B1(n436), .Y(n261) );
  OAI22X1M U103 ( .A0(n457), .A1(n427), .B0(n460), .B1(n390), .Y(n271) );
  OAI22X1M U104 ( .A0(n457), .A1(n442), .B0(n460), .B1(n389), .Y(n311) );
  OAI22X1M U105 ( .A0(n457), .A1(n444), .B0(n460), .B1(n463), .Y(n301) );
  OAI22X1M U106 ( .A0(n457), .A1(n446), .B0(n460), .B1(n462), .Y(n291) );
  OAI22X1M U107 ( .A0(n457), .A1(n443), .B0(n460), .B1(n391), .Y(n281) );
  OAI22X1M U108 ( .A0(n449), .A1(n463), .B0(n469), .B1(n366), .Y(n59) );
  OAI22X1M U109 ( .A0(n449), .A1(n462), .B0(n468), .B1(n366), .Y(n60) );
  OAI22X1M U110 ( .A0(n450), .A1(n461), .B0(n464), .B1(n368), .Y(n80) );
  OAI22X1M U111 ( .A0(n450), .A1(n446), .B0(n468), .B1(n368), .Y(n76) );
  OAI22X1M U112 ( .A0(n450), .A1(n445), .B0(n465), .B1(n368), .Y(n79) );
  OAI22X1M U113 ( .A0(n450), .A1(n444), .B0(n469), .B1(n368), .Y(n75) );
  OAI22X1M U114 ( .A0(n450), .A1(n443), .B0(n467), .B1(n368), .Y(n77) );
  OAI22X1M U115 ( .A0(n450), .A1(n442), .B0(n470), .B1(n368), .Y(n74) );
  OAI22X1M U116 ( .A0(n453), .A1(n441), .B0(n466), .B1(n367), .Y(n70) );
  OAI22X1M U117 ( .A0(n453), .A1(n439), .B0(n467), .B1(n367), .Y(n69) );
  OAI22X1M U118 ( .A0(n453), .A1(n438), .B0(n465), .B1(n367), .Y(n71) );
  OAI22X1M U119 ( .A0(n453), .A1(n437), .B0(n468), .B1(n367), .Y(n68) );
  OAI22X1M U120 ( .A0(n449), .A1(n436), .B0(n465), .B1(n366), .Y(n63) );
  OAI22X1M U121 ( .A0(n452), .A1(n435), .B0(n464), .B1(n365), .Y(n56) );
  OAI22X1M U122 ( .A0(n452), .A1(n434), .B0(n465), .B1(n365), .Y(n55) );
  OAI22X1M U123 ( .A0(n452), .A1(n433), .B0(n466), .B1(n365), .Y(n54) );
  OAI22X1M U124 ( .A0(n452), .A1(n432), .B0(n467), .B1(n365), .Y(n53) );
  OAI22X1M U125 ( .A0(n452), .A1(n431), .B0(n468), .B1(n365), .Y(n52) );
  OAI22X1M U126 ( .A0(n452), .A1(n430), .B0(n470), .B1(n365), .Y(n50) );
  OAI22X1M U127 ( .A0(n452), .A1(n429), .B0(n469), .B1(n365), .Y(n51) );
  OAI22X1M U128 ( .A0(n452), .A1(n428), .B0(n471), .B1(n365), .Y(n49) );
  OAI22X1M U129 ( .A0(n450), .A1(n426), .B0(n471), .B1(n368), .Y(n73) );
  OAI22X1M U130 ( .A0(n453), .A1(n424), .B0(n470), .B1(n367), .Y(n66) );
  OAI22X1M U131 ( .A0(n447), .A1(n423), .B0(n471), .B1(n359), .Y(n145) );
  OAI22X1M U132 ( .A0(n447), .A1(n422), .B0(n470), .B1(n359), .Y(n146) );
  OAI22X1M U133 ( .A0(n447), .A1(n421), .B0(n469), .B1(n359), .Y(n147) );
  OAI22X1M U134 ( .A0(n447), .A1(n420), .B0(n468), .B1(n359), .Y(n148) );
  OAI22X1M U135 ( .A0(n447), .A1(n419), .B0(n467), .B1(n359), .Y(n149) );
  OAI22X1M U136 ( .A0(n447), .A1(n418), .B0(n466), .B1(n359), .Y(n150) );
  OAI22X1M U137 ( .A0(n447), .A1(n417), .B0(n465), .B1(n359), .Y(n151) );
  OAI22X1M U138 ( .A0(n447), .A1(n416), .B0(n464), .B1(n359), .Y(n152) );
  OAI22X1M U139 ( .A0(n448), .A1(n415), .B0(n471), .B1(n361), .Y(n161) );
  OAI22X1M U140 ( .A0(n448), .A1(n414), .B0(n470), .B1(n361), .Y(n162) );
  OAI22X1M U141 ( .A0(n448), .A1(n413), .B0(n469), .B1(n361), .Y(n163) );
  OAI22X1M U142 ( .A0(n448), .A1(n412), .B0(n468), .B1(n361), .Y(n164) );
  OAI22X1M U143 ( .A0(n448), .A1(n411), .B0(n467), .B1(n361), .Y(n165) );
  OAI22X1M U144 ( .A0(n448), .A1(n410), .B0(n466), .B1(n361), .Y(n166) );
  OAI22X1M U145 ( .A0(n448), .A1(n409), .B0(n465), .B1(n361), .Y(n167) );
  OAI22X1M U146 ( .A0(n448), .A1(n408), .B0(n464), .B1(n361), .Y(n168) );
  OAI22X1M U147 ( .A0(n455), .A1(n407), .B0(n471), .B1(n362), .Y(n169) );
  OAI22X1M U148 ( .A0(n455), .A1(n406), .B0(n470), .B1(n362), .Y(n170) );
  OAI22X1M U149 ( .A0(n455), .A1(n405), .B0(n469), .B1(n362), .Y(n171) );
  OAI22X1M U150 ( .A0(n455), .A1(n404), .B0(n468), .B1(n362), .Y(n172) );
  OAI22X1M U151 ( .A0(n455), .A1(n403), .B0(n467), .B1(n362), .Y(n173) );
  OAI22X1M U152 ( .A0(n455), .A1(n402), .B0(n466), .B1(n362), .Y(n174) );
  OAI22X1M U153 ( .A0(n455), .A1(n401), .B0(n465), .B1(n362), .Y(n175) );
  OAI22X1M U154 ( .A0(n455), .A1(n400), .B0(n464), .B1(n362), .Y(n176) );
  OAI22X1M U155 ( .A0(n454), .A1(n399), .B0(n471), .B1(n360), .Y(n153) );
  OAI22X1M U156 ( .A0(n454), .A1(n398), .B0(n470), .B1(n360), .Y(n154) );
  OAI22X1M U157 ( .A0(n454), .A1(n397), .B0(n469), .B1(n360), .Y(n155) );
  OAI22X1M U158 ( .A0(n454), .A1(n396), .B0(n468), .B1(n360), .Y(n156) );
  OAI22X1M U159 ( .A0(n454), .A1(n395), .B0(n467), .B1(n360), .Y(n157) );
  OAI22X1M U160 ( .A0(n454), .A1(n394), .B0(n466), .B1(n360), .Y(n158) );
  OAI22X1M U161 ( .A0(n454), .A1(n393), .B0(n465), .B1(n360), .Y(n159) );
  OAI22X1M U162 ( .A0(n454), .A1(n392), .B0(n464), .B1(n360), .Y(n160) );
  OAI22X1M U163 ( .A0(n449), .A1(n391), .B0(n467), .B1(n366), .Y(n61) );
  OAI22X1M U164 ( .A0(n449), .A1(n390), .B0(n466), .B1(n366), .Y(n62) );
  OAI22X1M U165 ( .A0(n449), .A1(n389), .B0(n470), .B1(n366), .Y(n58) );
  OAI22X1M U166 ( .A0(n449), .A1(n388), .B0(n471), .B1(n366), .Y(n57) );
  OAI22X1M U167 ( .A0(n449), .A1(n387), .B0(n464), .B1(n366), .Y(n64) );
  OAI22X1M U168 ( .A0(n453), .A1(n386), .B0(n469), .B1(n367), .Y(n67) );
  OAI22X1M U169 ( .A0(n453), .A1(n440), .B0(n464), .B1(n367), .Y(n72) );
  OAI22X1M U170 ( .A0(n450), .A1(n427), .B0(n466), .B1(n368), .Y(n78) );
  OAI22X1M U171 ( .A0(n453), .A1(n425), .B0(n471), .B1(n367), .Y(n65) );
  BUFX2M U172 ( .A(RST), .Y(n385) );
  OAI22X1M U173 ( .A0(n318), .A1(n345), .B0(n319), .B1(n342), .Y(n317) );
  AOI221X2M U174 ( .A0(regArr_4__0_), .A1(n456), .B0(regArr_6__0_), .B1(n459), 
        .C0(n320), .Y(n319) );
  AOI221X2M U175 ( .A0(regArr_5__0_), .A1(n456), .B0(regArr_7__0_), .B1(n459), 
        .C0(n321), .Y(n318) );
  OAI22X1M U176 ( .A0(n457), .A1(n425), .B0(n460), .B1(n428), .Y(n320) );
  OAI22X1M U177 ( .A0(n308), .A1(n345), .B0(n309), .B1(n342), .Y(n307) );
  AOI221X2M U178 ( .A0(regArr_4__1_), .A1(n456), .B0(regArr_6__1_), .B1(n459), 
        .C0(n310), .Y(n309) );
  AOI221X2M U179 ( .A0(regArr_5__1_), .A1(n456), .B0(regArr_7__1_), .B1(n459), 
        .C0(n311), .Y(n308) );
  OAI22X1M U180 ( .A0(n457), .A1(n424), .B0(n460), .B1(n430), .Y(n310) );
  OAI22X1M U181 ( .A0(n298), .A1(n345), .B0(n299), .B1(n342), .Y(n297) );
  AOI221X2M U182 ( .A0(regArr_4__2_), .A1(n456), .B0(regArr_6__2_), .B1(n459), 
        .C0(n300), .Y(n299) );
  AOI221X2M U183 ( .A0(regArr_5__2_), .A1(n456), .B0(regArr_7__2_), .B1(n459), 
        .C0(n301), .Y(n298) );
  OAI22X1M U184 ( .A0(n457), .A1(n386), .B0(n460), .B1(n429), .Y(n300) );
  OAI22X1M U185 ( .A0(n288), .A1(n345), .B0(n289), .B1(n342), .Y(n287) );
  AOI221X2M U186 ( .A0(regArr_4__3_), .A1(n456), .B0(regArr_6__3_), .B1(n459), 
        .C0(n290), .Y(n289) );
  AOI221X2M U187 ( .A0(regArr_5__3_), .A1(n456), .B0(regArr_7__3_), .B1(n459), 
        .C0(n291), .Y(n288) );
  OAI22X1M U188 ( .A0(n457), .A1(n437), .B0(n460), .B1(n431), .Y(n290) );
  OAI22X1M U189 ( .A0(n278), .A1(n345), .B0(n279), .B1(n342), .Y(n277) );
  AOI221X2M U190 ( .A0(regArr_4__4_), .A1(n456), .B0(regArr_6__4_), .B1(n459), 
        .C0(n280), .Y(n279) );
  AOI221X2M U191 ( .A0(regArr_5__4_), .A1(n456), .B0(regArr_7__4_), .B1(n459), 
        .C0(n281), .Y(n278) );
  OAI22X1M U192 ( .A0(n457), .A1(n439), .B0(n460), .B1(n432), .Y(n280) );
  OAI22X1M U193 ( .A0(n268), .A1(n345), .B0(n269), .B1(n342), .Y(n267) );
  AOI221X2M U194 ( .A0(regArr_4__5_), .A1(n456), .B0(regArr_6__5_), .B1(n459), 
        .C0(n270), .Y(n269) );
  AOI221X2M U195 ( .A0(regArr_5__5_), .A1(n456), .B0(regArr_7__5_), .B1(n459), 
        .C0(n271), .Y(n268) );
  OAI22X1M U196 ( .A0(n457), .A1(n441), .B0(n460), .B1(n433), .Y(n270) );
  OAI22X1M U197 ( .A0(n258), .A1(n345), .B0(n259), .B1(n342), .Y(n257) );
  AOI221X2M U198 ( .A0(regArr_4__6_), .A1(n456), .B0(regArr_6__6_), .B1(n459), 
        .C0(n260), .Y(n259) );
  AOI221X2M U199 ( .A0(regArr_5__6_), .A1(n456), .B0(regArr_7__6_), .B1(n459), 
        .C0(n261), .Y(n258) );
  OAI22X1M U200 ( .A0(n457), .A1(n438), .B0(n460), .B1(n434), .Y(n260) );
  OAI22X1M U201 ( .A0(n244), .A1(n345), .B0(n246), .B1(n342), .Y(n243) );
  AOI221X2M U202 ( .A0(regArr_4__7_), .A1(n456), .B0(regArr_6__7_), .B1(n459), 
        .C0(n248), .Y(n246) );
  AOI221X2M U203 ( .A0(regArr_5__7_), .A1(n456), .B0(regArr_7__7_), .B1(n459), 
        .C0(n249), .Y(n244) );
  OAI22X1M U204 ( .A0(n457), .A1(n440), .B0(n460), .B1(n435), .Y(n248) );
  OAI2BB2X1M U205 ( .B0(n314), .B1(n363), .A0N(RdData[0]), .A1N(n364), .Y(n40)
         );
  AOI221X2M U206 ( .A0(n239), .A1(n315), .B0(n241), .B1(n316), .C0(n317), .Y(
        n314) );
  OAI221X1M U207 ( .A0(n358), .A1(n423), .B0(n343), .B1(n415), .C0(n323), .Y(
        n315) );
  OAI221X1M U208 ( .A0(n358), .A1(n399), .B0(n343), .B1(n407), .C0(n322), .Y(
        n316) );
  OAI2BB2X1M U209 ( .B0(n304), .B1(n363), .A0N(RdData[1]), .A1N(n364), .Y(n41)
         );
  AOI221X2M U210 ( .A0(n239), .A1(n305), .B0(n241), .B1(n306), .C0(n307), .Y(
        n304) );
  OAI221X1M U211 ( .A0(n358), .A1(n422), .B0(n343), .B1(n414), .C0(n313), .Y(
        n305) );
  OAI221X1M U212 ( .A0(n358), .A1(n398), .B0(n343), .B1(n406), .C0(n312), .Y(
        n306) );
  OAI2BB2X1M U213 ( .B0(n294), .B1(n363), .A0N(RdData[2]), .A1N(n364), .Y(n42)
         );
  AOI221X2M U214 ( .A0(n239), .A1(n295), .B0(n241), .B1(n296), .C0(n297), .Y(
        n294) );
  OAI221X1M U215 ( .A0(n358), .A1(n421), .B0(n343), .B1(n413), .C0(n303), .Y(
        n295) );
  OAI221X1M U216 ( .A0(n358), .A1(n397), .B0(n343), .B1(n405), .C0(n302), .Y(
        n296) );
  OAI2BB2X1M U217 ( .B0(n284), .B1(n363), .A0N(RdData[3]), .A1N(n364), .Y(n43)
         );
  AOI221X2M U218 ( .A0(n239), .A1(n285), .B0(n241), .B1(n286), .C0(n287), .Y(
        n284) );
  OAI221X1M U219 ( .A0(n358), .A1(n420), .B0(n343), .B1(n412), .C0(n293), .Y(
        n285) );
  OAI221X1M U220 ( .A0(n358), .A1(n396), .B0(n343), .B1(n404), .C0(n292), .Y(
        n286) );
  OAI2BB2X1M U221 ( .B0(n274), .B1(n363), .A0N(RdData[4]), .A1N(n364), .Y(n44)
         );
  AOI221X2M U222 ( .A0(n239), .A1(n275), .B0(n241), .B1(n276), .C0(n277), .Y(
        n274) );
  OAI221X1M U223 ( .A0(n358), .A1(n419), .B0(n343), .B1(n411), .C0(n283), .Y(
        n275) );
  OAI221X1M U224 ( .A0(n358), .A1(n395), .B0(n343), .B1(n403), .C0(n282), .Y(
        n276) );
  OAI2BB2X1M U225 ( .B0(n264), .B1(n363), .A0N(RdData[5]), .A1N(n364), .Y(n45)
         );
  AOI221X2M U226 ( .A0(n239), .A1(n265), .B0(n241), .B1(n266), .C0(n267), .Y(
        n264) );
  OAI221X1M U227 ( .A0(n358), .A1(n418), .B0(n343), .B1(n410), .C0(n273), .Y(
        n265) );
  OAI221X1M U228 ( .A0(n358), .A1(n394), .B0(n343), .B1(n402), .C0(n272), .Y(
        n266) );
  OAI2BB2X1M U229 ( .B0(n254), .B1(n363), .A0N(RdData[6]), .A1N(n364), .Y(n46)
         );
  AOI221X2M U230 ( .A0(n239), .A1(n255), .B0(n241), .B1(n256), .C0(n257), .Y(
        n254) );
  OAI221X1M U231 ( .A0(n358), .A1(n417), .B0(n343), .B1(n409), .C0(n263), .Y(
        n255) );
  OAI221X1M U232 ( .A0(n358), .A1(n393), .B0(n343), .B1(n401), .C0(n262), .Y(
        n256) );
  OAI2BB2X1M U233 ( .B0(n238), .B1(n363), .A0N(RdData[7]), .A1N(n364), .Y(n47)
         );
  AOI221X2M U234 ( .A0(n239), .A1(n240), .B0(n241), .B1(n242), .C0(n243), .Y(
        n238) );
  OAI221X1M U235 ( .A0(n358), .A1(n416), .B0(n343), .B1(n408), .C0(n253), .Y(
        n240) );
  OAI221X1M U236 ( .A0(n358), .A1(n392), .B0(n343), .B1(n400), .C0(n252), .Y(
        n242) );
  AOI22X1M U237 ( .A0(regArr_8__1_), .A1(n349), .B0(regArr_10__1_), .B1(n354), 
        .Y(n313) );
  AOI22X1M U238 ( .A0(regArr_9__2_), .A1(n349), .B0(regArr_11__2_), .B1(n354), 
        .Y(n302) );
  AOI22X1M U239 ( .A0(regArr_8__4_), .A1(n349), .B0(regArr_10__4_), .B1(n354), 
        .Y(n283) );
  AOI22X1M U240 ( .A0(regArr_9__5_), .A1(n349), .B0(regArr_11__5_), .B1(n354), 
        .Y(n272) );
  AOI22X1M U241 ( .A0(regArr_8__7_), .A1(n349), .B0(regArr_10__7_), .B1(n354), 
        .Y(n253) );
  AOI22X1M U242 ( .A0(regArr_9__0_), .A1(n348), .B0(regArr_11__0_), .B1(n353), 
        .Y(n322) );
  AOI22X1M U243 ( .A0(regArr_8__2_), .A1(n348), .B0(regArr_10__2_), .B1(n353), 
        .Y(n303) );
  AOI22X1M U244 ( .A0(regArr_9__3_), .A1(n348), .B0(regArr_11__3_), .B1(n353), 
        .Y(n292) );
  AOI22X1M U245 ( .A0(regArr_8__5_), .A1(n348), .B0(regArr_10__5_), .B1(n353), 
        .Y(n273) );
  AOI22X1M U246 ( .A0(regArr_9__6_), .A1(n348), .B0(regArr_11__6_), .B1(n353), 
        .Y(n262) );
  AOI22X1M U247 ( .A0(regArr_8__0_), .A1(n350), .B0(regArr_10__0_), .B1(n355), 
        .Y(n323) );
  AOI22X1M U248 ( .A0(regArr_9__1_), .A1(n350), .B0(regArr_11__1_), .B1(n355), 
        .Y(n312) );
  AOI22X1M U249 ( .A0(regArr_8__3_), .A1(n350), .B0(regArr_10__3_), .B1(n355), 
        .Y(n293) );
  AOI22X1M U250 ( .A0(regArr_9__4_), .A1(n350), .B0(regArr_11__4_), .B1(n355), 
        .Y(n282) );
  AOI22X1M U251 ( .A0(regArr_8__6_), .A1(n350), .B0(regArr_10__6_), .B1(n355), 
        .Y(n263) );
  AOI22X1M U252 ( .A0(regArr_9__7_), .A1(n350), .B0(regArr_11__7_), .B1(n355), 
        .Y(n252) );
  OAI2BB2X1M U253 ( .B0(n471), .B1(n369), .A0N(n369), .A1N(regArr_4__0_), .Y(
        n81) );
  OAI2BB2X1M U254 ( .B0(n470), .B1(n369), .A0N(n369), .A1N(regArr_4__1_), .Y(
        n82) );
  OAI2BB2X1M U255 ( .B0(n469), .B1(n369), .A0N(n369), .A1N(regArr_4__2_), .Y(
        n83) );
  OAI2BB2X1M U256 ( .B0(n468), .B1(n369), .A0N(n369), .A1N(regArr_4__3_), .Y(
        n84) );
  OAI2BB2X1M U257 ( .B0(n467), .B1(n369), .A0N(n369), .A1N(regArr_4__4_), .Y(
        n85) );
  OAI2BB2X1M U258 ( .B0(n466), .B1(n369), .A0N(n369), .A1N(regArr_4__5_), .Y(
        n86) );
  OAI2BB2X1M U259 ( .B0(n465), .B1(n369), .A0N(n369), .A1N(regArr_4__6_), .Y(
        n87) );
  OAI2BB2X1M U260 ( .B0(n464), .B1(n369), .A0N(n369), .A1N(regArr_4__7_), .Y(
        n88) );
  OAI2BB2X1M U261 ( .B0(n471), .B1(n351), .A0N(n351), .A1N(regArr_8__0_), .Y(
        n113) );
  OAI2BB2X1M U262 ( .B0(n470), .B1(n351), .A0N(n351), .A1N(regArr_8__1_), .Y(
        n114) );
  OAI2BB2X1M U263 ( .B0(n469), .B1(n351), .A0N(n351), .A1N(regArr_8__2_), .Y(
        n115) );
  OAI2BB2X1M U264 ( .B0(n468), .B1(n351), .A0N(n351), .A1N(regArr_8__3_), .Y(
        n116) );
  OAI2BB2X1M U265 ( .B0(n467), .B1(n351), .A0N(n351), .A1N(regArr_8__4_), .Y(
        n117) );
  OAI2BB2X1M U266 ( .B0(n466), .B1(n351), .A0N(n351), .A1N(regArr_8__5_), .Y(
        n118) );
  OAI2BB2X1M U267 ( .B0(n465), .B1(n351), .A0N(n351), .A1N(regArr_8__6_), .Y(
        n119) );
  OAI2BB2X1M U268 ( .B0(n464), .B1(n351), .A0N(n351), .A1N(regArr_8__7_), .Y(
        n120) );
  OAI2BB2X1M U269 ( .B0(n471), .B1(n356), .A0N(n356), .A1N(regArr_10__0_), .Y(
        n129) );
  OAI2BB2X1M U270 ( .B0(n470), .B1(n356), .A0N(n356), .A1N(regArr_10__1_), .Y(
        n130) );
  OAI2BB2X1M U271 ( .B0(n469), .B1(n356), .A0N(n356), .A1N(regArr_10__2_), .Y(
        n131) );
  OAI2BB2X1M U272 ( .B0(n468), .B1(n356), .A0N(n356), .A1N(regArr_10__3_), .Y(
        n132) );
  OAI2BB2X1M U273 ( .B0(n467), .B1(n356), .A0N(n356), .A1N(regArr_10__4_), .Y(
        n133) );
  OAI2BB2X1M U274 ( .B0(n466), .B1(n356), .A0N(n356), .A1N(regArr_10__5_), .Y(
        n134) );
  OAI2BB2X1M U275 ( .B0(n465), .B1(n356), .A0N(n356), .A1N(regArr_10__6_), .Y(
        n135) );
  OAI2BB2X1M U276 ( .B0(n464), .B1(n356), .A0N(n356), .A1N(regArr_10__7_), .Y(
        n136) );
  OAI2BB2X1M U277 ( .B0(n471), .B1(n357), .A0N(n357), .A1N(regArr_11__0_), .Y(
        n137) );
  OAI2BB2X1M U278 ( .B0(n470), .B1(n357), .A0N(n357), .A1N(regArr_11__1_), .Y(
        n138) );
  OAI2BB2X1M U279 ( .B0(n469), .B1(n357), .A0N(n357), .A1N(regArr_11__2_), .Y(
        n139) );
  OAI2BB2X1M U280 ( .B0(n468), .B1(n357), .A0N(n357), .A1N(regArr_11__3_), .Y(
        n140) );
  OAI2BB2X1M U281 ( .B0(n467), .B1(n357), .A0N(n357), .A1N(regArr_11__4_), .Y(
        n141) );
  OAI2BB2X1M U282 ( .B0(n466), .B1(n357), .A0N(n357), .A1N(regArr_11__5_), .Y(
        n142) );
  OAI2BB2X1M U283 ( .B0(n465), .B1(n357), .A0N(n357), .A1N(regArr_11__6_), .Y(
        n143) );
  OAI2BB2X1M U284 ( .B0(n464), .B1(n357), .A0N(n357), .A1N(regArr_11__7_), .Y(
        n144) );
  OAI2BB2X1M U285 ( .B0(n471), .B1(n352), .A0N(n352), .A1N(regArr_9__0_), .Y(
        n121) );
  OAI2BB2X1M U286 ( .B0(n470), .B1(n352), .A0N(n352), .A1N(regArr_9__1_), .Y(
        n122) );
  OAI2BB2X1M U287 ( .B0(n469), .B1(n352), .A0N(n352), .A1N(regArr_9__2_), .Y(
        n123) );
  OAI2BB2X1M U288 ( .B0(n468), .B1(n352), .A0N(n352), .A1N(regArr_9__3_), .Y(
        n124) );
  OAI2BB2X1M U289 ( .B0(n467), .B1(n352), .A0N(n352), .A1N(regArr_9__4_), .Y(
        n125) );
  OAI2BB2X1M U290 ( .B0(n466), .B1(n352), .A0N(n352), .A1N(regArr_9__5_), .Y(
        n126) );
  OAI2BB2X1M U291 ( .B0(n465), .B1(n352), .A0N(n352), .A1N(regArr_9__6_), .Y(
        n127) );
  OAI2BB2X1M U292 ( .B0(n464), .B1(n352), .A0N(n352), .A1N(regArr_9__7_), .Y(
        n128) );
  OAI2BB2X1M U293 ( .B0(n471), .B1(n370), .A0N(n370), .A1N(regArr_5__0_), .Y(
        n89) );
  OAI2BB2X1M U294 ( .B0(n470), .B1(n370), .A0N(n370), .A1N(regArr_5__1_), .Y(
        n90) );
  OAI2BB2X1M U295 ( .B0(n469), .B1(n370), .A0N(n370), .A1N(regArr_5__2_), .Y(
        n91) );
  OAI2BB2X1M U296 ( .B0(n370), .B1(n468), .A0N(n370), .A1N(regArr_5__3_), .Y(
        n92) );
  OAI2BB2X1M U297 ( .B0(n370), .B1(n467), .A0N(n370), .A1N(regArr_5__4_), .Y(
        n93) );
  OAI2BB2X1M U298 ( .B0(n370), .B1(n466), .A0N(n370), .A1N(regArr_5__5_), .Y(
        n94) );
  OAI2BB2X1M U299 ( .B0(n370), .B1(n465), .A0N(n370), .A1N(regArr_5__6_), .Y(
        n95) );
  OAI2BB2X1M U300 ( .B0(n370), .B1(n464), .A0N(n370), .A1N(regArr_5__7_), .Y(
        n96) );
  OAI2BB2X1M U301 ( .B0(n344), .B1(n471), .A0N(n344), .A1N(regArr_6__0_), .Y(
        n97) );
  OAI2BB2X1M U302 ( .B0(n344), .B1(n470), .A0N(n344), .A1N(regArr_6__1_), .Y(
        n98) );
  OAI2BB2X1M U303 ( .B0(n344), .B1(n469), .A0N(n344), .A1N(regArr_6__2_), .Y(
        n99) );
  OAI2BB2X1M U304 ( .B0(n344), .B1(n468), .A0N(n344), .A1N(regArr_6__3_), .Y(
        n100) );
  OAI2BB2X1M U305 ( .B0(n344), .B1(n467), .A0N(n344), .A1N(regArr_6__4_), .Y(
        n101) );
  OAI2BB2X1M U306 ( .B0(n344), .B1(n466), .A0N(n344), .A1N(regArr_6__5_), .Y(
        n102) );
  OAI2BB2X1M U307 ( .B0(n344), .B1(n465), .A0N(n344), .A1N(regArr_6__6_), .Y(
        n103) );
  OAI2BB2X1M U308 ( .B0(n344), .B1(n464), .A0N(n344), .A1N(regArr_6__7_), .Y(
        n104) );
  OAI2BB2X1M U309 ( .B0(n469), .B1(n346), .A0N(n346), .A1N(regArr_7__2_), .Y(
        n107) );
  OAI2BB2X1M U310 ( .B0(n471), .B1(n346), .A0N(n346), .A1N(regArr_7__0_), .Y(
        n105) );
  OAI2BB2X1M U311 ( .B0(n470), .B1(n347), .A0N(n347), .A1N(regArr_7__1_), .Y(
        n106) );
  OAI2BB2X1M U312 ( .B0(n468), .B1(n347), .A0N(n347), .A1N(regArr_7__3_), .Y(
        n108) );
  OAI2BB2X1M U313 ( .B0(n467), .B1(n346), .A0N(n346), .A1N(regArr_7__4_), .Y(
        n109) );
  OAI2BB2X1M U314 ( .B0(n465), .B1(n346), .A0N(n346), .A1N(regArr_7__6_), .Y(
        n111) );
  OAI2BB2X1M U315 ( .B0(n464), .B1(n347), .A0N(n347), .A1N(regArr_7__7_), .Y(
        n112) );
  OAI2BB2X1M U316 ( .B0(n466), .B1(n347), .A0N(n347), .A1N(regArr_7__5_), .Y(
        n110) );
  OAI21X2M U317 ( .A0(n335), .A1(n236), .B0(n364), .Y(n48) );
  CLKINVX1M U318 ( .A(REG2[5]), .Y(n441) );
  CLKINVX1M U319 ( .A(REG2[3]), .Y(n437) );
  CLKINVX1M U320 ( .A(REG2[6]), .Y(n438) );
  CLKINVX1M U321 ( .A(REG2[4]), .Y(n439) );
  INVX2M U322 ( .A(REG1[0]), .Y(n388) );
  INVX2M U323 ( .A(REG2[2]), .Y(n386) );
  INVX2M U324 ( .A(REG1[7]), .Y(n387) );
  INVX2M U325 ( .A(REG1[6]), .Y(n436) );
  INVX2M U326 ( .A(REG1[5]), .Y(n390) );
  INVX2M U327 ( .A(REG1[4]), .Y(n391) );
  INVX2M U328 ( .A(REG1[2]), .Y(n463) );
  INVX2M U329 ( .A(REG1[1]), .Y(n389) );
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
         u_div_PartRem_7__1_, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19;

  ADDFX2M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(n14), .CI(
        u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFX2M u_div_u_fa_PartRem_0_3_4 ( .A(u_div_PartRem_4__4_), .B(n16), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_PartRem_7__1_), .B(n14), .CI(
        u_div_CryTmp_6__1_), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(n17), .CI(
        u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(u_div_SumTmp_1__6_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_5 ( .A(u_div_PartRem_3__5_), .B(n15), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(n19), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(n15), .CI(
        u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(u_div_SumTmp_1__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(n16), .CI(
        u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(u_div_SumTmp_1__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_4 ( .A(u_div_PartRem_3__4_), .B(n16), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(n16), .CI(
        u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(n15), .CI(
        u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(n19), .CI(
        u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(n18), .CI(
        u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n19), .CI(
        u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(n19), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(n19), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(n19), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(n14), .CI(
        u_div_CryTmp_1__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(n14), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(n14), .CI(
        u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(u_div_SumTmp_3__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(n14), .CI(
        u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(u_div_SumTmp_4__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(n14), .CI(
        u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(u_div_SumTmp_5__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(n17), .CI(
        u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(n12), .CI(
        u_div_CryTmp_0__7_), .CO(quotient[0]) );
  ADDFX2M u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(n18), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(n18), .CI(
        u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(u_div_SumTmp_1__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(n18), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(n18), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  NOR2X4M U1 ( .A(b[6]), .B(b[7]), .Y(n11) );
  CLKAND2X4M U2 ( .A(u_div_CryTmp_1__7_), .B(n12), .Y(quotient[1]) );
  INVX4M U3 ( .A(b[1]), .Y(n14) );
  INVX4M U4 ( .A(b[2]), .Y(n19) );
  MX2X2M U5 ( .A(u_div_PartRem_5__3_), .B(u_div_SumTmp_4__3_), .S0(quotient[4]), .Y(u_div_PartRem_4__4_) );
  CLKAND2X4M U6 ( .A(u_div_CryTmp_4__4_), .B(n10), .Y(quotient[4]) );
  AND2X2M U7 ( .A(u_div_CryTmp_5__3_), .B(n9), .Y(quotient[5]) );
  AND2X2M U8 ( .A(n10), .B(n18), .Y(n9) );
  MX2X2M U9 ( .A(u_div_PartRem_4__1_), .B(u_div_SumTmp_3__1_), .S0(quotient[3]), .Y(u_div_PartRem_3__2_) );
  MX2X2M U10 ( .A(u_div_PartRem_4__2_), .B(u_div_SumTmp_3__2_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__3_) );
  MX2X2M U11 ( .A(u_div_PartRem_4__3_), .B(u_div_SumTmp_3__3_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__4_) );
  MX2X2M U12 ( .A(u_div_PartRem_7__1_), .B(u_div_SumTmp_6__1_), .S0(
        quotient[6]), .Y(u_div_PartRem_6__2_) );
  MX2X2M U13 ( .A(u_div_PartRem_3__1_), .B(u_div_SumTmp_2__1_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__2_) );
  MX2X2M U14 ( .A(u_div_PartRem_3__2_), .B(u_div_SumTmp_2__2_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__3_) );
  MX2X2M U15 ( .A(u_div_PartRem_3__3_), .B(u_div_SumTmp_2__3_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__4_) );
  MX2X2M U16 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__2_) );
  MX2X2M U17 ( .A(u_div_PartRem_6__2_), .B(u_div_SumTmp_5__2_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__3_) );
  MX2X2M U18 ( .A(u_div_PartRem_5__1_), .B(u_div_SumTmp_4__1_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__2_) );
  MX2X2M U19 ( .A(u_div_PartRem_5__2_), .B(u_div_SumTmp_4__2_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__3_) );
  MX2X2M U20 ( .A(u_div_PartRem_4__4_), .B(u_div_SumTmp_3__4_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__5_) );
  MX2X2M U21 ( .A(u_div_PartRem_3__4_), .B(u_div_SumTmp_2__4_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__5_) );
  MX2X2M U22 ( .A(u_div_PartRem_3__5_), .B(u_div_SumTmp_2__5_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__6_) );
  MX2X2M U23 ( .A(u_div_PartRem_2__5_), .B(u_div_SumTmp_1__5_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__6_) );
  MX2X2M U24 ( .A(u_div_PartRem_2__6_), .B(u_div_SumTmp_1__6_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__7_) );
  AND3X4M U25 ( .A(n11), .B(n15), .C(u_div_CryTmp_3__5_), .Y(quotient[3]) );
  AND3X2M U26 ( .A(n9), .B(n19), .C(u_div_CryTmp_6__2_), .Y(quotient[6]) );
  CLKAND2X4M U27 ( .A(u_div_CryTmp_2__6_), .B(n11), .Y(quotient[2]) );
  MX2X2M U28 ( .A(a[3]), .B(u_div_SumTmp_3__0_), .S0(quotient[3]), .Y(
        u_div_PartRem_3__1_) );
  XNOR2X2M U29 ( .A(n13), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  MX2X2M U30 ( .A(a[6]), .B(u_div_SumTmp_6__0_), .S0(quotient[6]), .Y(
        u_div_PartRem_6__1_) );
  XNOR2X2M U31 ( .A(n13), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  MX2X2M U32 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(quotient[2]), .Y(
        u_div_PartRem_2__1_) );
  XNOR2X2M U33 ( .A(n13), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  MX2X2M U34 ( .A(a[5]), .B(u_div_SumTmp_5__0_), .S0(quotient[5]), .Y(
        u_div_PartRem_5__1_) );
  XNOR2X2M U35 ( .A(n13), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  MX2X2M U36 ( .A(a[4]), .B(u_div_SumTmp_4__0_), .S0(quotient[4]), .Y(
        u_div_PartRem_4__1_) );
  XNOR2X2M U37 ( .A(n13), .B(a[4]), .Y(u_div_SumTmp_4__0_) );
  MX2X2M U38 ( .A(a[7]), .B(u_div_SumTmp_7__0_), .S0(quotient[7]), .Y(
        u_div_PartRem_7__1_) );
  XNOR2X2M U39 ( .A(n13), .B(a[7]), .Y(u_div_SumTmp_7__0_) );
  AND3X2M U40 ( .A(n11), .B(n16), .C(n15), .Y(n10) );
  AND4X2M U41 ( .A(u_div_CryTmp_7__1_), .B(n9), .C(n14), .D(n19), .Y(
        quotient[7]) );
  OR2X2M U42 ( .A(a[7]), .B(n13), .Y(u_div_CryTmp_7__1_) );
  OR2X2M U43 ( .A(a[5]), .B(n13), .Y(u_div_CryTmp_5__1_) );
  OR2X2M U44 ( .A(a[4]), .B(n13), .Y(u_div_CryTmp_4__1_) );
  OR2X2M U45 ( .A(a[3]), .B(n13), .Y(u_div_CryTmp_3__1_) );
  OR2X2M U46 ( .A(a[2]), .B(n13), .Y(u_div_CryTmp_2__1_) );
  OR2X2M U47 ( .A(a[1]), .B(n13), .Y(u_div_CryTmp_1__1_) );
  MX2X2M U48 ( .A(u_div_PartRem_2__2_), .B(u_div_SumTmp_1__2_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__3_) );
  MX2X2M U49 ( .A(u_div_PartRem_2__1_), .B(u_div_SumTmp_1__1_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__2_) );
  MX2X2M U50 ( .A(u_div_PartRem_2__4_), .B(u_div_SumTmp_1__4_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__5_) );
  MX2X2M U51 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_1__3_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__4_) );
  OR2X2M U52 ( .A(a[6]), .B(n13), .Y(u_div_CryTmp_6__1_) );
  INVX4M U53 ( .A(b[3]), .Y(n18) );
  INVX4M U54 ( .A(b[5]), .Y(n15) );
  NAND2BX2M U55 ( .AN(a[0]), .B(b[0]), .Y(u_div_CryTmp_0__1_) );
  MX2X2M U56 ( .A(a[1]), .B(u_div_SumTmp_1__0_), .S0(quotient[1]), .Y(
        u_div_PartRem_1__1_) );
  XNOR2X2M U57 ( .A(n13), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  INVX4M U58 ( .A(b[4]), .Y(n16) );
  INVX8M U59 ( .A(b[0]), .Y(n13) );
  INVX2M U60 ( .A(b[6]), .Y(n17) );
  INVX2M U61 ( .A(b[7]), .Y(n12) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:1] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U2 ( .A(B[3]), .Y(n15) );
  XNOR2X2M U3 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U4 ( .A(B[0]), .Y(n10) );
  INVX2M U5 ( .A(B[4]), .Y(n13) );
  INVX2M U6 ( .A(B[5]), .Y(n12) );
  INVX2M U7 ( .A(B[6]), .Y(n14) );
  INVX2M U8 ( .A(B[2]), .Y(n16) );
  INVX2M U9 ( .A(B[7]), .Y(n9) );
  INVX2M U10 ( .A(B[1]), .Y(n11) );
  OR2X2M U11 ( .A(A[0]), .B(n10), .Y(carry[1]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
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
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27;

  NOR2X2M U2 ( .A(B[11]), .B(A[11]), .Y(n19) );
  OAI21BX4M U3 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U4 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  OA21X2M U5 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  OA21X2M U6 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  NOR2X2M U7 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U8 ( .A(B[8]), .B(A[8]), .Y(n14) );
  OAI21X2M U9 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  NAND2X2M U10 ( .A(A[7]), .B(B[7]), .Y(n13) );
  NAND2X2M U11 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X2M U12 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NAND2X2M U13 ( .A(B[10]), .B(A[10]), .Y(n25) );
  AND2X2M U14 ( .A(B[9]), .B(A[9]), .Y(n10) );
  AND2X2M U15 ( .A(B[11]), .B(A[11]), .Y(n21) );
  CLKXOR2X2M U16 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  CLKXOR2X2M U17 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX2M U18 ( .AN(n14), .B(n15), .Y(n12) );
  XNOR2X2M U19 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X2M U20 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U21 ( .A(n26), .B(n24), .Y(SUM[10]) );
  NAND2BX2M U22 ( .AN(n23), .B(n25), .Y(n26) );
  XNOR2X2M U23 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X2M U24 ( .A(n21), .B(n19), .Y(n22) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  CLKXOR2X2M U26 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  OAI2BB1X2M U27 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  BUFX2M U28 ( .A(A[1]), .Y(SUM[1]) );
  INVX2M U29 ( .A(A[6]), .Y(n27) );
  BUFX2M U30 ( .A(A[0]), .Y(SUM[0]) );
  INVX2M U31 ( .A(n27), .Y(SUM[6]) );
  BUFX2M U32 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U33 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U34 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U35 ( .A(A[5]), .Y(SUM[5]) );
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
         n15, n16, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n10, n16, 
        n15, n14, n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
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
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n8), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n5), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n7), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n4), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n3), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n6), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  INVX4M U2 ( .A(B[3]), .Y(n52) );
  NOR2X2M U3 ( .A(n41), .B(n43), .Y(ab_0__5_) );
  NOR2X2M U4 ( .A(n42), .B(n43), .Y(ab_0__4_) );
  NOR2X2M U5 ( .A(n40), .B(n43), .Y(ab_0__1_) );
  NOR2X2M U6 ( .A(n50), .B(n38), .Y(ab_7__7_) );
  INVX4M U7 ( .A(B[7]), .Y(n38) );
  INVX4M U8 ( .A(B[5]), .Y(n41) );
  INVX4M U9 ( .A(B[4]), .Y(n42) );
  INVX4M U10 ( .A(B[1]), .Y(n40) );
  INVX4M U11 ( .A(B[6]), .Y(n51) );
  INVX4M U12 ( .A(B[2]), .Y(n53) );
  INVX4M U13 ( .A(B[0]), .Y(n39) );
  AND2X2M U14 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  INVX4M U15 ( .A(A[0]), .Y(n43) );
  INVX4M U16 ( .A(A[1]), .Y(n45) );
  CLKXOR2X2M U17 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  CLKXOR2X2M U18 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U19 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  NOR2X2M U20 ( .A(n50), .B(n52), .Y(ab_7__3_) );
  NOR2X2M U21 ( .A(n52), .B(n44), .Y(ab_2__3_) );
  AND2X2M U22 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n6) );
  CLKXOR2X2M U23 ( .A(ab_1__4_), .B(ab_0__5_), .Y(SUMB_1__4_) );
  NOR2X2M U24 ( .A(n52), .B(n47), .Y(ab_4__3_) );
  NOR2X2M U25 ( .A(n52), .B(n49), .Y(ab_6__3_) );
  AND2X2M U26 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n11) );
  NOR2X2M U27 ( .A(n52), .B(n46), .Y(ab_3__3_) );
  NOR2X2M U28 ( .A(n52), .B(n48), .Y(ab_5__3_) );
  AND2X2M U30 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n12) );
  INVX4M U31 ( .A(A[3]), .Y(n46) );
  INVX4M U32 ( .A(A[2]), .Y(n44) );
  INVX4M U35 ( .A(A[4]), .Y(n47) );
  CLKXOR2X2M U36 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U37 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  NOR2X2M U38 ( .A(n52), .B(n43), .Y(ab_0__3_) );
  NOR2X2M U39 ( .A(n52), .B(n45), .Y(ab_1__3_) );
  AND2X2M U40 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n14) );
  AND2X2M U41 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n13) );
  AND2X2M U42 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n15) );
  INVX4M U43 ( .A(A[5]), .Y(n48) );
  INVX4M U44 ( .A(A[6]), .Y(n49) );
  CLKXOR2X2M U45 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  CLKXOR2X2M U46 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(A1_6_) );
  AND2X2M U47 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
  INVX4M U48 ( .A(A[7]), .Y(n50) );
  NOR2X2M U49 ( .A(n39), .B(n43), .Y(PRODUCT[0]) );
  CLKXOR2X2M U50 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  NOR2X2M U51 ( .A(n53), .B(n44), .Y(ab_2__2_) );
  AND2X2M U52 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n3) );
  CLKXOR2X2M U53 ( .A(ab_1__3_), .B(ab_0__4_), .Y(SUMB_1__3_) );
  NOR2X2M U54 ( .A(n38), .B(n43), .Y(ab_0__7_) );
  NOR2X2M U55 ( .A(n51), .B(n43), .Y(ab_0__6_) );
  NOR2X2M U56 ( .A(n51), .B(n45), .Y(ab_1__6_) );
  NOR2X2M U57 ( .A(n41), .B(n45), .Y(ab_1__5_) );
  NOR2X2M U58 ( .A(n42), .B(n45), .Y(ab_1__4_) );
  NOR2X2M U59 ( .A(n53), .B(n45), .Y(ab_1__2_) );
  NOR2X2M U60 ( .A(n50), .B(n53), .Y(ab_7__2_) );
  NOR2X2M U61 ( .A(n50), .B(n40), .Y(ab_7__1_) );
  NOR2X2M U62 ( .A(n50), .B(n39), .Y(ab_7__0_) );
  NOR2X2M U63 ( .A(n38), .B(n45), .Y(ab_1__7_) );
  NOR2X2M U64 ( .A(n51), .B(n44), .Y(ab_2__6_) );
  AND2X2M U65 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n4) );
  NOR2X2M U66 ( .A(n41), .B(n44), .Y(ab_2__5_) );
  AND2X2M U67 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n7) );
  CLKXOR2X2M U68 ( .A(ab_1__6_), .B(ab_0__7_), .Y(SUMB_1__6_) );
  NOR2X2M U69 ( .A(n42), .B(n44), .Y(ab_2__4_) );
  AND2X2M U70 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n5) );
  CLKXOR2X2M U71 ( .A(ab_1__5_), .B(ab_0__6_), .Y(SUMB_1__5_) );
  NOR2X2M U72 ( .A(n38), .B(n44), .Y(ab_2__7_) );
  NOR2X2M U73 ( .A(n51), .B(n46), .Y(ab_3__6_) );
  NOR2X2M U74 ( .A(n41), .B(n47), .Y(ab_4__5_) );
  NOR2X2M U75 ( .A(n42), .B(n48), .Y(ab_5__4_) );
  NOR2X2M U76 ( .A(n38), .B(n46), .Y(ab_3__7_) );
  NOR2X2M U77 ( .A(n51), .B(n47), .Y(ab_4__6_) );
  NOR2X2M U78 ( .A(n41), .B(n48), .Y(ab_5__5_) );
  NOR2X2M U79 ( .A(n42), .B(n49), .Y(ab_6__4_) );
  NOR2X2M U80 ( .A(n40), .B(n44), .Y(ab_2__1_) );
  AND2X2M U81 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n8) );
  CLKXOR2X2M U82 ( .A(ab_1__2_), .B(ab_0__3_), .Y(SUMB_1__2_) );
  NOR2X2M U83 ( .A(n41), .B(n46), .Y(ab_3__5_) );
  NOR2X2M U84 ( .A(n42), .B(n46), .Y(ab_3__4_) );
  NOR2X2M U85 ( .A(n53), .B(n46), .Y(ab_3__2_) );
  NOR2X2M U86 ( .A(n40), .B(n46), .Y(ab_3__1_) );
  NOR2X2M U87 ( .A(n42), .B(n47), .Y(ab_4__4_) );
  NOR2X2M U88 ( .A(n53), .B(n47), .Y(ab_4__2_) );
  NOR2X2M U89 ( .A(n40), .B(n47), .Y(ab_4__1_) );
  NOR2X2M U90 ( .A(n53), .B(n48), .Y(ab_5__2_) );
  NOR2X2M U91 ( .A(n40), .B(n48), .Y(ab_5__1_) );
  NOR2X2M U92 ( .A(n39), .B(n49), .Y(ab_6__0_) );
  NOR2X2M U93 ( .A(n53), .B(n49), .Y(ab_6__2_) );
  NOR2X2M U94 ( .A(n40), .B(n49), .Y(ab_6__1_) );
  NOR2X2M U95 ( .A(n53), .B(n43), .Y(ab_0__2_) );
  NOR2X2M U96 ( .A(n39), .B(n45), .Y(ab_1__0_) );
  NOR2X2M U97 ( .A(n40), .B(n45), .Y(ab_1__1_) );
  NOR2X2M U98 ( .A(n50), .B(n42), .Y(ab_7__4_) );
  NOR2X2M U99 ( .A(n50), .B(n41), .Y(ab_7__5_) );
  NOR2X2M U100 ( .A(n38), .B(n47), .Y(ab_4__7_) );
  NOR2X2M U101 ( .A(n51), .B(n48), .Y(ab_5__6_) );
  NOR2X2M U102 ( .A(n41), .B(n49), .Y(ab_6__5_) );
  NOR2X2M U103 ( .A(n38), .B(n48), .Y(ab_5__7_) );
  NOR2X2M U104 ( .A(n51), .B(n49), .Y(ab_6__6_) );
  AND2X2M U105 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n9) );
  NOR2X2M U106 ( .A(n39), .B(n44), .Y(ab_2__0_) );
  CLKXOR2X2M U107 ( .A(ab_1__1_), .B(ab_0__2_), .Y(SUMB_1__1_) );
  NOR2X2M U108 ( .A(n39), .B(n46), .Y(ab_3__0_) );
  NOR2X2M U109 ( .A(n39), .B(n47), .Y(ab_4__0_) );
  NOR2X2M U110 ( .A(n39), .B(n48), .Y(ab_5__0_) );
  NOR2X2M U111 ( .A(n38), .B(n49), .Y(ab_6__7_) );
  NOR2X2M U112 ( .A(n50), .B(n51), .Y(ab_7__6_) );
endmodule


module ALU ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232;
  wire   [15:0] ALU_OUT_Comb;

  AOI32X4M U111 ( .A0(n127), .A1(n232), .A2(ALU_FUN[2]), .B0(n225), .B1(n111), 
        .Y(n59) );
  ALU_DW_div_uns_0 div_52 ( .a({n193, n190, n187, n184, n181, n178, n175, n173}), .b({B[7:4], n170, B[2:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n193, n190, n187, n184, n181, n178, n175, 
        n172}), .B({1'b0, B[7:4], n170, B[2:0]}), .CI(1'b0), .DIFF({N108, N107, 
        N106, N105, N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n193, n190, n187, n184, n181, n178, n175, 
        n173}), .B({1'b0, B[7:4], n170, B[2:0]}), .CI(1'b0), .SUM({N99, N98, 
        N97, N96, N95, N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n194, n190, n188, n184, n182, n179, n175, n172}), .B({B[7:4], n170, B[2:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRX1M ALU_OUT_reg_7_ ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[7]) );
  DFFRX1M ALU_OUT_reg_11_ ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[11]) );
  DFFRX1M ALU_OUT_reg_10_ ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[10]) );
  DFFRX1M ALU_OUT_reg_9_ ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[9]) );
  DFFRX1M ALU_OUT_reg_8_ ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[8]) );
  DFFRX1M ALU_OUT_reg_6_ ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[6]) );
  DFFRX1M ALU_OUT_reg_12_ ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(n197), .Q(
        ALU_OUT[12]) );
  DFFRX1M ALU_OUT_reg_5_ ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[5]) );
  DFFRX1M ALU_OUT_reg_4_ ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[4]) );
  DFFRX1M ALU_OUT_reg_13_ ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(n197), .Q(
        ALU_OUT[13]) );
  DFFRX1M ALU_OUT_reg_14_ ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(n197), .Q(
        ALU_OUT[14]) );
  DFFRX1M ALU_OUT_reg_15_ ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(n197), .Q(
        ALU_OUT[15]) );
  DFFRX1M ALU_OUT_reg_3_ ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[3]) );
  DFFRX1M ALU_OUT_reg_2_ ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[2]) );
  DFFRX1M ALU_OUT_reg_1_ ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[1]) );
  DFFRX1M ALU_OUT_reg_0_ ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(n196), .Q(
        ALU_OUT[0]) );
  DFFRX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(n196), .Q(OUT_VALID) );
  AOI31X2M U5 ( .A0(n208), .A1(n210), .A2(B[0]), .B0(B[1]), .Y(n142) );
  BUFX2M U6 ( .A(n57), .Y(n168) );
  AOI32X1M U8 ( .A0(n113), .A1(n232), .A2(ALU_FUN[2]), .B0(n225), .B1(n111), 
        .Y(n57) );
  BUFX4M U9 ( .A(n42), .Y(n169) );
  OAI31X2M U10 ( .A0(n221), .A1(n228), .A2(n117), .B0(EN), .Y(n42) );
  NAND2X2M U11 ( .A(n116), .B(n232), .Y(n58) );
  NAND2X2M U12 ( .A(n127), .B(n111), .Y(n56) );
  INVX2M U13 ( .A(ALU_FUN[1]), .Y(n230) );
  NOR3X4M U14 ( .A(n230), .B(ALU_FUN[0]), .C(n231), .Y(n116) );
  NOR2X4M U15 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .Y(n127) );
  NOR2X4M U16 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(n146) );
  OAI2B1X2M U17 ( .A1N(n55), .A0(n128), .B0(n54), .Y(n112) );
  INVX2M U18 ( .A(B[0]), .Y(n203) );
  INVX8M U19 ( .A(n58), .Y(n228) );
  INVX8M U20 ( .A(n60), .Y(n226) );
  INVX4M U21 ( .A(n56), .Y(n223) );
  CLKINVX3M U22 ( .A(n168), .Y(n221) );
  NOR2X4M U23 ( .A(n222), .B(n230), .Y(n113) );
  INVX2M U24 ( .A(n147), .Y(n225) );
  INVX4M U25 ( .A(n59), .Y(n224) );
  CLKAND2X6M U26 ( .A(n146), .B(n225), .Y(n63) );
  NOR2X2M U27 ( .A(n147), .B(n231), .Y(n145) );
  NAND2X2M U28 ( .A(n145), .B(n232), .Y(n60) );
  CLKAND2X6M U29 ( .A(n127), .B(n146), .Y(n45) );
  CLKAND2X4M U30 ( .A(n113), .B(n146), .Y(n62) );
  INVX4M U31 ( .A(n103), .Y(n227) );
  INVX2M U32 ( .A(n61), .Y(n229) );
  AOI222X2M U33 ( .A0(n176), .A1(n226), .B0(n228), .B1(n210), .C0(N126), .C1(
        n62), .Y(n106) );
  AOI222X2M U34 ( .A0(n179), .A1(n226), .B0(n228), .B1(n209), .C0(N127), .C1(
        n62), .Y(n97) );
  NOR2X6M U35 ( .A(n232), .B(ALU_FUN[2]), .Y(n111) );
  OAI2BB1XLM U36 ( .A0N(N118), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1XLM U37 ( .A0N(N119), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1XLM U38 ( .A0N(N120), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1XLM U39 ( .A0N(N121), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1XLM U40 ( .A0N(N122), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1XLM U41 ( .A0N(N123), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1XLM U42 ( .A0N(N124), .A1N(n195), .B0(n169), .Y(ALU_OUT_Comb[15]) );
  INVX4M U43 ( .A(ALU_FUN[3]), .Y(n232) );
  NAND2X2M U44 ( .A(ALU_FUN[0]), .B(n230), .Y(n147) );
  INVX2M U45 ( .A(ALU_FUN[0]), .Y(n222) );
  AOI222X2M U46 ( .A0(n182), .A1(n226), .B0(n228), .B1(n212), .C0(N128), .C1(
        n62), .Y(n89) );
  AOI221X2M U47 ( .A0(n182), .A1(n223), .B0(n221), .B1(n212), .C0(n228), .Y(
        n92) );
  AO21XLM U48 ( .A0(N112), .A1(n195), .B0(n87), .Y(ALU_OUT_Comb[3]) );
  AOI31X2M U49 ( .A0(n88), .A1(n89), .A2(n90), .B0(n199), .Y(n87) );
  AOI22X1M U50 ( .A0(N94), .A1(n45), .B0(N103), .B1(n63), .Y(n88) );
  AOI221X2M U51 ( .A0(n223), .A1(n208), .B0(n173), .B1(n224), .C0(n226), .Y(
        n144) );
  AOI221X2M U52 ( .A0(n223), .A1(n210), .B0(n176), .B1(n224), .C0(n226), .Y(
        n115) );
  INVX2M U53 ( .A(ALU_FUN[2]), .Y(n231) );
  AOI21X2M U54 ( .A0(n182), .A1(n224), .B0(n226), .Y(n93) );
  AOI222X2M U55 ( .A0(n185), .A1(n226), .B0(n228), .B1(n213), .C0(N129), .C1(
        n62), .Y(n81) );
  AOI222X2M U56 ( .A0(n226), .A1(n191), .B0(n228), .B1(n215), .C0(N131), .C1(
        n62), .Y(n66) );
  NAND2X4M U57 ( .A(ALU_FUN[3]), .B(n116), .Y(n61) );
  AOI22X1M U58 ( .A0(n191), .A1(n229), .B0(n228), .B1(n217), .Y(n49) );
  AOI22X1M U59 ( .A0(N130), .A1(n62), .B0(n188), .B1(n226), .Y(n74) );
  AOI22X1M U60 ( .A0(N132), .A1(n62), .B0(n226), .B1(n194), .Y(n48) );
  CLKBUFX8M U61 ( .A(n41), .Y(n195) );
  NOR4BX2M U62 ( .AN(n146), .B(n199), .C(n230), .D(ALU_FUN[0]), .Y(n41) );
  NAND2X2M U63 ( .A(n145), .B(ALU_FUN[3]), .Y(n103) );
  NAND3X2M U64 ( .A(ALU_FUN[1]), .B(n222), .C(n111), .Y(n125) );
  INVX4M U65 ( .A(n176), .Y(n210) );
  INVX4M U66 ( .A(n173), .Y(n208) );
  INVX6M U67 ( .A(EN), .Y(n199) );
  INVX4M U68 ( .A(n182), .Y(n212) );
  INVX4M U69 ( .A(n179), .Y(n209) );
  INVX2M U70 ( .A(n68), .Y(n216) );
  INVX4M U71 ( .A(n188), .Y(n214) );
  INVX2M U72 ( .A(n185), .Y(n213) );
  INVX2M U73 ( .A(n194), .Y(n217) );
  INVX2M U74 ( .A(n191), .Y(n215) );
  INVX6M U75 ( .A(n198), .Y(n196) );
  INVX2M U76 ( .A(n198), .Y(n197) );
  AOI222X2M U77 ( .A0(n173), .A1(n226), .B0(n228), .B1(n208), .C0(N125), .C1(
        n62), .Y(n120) );
  AO21XLM U78 ( .A0(N109), .A1(n195), .B0(n118), .Y(ALU_OUT_Comb[0]) );
  AOI31X2M U79 ( .A0(n119), .A1(n120), .A2(n121), .B0(n199), .Y(n118) );
  AOI22X1M U80 ( .A0(N91), .A1(n45), .B0(N100), .B1(n63), .Y(n119) );
  INVX4M U81 ( .A(n192), .Y(n193) );
  INVX4M U82 ( .A(n189), .Y(n190) );
  AO21XLM U83 ( .A0(N110), .A1(n195), .B0(n104), .Y(ALU_OUT_Comb[1]) );
  AOI31X2M U84 ( .A0(n105), .A1(n106), .A2(n107), .B0(n199), .Y(n104) );
  AOI22X1M U85 ( .A0(N92), .A1(n45), .B0(N101), .B1(n63), .Y(n105) );
  INVX4M U86 ( .A(n186), .Y(n187) );
  INVX4M U87 ( .A(n183), .Y(n184) );
  INVX4M U88 ( .A(n180), .Y(n181) );
  AO21XLM U89 ( .A0(N111), .A1(n195), .B0(n95), .Y(ALU_OUT_Comb[2]) );
  AOI31X2M U90 ( .A0(n96), .A1(n97), .A2(n98), .B0(n199), .Y(n95) );
  AOI22X1M U91 ( .A0(N93), .A1(n45), .B0(N102), .B1(n63), .Y(n96) );
  AND2X2M U92 ( .A(N108), .B(n63), .Y(n117) );
  OAI211X1M U93 ( .A0(n43), .A1(n199), .B0(n169), .C0(n44), .Y(ALU_OUT_Comb[8]) );
  NAND2X2M U94 ( .A(N117), .B(n195), .Y(n44) );
  AOI22X1M U95 ( .A0(n194), .A1(n229), .B0(N99), .B1(n45), .Y(n43) );
  AOI221X2M U96 ( .A0(n185), .A1(n227), .B0(n211), .B1(n223), .C0(n91), .Y(n90) );
  INVX2M U97 ( .A(n94), .Y(n211) );
  OAI222X1M U98 ( .A0(n170), .A1(n92), .B0(n93), .B1(n219), .C0(n61), .C1(n209), .Y(n91) );
  INVX2M U99 ( .A(n170), .Y(n219) );
  AOI211X2M U100 ( .A0(n122), .A1(n203), .B0(n123), .C0(n124), .Y(n121) );
  OAI31X2M U101 ( .A0(n125), .A1(n126), .A2(n112), .B0(n114), .Y(n124) );
  OAI221X1M U102 ( .A0(n172), .A1(n168), .B0(n56), .B1(n208), .C0(n58), .Y(
        n122) );
  OAI22X1M U103 ( .A0(n103), .A1(n210), .B0(n144), .B1(n203), .Y(n123) );
  AOI211X2M U104 ( .A0(n108), .A1(n204), .B0(n109), .C0(n200), .Y(n107) );
  INVX2M U105 ( .A(n110), .Y(n200) );
  OAI221X1M U106 ( .A0(n176), .A1(n168), .B0(n56), .B1(n210), .C0(n58), .Y(
        n108) );
  OAI222X1M U107 ( .A0(n61), .A1(n208), .B0(n115), .B1(n204), .C0(n103), .C1(
        n209), .Y(n109) );
  AO21XLM U108 ( .A0(N114), .A1(n195), .B0(n72), .Y(ALU_OUT_Comb[5]) );
  AOI31X2M U109 ( .A0(n73), .A1(n74), .A2(n75), .B0(n199), .Y(n72) );
  AOI22X1M U110 ( .A0(N96), .A1(n45), .B0(N105), .B1(n63), .Y(n73) );
  INVX4M U112 ( .A(n177), .Y(n178) );
  AO21XLM U113 ( .A0(N113), .A1(n195), .B0(n79), .Y(ALU_OUT_Comb[4]) );
  AOI31X2M U114 ( .A0(n80), .A1(n81), .A2(n82), .B0(n199), .Y(n79) );
  AOI22X1M U115 ( .A0(N95), .A1(n45), .B0(N104), .B1(n63), .Y(n80) );
  AO21XLM U116 ( .A0(N115), .A1(n195), .B0(n64), .Y(ALU_OUT_Comb[6]) );
  AOI31X2M U117 ( .A0(n65), .A1(n66), .A2(n67), .B0(n199), .Y(n64) );
  AOI22X1M U118 ( .A0(N97), .A1(n45), .B0(N106), .B1(n63), .Y(n65) );
  OAI2BB2X1M U119 ( .B0(n46), .B1(n199), .A0N(N116), .A1N(n195), .Y(
        ALU_OUT_Comb[7]) );
  AND4X2M U120 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  AOI22X1M U121 ( .A0(N98), .A1(n45), .B0(N107), .B1(n63), .Y(n47) );
  INVX4M U122 ( .A(n174), .Y(n175) );
  INVX4M U123 ( .A(n171), .Y(n172) );
  AOI31X2M U124 ( .A0(n111), .A1(n112), .A2(n113), .B0(n201), .Y(n110) );
  INVX2M U125 ( .A(n114), .Y(n201) );
  NAND4X2M U126 ( .A(n127), .B(ALU_FUN[3]), .C(ALU_FUN[2]), .D(n126), .Y(n114)
         );
  INVX4M U127 ( .A(n177), .Y(n179) );
  INVX4M U128 ( .A(n180), .Y(n182) );
  AOI31X2M U129 ( .A0(n176), .A1(n203), .A2(n172), .B0(n204), .Y(n135) );
  NOR2X2M U130 ( .A(n220), .B(n179), .Y(n140) );
  AO21X2M U131 ( .A0(n220), .A1(n179), .B0(n140), .Y(n99) );
  INVX4M U132 ( .A(n186), .Y(n188) );
  INVX4M U133 ( .A(n171), .Y(n173) );
  INVX4M U134 ( .A(n174), .Y(n176) );
  XNOR2X4M U135 ( .A(n207), .B(n185), .Y(n83) );
  XNOR2X4M U136 ( .A(n218), .B(n191), .Y(n68) );
  AOI21X2M U137 ( .A0(n172), .A1(n203), .B0(n176), .Y(n136) );
  NAND2X2M U138 ( .A(n170), .B(n212), .Y(n94) );
  INVX4M U139 ( .A(n189), .Y(n191) );
  INVX4M U140 ( .A(n192), .Y(n194) );
  INVX4M U141 ( .A(n183), .Y(n185) );
  NAND2X2M U142 ( .A(n193), .B(n202), .Y(n54) );
  NAND2X2M U143 ( .A(n187), .B(n205), .Y(n132) );
  INVX2M U144 ( .A(RST), .Y(n198) );
  CLKBUFX6M U145 ( .A(B[3]), .Y(n170) );
  INVX2M U146 ( .A(A[6]), .Y(n189) );
  INVX2M U147 ( .A(A[7]), .Y(n192) );
  INVX2M U148 ( .A(A[5]), .Y(n186) );
  INVX2M U149 ( .A(A[4]), .Y(n183) );
  INVX2M U150 ( .A(A[3]), .Y(n180) );
  AOI221X2M U151 ( .A0(n227), .A1(n191), .B0(n228), .B1(n214), .C0(n76), .Y(
        n75) );
  OAI222X1M U152 ( .A0(n77), .A1(n205), .B0(B[5]), .B1(n78), .C0(n61), .C1(
        n213), .Y(n76) );
  AOI221X2M U153 ( .A0(n223), .A1(n214), .B0(n188), .B1(n224), .C0(n226), .Y(
        n77) );
  AOI221X2M U154 ( .A0(n188), .A1(n223), .B0(n221), .B1(n214), .C0(n228), .Y(
        n78) );
  AOI221X2M U155 ( .A0(n182), .A1(n227), .B0(n223), .B1(n99), .C0(n100), .Y(
        n98) );
  OAI222X1M U156 ( .A0(n101), .A1(n220), .B0(B[2]), .B1(n102), .C0(n61), .C1(
        n210), .Y(n100) );
  AOI21X2M U157 ( .A0(n179), .A1(n224), .B0(n226), .Y(n101) );
  AOI21X2M U158 ( .A0(n221), .A1(n209), .B0(n228), .Y(n102) );
  AOI221X2M U159 ( .A0(n227), .A1(n188), .B0(n223), .B1(n83), .C0(n84), .Y(n82) );
  OAI222X1M U160 ( .A0(n85), .A1(n207), .B0(B[4]), .B1(n86), .C0(n61), .C1(
        n212), .Y(n84) );
  AOI21X2M U161 ( .A0(n185), .A1(n224), .B0(n226), .Y(n85) );
  AOI21X2M U162 ( .A0(n221), .A1(n213), .B0(n228), .Y(n86) );
  AOI221X2M U163 ( .A0(n227), .A1(n194), .B0(n223), .B1(n68), .C0(n69), .Y(n67) );
  OAI222X1M U164 ( .A0(n70), .A1(n218), .B0(B[6]), .B1(n71), .C0(n61), .C1(
        n214), .Y(n69) );
  AOI21X2M U165 ( .A0(n191), .A1(n224), .B0(n226), .Y(n70) );
  AOI21X2M U166 ( .A0(n221), .A1(n215), .B0(n228), .Y(n71) );
  INVX2M U167 ( .A(A[2]), .Y(n177) );
  AOI221X2M U168 ( .A0(B[7]), .A1(n51), .B0(n52), .B1(n202), .C0(n53), .Y(n50)
         );
  AOI21X2M U169 ( .A0(n54), .A1(n55), .B0(n56), .Y(n53) );
  OAI21X2M U170 ( .A0(n59), .A1(n217), .B0(n60), .Y(n51) );
  OAI21X1M U171 ( .A0(n194), .A1(n168), .B0(n58), .Y(n52) );
  INVX2M U172 ( .A(A[1]), .Y(n174) );
  INVX2M U173 ( .A(A[0]), .Y(n171) );
  OAI211X2M U174 ( .A0(n133), .A1(n134), .B0(n94), .C0(n206), .Y(n131) );
  NOR2X2M U175 ( .A(n170), .B(n212), .Y(n133) );
  INVX2M U176 ( .A(n83), .Y(n206) );
  OAI32X2M U177 ( .A0(n99), .A1(n135), .A2(n136), .B0(B[2]), .B1(n209), .Y(
        n134) );
  OAI31X2M U178 ( .A0(n99), .A1(n142), .A2(n143), .B0(n94), .Y(n141) );
  AOI21X2M U179 ( .A0(B[0]), .A1(n208), .B0(n210), .Y(n143) );
  OAI2B1X4M U180 ( .A1N(n54), .A0(n137), .B0(n55), .Y(n126) );
  AOI32X1M U181 ( .A0(n138), .A1(n132), .A2(n216), .B0(B[6]), .B1(n215), .Y(
        n137) );
  OAI222X1M U182 ( .A0(n185), .A1(n207), .B0(n83), .B1(n139), .C0(n188), .C1(
        n205), .Y(n138) );
  OAI22X1M U183 ( .A0(n170), .A1(n212), .B0(n140), .B1(n141), .Y(n139) );
  AOI32X1M U184 ( .A0(n129), .A1(n130), .A2(n216), .B0(n191), .B1(n218), .Y(
        n128) );
  NAND2X2M U185 ( .A(B[5]), .B(n214), .Y(n129) );
  OAI211X2M U186 ( .A0(B[4]), .A1(n213), .B0(n131), .C0(n132), .Y(n130) );
  INVX2M U187 ( .A(B[2]), .Y(n220) );
  INVX2M U188 ( .A(B[6]), .Y(n218) );
  INVX2M U189 ( .A(B[4]), .Y(n207) );
  INVX2M U190 ( .A(B[1]), .Y(n204) );
  NAND2X2M U191 ( .A(B[7]), .B(n217), .Y(n55) );
  INVX2M U192 ( .A(B[5]), .Y(n205) );
  INVX2M U193 ( .A(B[7]), .Y(n202) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_UART_RST, SYNC_REF_RST, UART_RX_V_OUT, UART_RX_V_SYNC,
         UART_TX_VLD, UART_TX_CLK, UART_TX_Busy_PULSE, UART_TX_V_SYNC,
         UART_TX_Busy, UART_RX_CLK, ALU_OUT_VLD, ALU_EN, CLKG_EN, RF_WrEn,
         RF_RdEn, RF_RdData_VLD, ALU_CLK, n8, n9, n10, n11, n12, n13, n14, n15
;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [7:0] RF_RdData;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(
        SYNC_UART_RST) );
  RST_SYNC_NUM_STAGES2_1 U1_RST_SYNC ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        SYNC_REF_RST) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U0_ref_sync ( .CLK(REF_CLK), .RST(n10), 
        .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .sync_bus(
        UART_RX_SYNC), .enable_pulse_d(UART_RX_V_SYNC) );
  Async_fifo_D_SIZE8_P_SIZE4_F_DEPTH8 U0_UART_FIFO ( .i_w_clk(REF_CLK), 
        .i_w_rstn(n11), .i_w_inc(UART_TX_VLD), .i_r_clk(UART_TX_CLK), 
        .i_r_rstn(n14), .i_r_inc(UART_TX_Busy_PULSE), .i_w_data(UART_TX_IN), 
        .o_r_data(UART_TX_SYNC), .o_empty(UART_TX_V_SYNC) );
  PULSE_GEN U0_PULSE_GEN ( .clk(UART_TX_CLK), .rst(n14), .lvl_sig(UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE) );
  ClkDiv_0 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n14), .i_clk_en(1'b1), 
        .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_1 U1_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n14), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), .o_div_clk(
        UART_RX_CLK) );
  UART_DATA_WIDTH8 U0_UART ( .RST(n14), .TX_CLK(UART_TX_CLK), .RX_CLK(
        UART_RX_CLK), .RX_IN_S(UART_RX_IN), .RX_OUT_P(UART_RX_OUT), .RX_OUT_V(
        UART_RX_V_OUT), .TX_IN_P(UART_TX_SYNC), .TX_IN_V(n8), .TX_OUT_S(
        UART_TX_O), .TX_OUT_V(UART_TX_Busy), .Prescale(UART_Config[7:2]), 
        .parity_enable(UART_Config[0]), .parity_type(UART_Config[1]), 
        .parity_error(parity_error), .framing_error(framing_error) );
  sys_ctrl sys_cntrl_inst ( .clk(REF_CLK), .rst(RST_N), .alu_out(ALU_OUT), 
        .out_valid(ALU_OUT_VLD), .alu_fun(ALU_FUN), .en(ALU_EN), .clk_en(
        CLKG_EN), .address(RF_Address), .wr_en(RF_WrEn), .rd_en(RF_RdEn), 
        .wr_data(RF_WrData), .rd_data(RF_RdData), .rd_data_valid(RF_RdData_VLD), .rx_p_data(UART_RX_SYNC), .rx_d_valid(UART_RX_V_SYNC), .tx_p_data(UART_TX_IN), .tx_d_valid(UART_TX_VLD) );
  RegFile U0_RegFile ( .CLK(REF_CLK), .RST(n9), .WrEn(RF_WrEn), .RdEn(RF_RdEn), 
        .Address(RF_Address), .WrData(RF_WrData), .RdData(RF_RdData), 
        .RdData_VLD(RF_RdData_VLD), .REG0(Operand_A), .REG1(Operand_B), .REG2(
        UART_Config), .REG3(DIV_RATIO) );
  ALU U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), .ALU_FUN(ALU_FUN), 
        .CLK(ALU_CLK), .RST(n12), .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VLD)
         );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  INVX2M U3 ( .A(n13), .Y(n9) );
  INVXLM U4 ( .A(n13), .Y(n10) );
  INVXLM U5 ( .A(n13), .Y(n11) );
  INVX4M U6 ( .A(n15), .Y(n14) );
  INVX2M U7 ( .A(n13), .Y(n12) );
  INVX2M U8 ( .A(UART_TX_V_SYNC), .Y(n8) );
  INVX2M U14 ( .A(SYNC_UART_RST), .Y(n15) );
  INVX2M U15 ( .A(SYNC_REF_RST), .Y(n13) );
endmodule

