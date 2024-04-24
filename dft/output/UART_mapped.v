/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Apr 18 17:18:50 2024
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MUX21X2_RVT U1 ( .A1(IN_0), .A2(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MUX21X2_RVT U1 ( .A1(IN_0), .A2(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MUX21X1_RVT U1 ( .A1(IN_0), .A2(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module uart_tx_fsm_test_1 ( CLK, RST, Data_Valid, ser_done, parity_enable, 
        Ser_enable, mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, ser_done, parity_enable, test_si, test_se;
  output Ser_enable, busy, test_so;
  wire   current_state_1_, current_state_0_, busy_c, n5, n7, n8, n10, n11, n12,
         n13, n14, n15, n6, n9, n17;
  wire   [2:0] next_state;

  SDFFARX1_RVT current_state_reg_0_ ( .D(next_state[0]), .SI(n17), .SE(test_se), .CLK(CLK), .RSTB(RST), .Q(current_state_0_), .QN(n8) );
  SDFFARX1_RVT current_state_reg_1_ ( .D(next_state[1]), .SI(n8), .SE(test_se), 
        .CLK(CLK), .RSTB(RST), .Q(current_state_1_), .QN(n7) );
  SDFFARX1_RVT current_state_reg_2_ ( .D(next_state[2]), .SI(n7), .SE(test_se), 
        .CLK(CLK), .RSTB(RST), .Q(test_so), .QN(n5) );
  SDFFARX1_RVT busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(busy), .QN(n17) );
  NOR3X0_RVT U9 ( .A1(n7), .A2(test_so), .A3(n10), .Y(next_state[2]) );
  OA21X1_RVT U10 ( .A1(parity_enable), .A2(n6), .A3(current_state_0_), .Y(n10)
         );
  OA21X1_RVT U11 ( .A1(n11), .A2(n12), .A3(n5), .Y(next_state[1]) );
  AND2X1_RVT U12 ( .A1(n13), .A2(n5), .Y(next_state[0]) );
  AO22X1_RVT U13 ( .A1(current_state_0_), .A2(n6), .A3(n14), .A4(n7), .Y(n13)
         );
  OR2X1_RVT U14 ( .A1(Data_Valid), .A2(current_state_0_), .Y(n14) );
  AO21X1_RVT U15 ( .A1(n8), .A2(n5), .A3(n15), .Y(mux_sel[1]) );
  AO22X1_RVT U16 ( .A1(n9), .A2(n5), .A3(test_so), .A4(n15), .Y(mux_sel[0]) );
  AO21X1_RVT U17 ( .A1(current_state_0_), .A2(n5), .A3(n15), .Y(busy_c) );
  AND3X1_RVT U18 ( .A1(n5), .A2(n6), .A3(n11), .Y(Ser_enable) );
  AND2X1_RVT U19 ( .A1(n9), .A2(current_state_0_), .Y(n11) );
  AO21X1_RVT U20 ( .A1(current_state_0_), .A2(n7), .A3(n15), .Y(n12) );
  AND2X1_RVT U21 ( .A1(current_state_1_), .A2(n8), .Y(n15) );
  INVX1_RVT U7 ( .A(n12), .Y(n9) );
  INVX1_RVT U8 ( .A(ser_done), .Y(n6) );
endmodule


module Serializer_WIDTH8_test_1 ( CLK, RST, DATA, Enable, Busy, Data_Valid, 
        ser_out, ser_done, test_si, test_so, test_se );
  input [7:0] DATA;
  input CLK, RST, Enable, Busy, Data_Valid, test_si, test_se;
  output ser_out, ser_done, test_so;
  wire   N23, N24, N25, n13, n14, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n15, n16, n17, n33, n34, n35, n36, n37, n38,
         n39, n40;
  wire   [7:1] DATA_V;
  wire   [2:0] ser_count;

  SDFFARX1_RVT DATA_V_reg_7_ ( .D(n25), .SI(n34), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[7]), .QN(n33) );
  SDFFARX1_RVT DATA_V_reg_6_ ( .D(n26), .SI(n35), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[6]), .QN(n34) );
  SDFFARX1_RVT DATA_V_reg_5_ ( .D(n27), .SI(n36), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[5]), .QN(n35) );
  SDFFARX1_RVT DATA_V_reg_4_ ( .D(n28), .SI(n37), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[4]), .QN(n36) );
  SDFFARX1_RVT DATA_V_reg_3_ ( .D(n29), .SI(n38), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[3]), .QN(n37) );
  SDFFARX1_RVT DATA_V_reg_2_ ( .D(n30), .SI(n39), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[2]), .QN(n38) );
  SDFFARX1_RVT DATA_V_reg_1_ ( .D(n31), .SI(n40), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(DATA_V[1]), .QN(n39) );
  SDFFARX1_RVT DATA_V_reg_0_ ( .D(n24), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(ser_out), .QN(n40) );
  SDFFARX1_RVT ser_count_reg_0_ ( .D(N23), .SI(n33), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(ser_count[0]), .QN(n14) );
  SDFFARX1_RVT ser_count_reg_1_ ( .D(N24), .SI(n14), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(ser_count[1]), .QN(n13) );
  SDFFARX1_RVT ser_count_reg_2_ ( .D(N25), .SI(n13), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(ser_count[2]), .QN(test_so) );
  AND3X1_RVT U18 ( .A1(ser_count[1]), .A2(ser_count[0]), .A3(ser_count[2]), 
        .Y(ser_done) );
  AO222X1_RVT U19 ( .A1(DATA[0]), .A2(n16), .A3(DATA_V[1]), .A4(n15), .A5(
        ser_out), .A6(n18), .Y(n24) );
  AO22X1_RVT U20 ( .A1(DATA_V[7]), .A2(n18), .A3(DATA[7]), .A4(n16), .Y(n25)
         );
  AO222X1_RVT U21 ( .A1(DATA[6]), .A2(n16), .A3(DATA_V[7]), .A4(n15), .A5(
        DATA_V[6]), .A6(n18), .Y(n26) );
  AO222X1_RVT U22 ( .A1(DATA[5]), .A2(n16), .A3(DATA_V[6]), .A4(n15), .A5(
        DATA_V[5]), .A6(n18), .Y(n27) );
  AO222X1_RVT U23 ( .A1(DATA[4]), .A2(n16), .A3(DATA_V[5]), .A4(n15), .A5(
        DATA_V[4]), .A6(n18), .Y(n28) );
  AO222X1_RVT U24 ( .A1(DATA[3]), .A2(n16), .A3(DATA_V[4]), .A4(n15), .A5(
        DATA_V[3]), .A6(n18), .Y(n29) );
  AO222X1_RVT U25 ( .A1(DATA[2]), .A2(n16), .A3(DATA_V[3]), .A4(n15), .A5(
        DATA_V[2]), .A6(n18), .Y(n30) );
  AO222X1_RVT U26 ( .A1(DATA[1]), .A2(n16), .A3(DATA_V[2]), .A4(n15), .A5(n18), 
        .A6(DATA_V[1]), .Y(n31) );
  AND2X1_RVT U27 ( .A1(n19), .A2(n20), .Y(n18) );
  NAND2X0_RVT U28 ( .A1(Enable), .A2(n19), .Y(n20) );
  NAND2X0_RVT U29 ( .A1(Data_Valid), .A2(n17), .Y(n19) );
  AO21X1_RVT U30 ( .A1(ser_count[2]), .A2(n21), .A3(n22), .Y(N25) );
  AND4X1_RVT U31 ( .A1(Enable), .A2(ser_count[1]), .A3(ser_count[0]), .A4(
        test_so), .Y(n22) );
  AO21X1_RVT U32 ( .A1(Enable), .A2(n13), .A3(N23), .Y(n21) );
  AND2X1_RVT U33 ( .A1(Enable), .A2(n23), .Y(N24) );
  AND2X1_RVT U34 ( .A1(Enable), .A2(n14), .Y(N23) );
  INVX1_RVT U14 ( .A(n20), .Y(n15) );
  INVX1_RVT U15 ( .A(n19), .Y(n16) );
  INVX1_RVT U16 ( .A(Busy), .Y(n17) );
  XNOR2X1_RVT U17 ( .A1(n13), .A2(ser_count[0]), .Y(n23) );
endmodule


module mux_test_1 ( CLK, RST, IN_0, IN_1, IN_2, IN_3, SEL, OUT, test_si, 
        test_se );
  input [1:0] SEL;
  input CLK, RST, IN_0, IN_1, IN_2, IN_3, test_si, test_se;
  output OUT;
  wire   mux_out, n4, n5, n2, n3;

  SDFFARX1_RVT OUT_reg ( .D(mux_out), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(OUT) );
  AO22X1_RVT U6 ( .A1(SEL[1]), .A2(n4), .A3(n5), .A4(n2), .Y(mux_out) );
  AO22X1_RVT U7 ( .A1(SEL[0]), .A2(IN_1), .A3(IN_0), .A4(n3), .Y(n5) );
  AO22X1_RVT U8 ( .A1(IN_3), .A2(SEL[0]), .A3(IN_2), .A4(n3), .Y(n4) );
  INVX1_RVT U4 ( .A(SEL[0]), .Y(n3) );
  INVX1_RVT U5 ( .A(SEL[1]), .Y(n2) );
endmodule


module parity_calc_WIDTH8_test_1 ( CLK, RST, parity_enable, parity_type, Busy, 
        DATA, Data_Valid, parity, test_si, test_so, test_se );
  input [7:0] DATA;
  input CLK, RST, parity_enable, parity_type, Busy, Data_Valid, test_si,
         test_se;
  output parity, test_so;
  wire   n2, n3, n4, n5, n8, n18, n20, n22, n23, n24, n25, n27, n29, n31, n33,
         n35, n37, n39, n41, n43, n1, n6, n7, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n26, n28;

  SDFFARX1_RVT DATA_V_reg_7_ ( .D(n43), .SI(n12), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n11), .QN(n25) );
  SDFFARX1_RVT DATA_V_reg_6_ ( .D(n41), .SI(n6), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n12), .QN(n24) );
  SDFFARX1_RVT DATA_V_reg_5_ ( .D(n39), .SI(n9), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n6), .QN(n23) );
  SDFFARX1_RVT DATA_V_reg_4_ ( .D(n37), .SI(n26), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n9), .QN(n22) );
  SDFFARX1_RVT DATA_V_reg_3_ ( .D(n35), .SI(n1), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n13), .QN(n26) );
  SDFFARX1_RVT DATA_V_reg_2_ ( .D(n33), .SI(n28), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n1), .QN(n20) );
  SDFFARX1_RVT DATA_V_reg_1_ ( .D(n31), .SI(n7), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n14), .QN(n28) );
  SDFFARX1_RVT DATA_V_reg_0_ ( .D(n29), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n7), .QN(n18) );
  SDFFARX1_RVT parity_reg ( .D(n27), .SI(n11), .SE(test_se), .CLK(CLK), .RSTB(
        RST), .Q(parity), .QN(test_so) );
  AO22X1_RVT U2 ( .A1(parity), .A2(n17), .A3(parity_enable), .A4(n2), .Y(n27)
         );
  XNOR3X1_RVT U3 ( .A1(parity_type), .A2(n3), .A3(n4), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(n24), .A2(n25), .A3(n5), .Y(n4) );
  AO22X1_RVT U9 ( .A1(n8), .A2(n7), .A3(DATA[0]), .A4(n15), .Y(n29) );
  AO22X1_RVT U11 ( .A1(n8), .A2(n14), .A3(DATA[1]), .A4(n15), .Y(n31) );
  AO22X1_RVT U13 ( .A1(n8), .A2(n1), .A3(DATA[2]), .A4(n15), .Y(n33) );
  AO22X1_RVT U15 ( .A1(n8), .A2(n13), .A3(DATA[3]), .A4(n15), .Y(n35) );
  AO22X1_RVT U17 ( .A1(n8), .A2(n9), .A3(DATA[4]), .A4(n15), .Y(n37) );
  AO22X1_RVT U19 ( .A1(n8), .A2(n6), .A3(DATA[5]), .A4(n15), .Y(n39) );
  AO22X1_RVT U21 ( .A1(n8), .A2(n12), .A3(DATA[6]), .A4(n15), .Y(n41) );
  AO22X1_RVT U23 ( .A1(n8), .A2(n11), .A3(DATA[7]), .A4(n15), .Y(n43) );
  INVX1_RVT U5 ( .A(n8), .Y(n15) );
  XNOR3X1_RVT U6 ( .A1(n20), .A2(n13), .A3(n10), .Y(n3) );
  XNOR2X1_RVT U7 ( .A1(n14), .A2(n18), .Y(n10) );
  XOR2X1_RVT U8 ( .A1(n22), .A2(n23), .Y(n5) );
  NAND2X0_RVT U10 ( .A1(Data_Valid), .A2(n16), .Y(n8) );
  INVX1_RVT U12 ( .A(Busy), .Y(n16) );
  INVX1_RVT U14 ( .A(parity_enable), .Y(n17) );
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( CLK, RST, P_DATA, Data_Valid, 
        parity_enable, parity_type, TX_OUT, busy, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, parity_enable, parity_type, test_si, test_se;
  output TX_OUT, busy;
  wire   seriz_done, seriz_en, ser_data, parity, n1, n3, n4, n5;
  wire   [1:0] mux_sel;

  NBUFFX4_RVT U3 ( .A(RST), .Y(n1) );
  uart_tx_fsm_test_1 U0_fsm ( .CLK(CLK), .RST(n1), .Data_Valid(Data_Valid), 
        .ser_done(seriz_done), .parity_enable(parity_enable), .Ser_enable(
        seriz_en), .mux_sel(mux_sel), .busy(busy), .test_si(n5), .test_so(n4), 
        .test_se(test_se) );
  Serializer_WIDTH8_test_1 U0_Serializer ( .CLK(CLK), .RST(n1), .DATA(P_DATA), 
        .Enable(seriz_en), .Busy(busy), .Data_Valid(Data_Valid), .ser_out(
        ser_data), .ser_done(seriz_done), .test_si(test_si), .test_so(n5), 
        .test_se(test_se) );
  mux_test_1 U0_mux ( .CLK(CLK), .RST(n1), .IN_0(1'b0), .IN_1(ser_data), 
        .IN_2(parity), .IN_3(1'b1), .SEL(mux_sel), .OUT(TX_OUT), .test_si(n3), 
        .test_se(test_se) );
  parity_calc_WIDTH8_test_1 U0_parity_calc ( .CLK(CLK), .RST(n1), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Busy(busy), 
        .DATA(P_DATA), .Data_Valid(Data_Valid), .parity(parity), .test_si(n4), 
        .test_so(n3), .test_se(test_se) );
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK, RST, S_DATA, Prescale, 
        parity_enable, bit_count, edge_count, par_err, stp_err, strt_glitch, 
        strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en, 
        dat_samp_en, data_valid, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch,
         test_si, test_se;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid, test_so;
  wire   error_check_edge_5_, error_check_edge_4_, error_check_edge_3_,
         error_check_edge_2_, error_check_edge_1_, n17, n18, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n13, n14, n16, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59;
  wire   [5:0] check_edge;
  wire   [2:0] next_state;
  wire   [5:3] sub_40_carry;

  SDFFARX1_RVT current_state_reg_0_ ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CLK(CLK), .RSTB(RST), .Q(n2), .QN(n18) );
  SDFFARX1_RVT current_state_reg_2_ ( .D(next_state[2]), .SI(n17), .SE(test_se), .CLK(CLK), .RSTB(RST), .Q(n1), .QN(test_so) );
  SDFFARX1_RVT current_state_reg_1_ ( .D(next_state[1]), .SI(n2), .SE(test_se), 
        .CLK(CLK), .RSTB(RST), .Q(n28), .QN(n17) );
  INVX1_RVT U4 ( .A(n3), .Y(n7) );
  INVX1_RVT U5 ( .A(n4), .Y(n8) );
  INVX1_RVT U6 ( .A(Prescale[4]), .Y(n9) );
  INVX1_RVT U9 ( .A(Prescale[1]), .Y(error_check_edge_1_) );
  XNOR2X1_RVT U10 ( .A1(Prescale[5]), .A2(sub_40_carry[5]), .Y(
        error_check_edge_5_) );
  OR2X1_RVT U11 ( .A1(Prescale[4]), .A2(sub_40_carry[4]), .Y(sub_40_carry[5])
         );
  XNOR2X1_RVT U12 ( .A1(sub_40_carry[4]), .A2(Prescale[4]), .Y(
        error_check_edge_4_) );
  OR2X1_RVT U13 ( .A1(Prescale[3]), .A2(sub_40_carry[3]), .Y(sub_40_carry[4])
         );
  XNOR2X1_RVT U14 ( .A1(sub_40_carry[3]), .A2(Prescale[3]), .Y(
        error_check_edge_3_) );
  OR2X1_RVT U15 ( .A1(Prescale[2]), .A2(Prescale[1]), .Y(sub_40_carry[3]) );
  XNOR2X1_RVT U16 ( .A1(Prescale[1]), .A2(Prescale[2]), .Y(error_check_edge_2_) );
  INVX0_RVT U17 ( .A(Prescale[0]), .Y(check_edge[0]) );
  OR2X1_RVT U18 ( .A1(Prescale[1]), .A2(Prescale[0]), .Y(n3) );
  AO21X1_RVT U19 ( .A1(Prescale[1]), .A2(Prescale[0]), .A3(n7), .Y(
        check_edge[1]) );
  OR2X1_RVT U20 ( .A1(n3), .A2(Prescale[2]), .Y(n4) );
  AO21X1_RVT U21 ( .A1(Prescale[2]), .A2(n3), .A3(n8), .Y(check_edge[2]) );
  NOR2X0_RVT U22 ( .A1(n4), .A2(Prescale[3]), .Y(n5) );
  AO21X1_RVT U23 ( .A1(Prescale[3]), .A2(n4), .A3(n5), .Y(check_edge[3]) );
  XNOR2X1_RVT U24 ( .A1(n9), .A2(n5), .Y(check_edge[4]) );
  NAND2X0_RVT U25 ( .A1(n5), .A2(n9), .Y(n6) );
  XNOR2X1_RVT U26 ( .A1(n6), .A2(Prescale[5]), .Y(check_edge[5]) );
  INVX0_RVT U27 ( .A(n13), .Y(strt_chk_en) );
  AND2X1_RVT U28 ( .A1(n14), .A2(test_so), .Y(par_chk_en) );
  NAND2X0_RVT U29 ( .A1(n16), .A2(n19), .Y(next_state[2]) );
  NAND3X0_RVT U30 ( .A1(bit_count[3]), .A2(n20), .A3(n21), .Y(n19) );
  MUX21X1_RVT U31 ( .A1(n14), .A2(n22), .S0(n23), .Y(n21) );
  AND2X1_RVT U32 ( .A1(deser_en), .A2(n24), .Y(n22) );
  AO21X1_RVT U33 ( .A1(test_so), .A2(n25), .A3(n14), .Y(next_state[1]) );
  AO21X1_RVT U34 ( .A1(n26), .A2(n27), .A3(n28), .Y(n25) );
  INVX0_RVT U35 ( .A(strt_glitch), .Y(n27) );
  AO221X1_RVT U36 ( .A1(n29), .A2(n30), .A3(deser_en), .A4(n31), .A5(n32), .Y(
        next_state[0]) );
  NAND2X0_RVT U37 ( .A1(n33), .A2(n34), .Y(n32) );
  NAND4X0_RVT U38 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .Y(n34) );
  AND4X1_RVT U39 ( .A1(n39), .A2(stp_chk_en), .A3(n40), .A4(n41), .Y(n38) );
  AND3X1_RVT U40 ( .A1(n42), .A2(n43), .A3(bit_count[3]), .Y(n41) );
  NAND2X0_RVT U41 ( .A1(bit_count[1]), .A2(bit_count[0]), .Y(n42) );
  XNOR2X1_RVT U42 ( .A1(edge_count[0]), .A2(Prescale[0]), .Y(n40) );
  INVX0_RVT U43 ( .A(n16), .Y(stp_chk_en) );
  NAND2X0_RVT U44 ( .A1(n14), .A2(n1), .Y(n16) );
  INVX0_RVT U45 ( .A(n44), .Y(n14) );
  XNOR2X1_RVT U46 ( .A1(edge_count[1]), .A2(error_check_edge_1_), .Y(n39) );
  AND3X1_RVT U47 ( .A1(n45), .A2(n46), .A3(n47), .Y(n37) );
  XNOR2X1_RVT U48 ( .A1(edge_count[3]), .A2(error_check_edge_3_), .Y(n47) );
  XNOR2X1_RVT U49 ( .A1(edge_count[4]), .A2(error_check_edge_4_), .Y(n46) );
  XNOR2X1_RVT U50 ( .A1(edge_count[2]), .A2(error_check_edge_2_), .Y(n45) );
  XNOR2X1_RVT U51 ( .A1(edge_count[5]), .A2(error_check_edge_5_), .Y(n36) );
  MUX21X1_RVT U52 ( .A1(bit_count[1]), .A2(bit_count[0]), .S0(n24), .Y(n35) );
  INVX0_RVT U53 ( .A(parity_enable), .Y(n24) );
  AO21X1_RVT U54 ( .A1(strt_glitch), .A2(n26), .A3(n13), .Y(n33) );
  OR2X1_RVT U55 ( .A1(n28), .A2(n48), .Y(n13) );
  AND4X1_RVT U56 ( .A1(n20), .A2(n23), .A3(n49), .A4(n2), .Y(n26) );
  INVX0_RVT U57 ( .A(bit_count[3]), .Y(n49) );
  NAND3X0_RVT U58 ( .A1(n20), .A2(n23), .A3(bit_count[3]), .Y(n31) );
  INVX0_RVT U59 ( .A(bit_count[0]), .Y(n23) );
  NOR2X0_RVT U60 ( .A1(n50), .A2(n51), .Y(n20) );
  NAND4X0_RVT U61 ( .A1(n52), .A2(n53), .A3(n54), .A4(n55), .Y(n51) );
  XNOR2X1_RVT U62 ( .A1(edge_count[3]), .A2(check_edge[3]), .Y(n55) );
  XNOR2X1_RVT U63 ( .A1(edge_count[4]), .A2(check_edge[4]), .Y(n54) );
  XNOR2X1_RVT U64 ( .A1(edge_count[0]), .A2(check_edge[0]), .Y(n53) );
  XNOR2X1_RVT U65 ( .A1(edge_count[1]), .A2(check_edge[1]), .Y(n52) );
  NAND4X0_RVT U66 ( .A1(n56), .A2(n57), .A3(n58), .A4(n43), .Y(n50) );
  INVX0_RVT U67 ( .A(bit_count[2]), .Y(n43) );
  INVX0_RVT U68 ( .A(bit_count[1]), .Y(n58) );
  XNOR2X1_RVT U69 ( .A1(edge_count[5]), .A2(check_edge[5]), .Y(n57) );
  XNOR2X1_RVT U70 ( .A1(edge_count[2]), .A2(check_edge[2]), .Y(n56) );
  INVX0_RVT U71 ( .A(S_DATA), .Y(n30) );
  INVX0_RVT U72 ( .A(n59), .Y(n29) );
  NAND2X0_RVT U73 ( .A1(n48), .A2(n44), .Y(edge_bit_en) );
  NAND2X0_RVT U74 ( .A1(n18), .A2(n28), .Y(n44) );
  AND3X1_RVT U75 ( .A1(n28), .A2(n2), .A3(test_so), .Y(deser_en) );
  NOR3X0_RVT U76 ( .A1(n59), .A2(stp_err), .A3(par_err), .Y(data_valid) );
  NAND3X0_RVT U77 ( .A1(n28), .A2(n2), .A3(n1), .Y(n59) );
  NAND2X0_RVT U78 ( .A1(n17), .A2(n48), .Y(dat_samp_en) );
  AO21X1_RVT U79 ( .A1(n18), .A2(S_DATA), .A3(n1), .Y(n48) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, Enable, Prescale, bit_count, 
        edge_count, test_si, test_so, test_se );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable, test_si, test_se;
  output test_so;
  wire   N8, N9, N10, N11, N12, N19, N20, N21, N22, N23, N24, N26, N27, N28,
         N29, N30, N31, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n1, n2, n13, n17, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n52, n53, n54, n55;
  wire   [5:2] add_31_carry;

  SDFFARX1_RVT edge_count_reg_0_ ( .D(N19), .SI(n14), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[0]), .QN(n1) );
  SDFFARX1_RVT edge_count_reg_5_ ( .D(N24), .SI(n52), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[5]), .QN(test_so) );
  SDFFARX1_RVT edge_count_reg_1_ ( .D(N20), .SI(n1), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[1]), .QN(n2) );
  SDFFARX1_RVT edge_count_reg_2_ ( .D(N21), .SI(n2), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[2]), .QN(n54) );
  SDFFARX1_RVT edge_count_reg_3_ ( .D(N22), .SI(n54), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[3]), .QN(n53) );
  SDFFARX1_RVT edge_count_reg_4_ ( .D(N23), .SI(n53), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(edge_count[4]), .QN(n52) );
  SDFFARX1_RVT bit_count_reg_0_ ( .D(n32), .SI(test_si), .SE(test_se), .CLK(
        CLK), .RSTB(RST), .Q(bit_count[0]), .QN(n16) );
  SDFFARX1_RVT bit_count_reg_1_ ( .D(n31), .SI(n16), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(bit_count[1]), .QN(n15) );
  SDFFARX1_RVT bit_count_reg_2_ ( .D(n30), .SI(n15), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(bit_count[2]), .QN(n55) );
  SDFFARX1_RVT bit_count_reg_3_ ( .D(n29), .SI(n55), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(bit_count[3]), .QN(n14) );
  NAND2X0_RVT U16 ( .A1(n18), .A2(n19), .Y(n29) );
  NAND4X0_RVT U17 ( .A1(Enable), .A2(n20), .A3(n21), .A4(bit_count[2]), .Y(n19) );
  AND2X1_RVT U18 ( .A1(N31), .A2(n14), .Y(n21) );
  AO21X1_RVT U19 ( .A1(n22), .A2(n23), .A3(n14), .Y(n18) );
  AO21X1_RVT U20 ( .A1(n20), .A2(bit_count[2]), .A3(n49), .Y(n23) );
  AND2X1_RVT U21 ( .A1(bit_count[1]), .A2(bit_count[0]), .Y(n20) );
  AO22X1_RVT U22 ( .A1(bit_count[2]), .A2(n24), .A3(n25), .A4(n26), .Y(n30) );
  NOR2X0_RVT U23 ( .A1(n15), .A2(bit_count[2]), .Y(n25) );
  AO21X1_RVT U24 ( .A1(Enable), .A2(n15), .A3(n27), .Y(n24) );
  AO22X1_RVT U25 ( .A1(bit_count[1]), .A2(n27), .A3(n26), .A4(n15), .Y(n31) );
  AND3X1_RVT U26 ( .A1(bit_count[0]), .A2(n22), .A3(Enable), .Y(n26) );
  AO21X1_RVT U27 ( .A1(Enable), .A2(n16), .A3(n48), .Y(n27) );
  AO22X1_RVT U28 ( .A1(n48), .A2(bit_count[0]), .A3(n28), .A4(Enable), .Y(n32)
         );
  AND2X1_RVT U29 ( .A1(n22), .A2(n16), .Y(n28) );
  AND2X1_RVT U30 ( .A1(N12), .A2(n48), .Y(N24) );
  AND2X1_RVT U31 ( .A1(N11), .A2(n48), .Y(N23) );
  AND2X1_RVT U32 ( .A1(N10), .A2(n48), .Y(N22) );
  AND2X1_RVT U33 ( .A1(N9), .A2(n48), .Y(N21) );
  AND2X1_RVT U34 ( .A1(N8), .A2(n48), .Y(N20) );
  AND2X1_RVT U35 ( .A1(n1), .A2(n48), .Y(N19) );
  OR2X1_RVT U36 ( .A1(n49), .A2(N31), .Y(n22) );
  HADDX1_RVT add_31_U1_1_1 ( .A0(edge_count[1]), .B0(edge_count[0]), .C1(
        add_31_carry[2]), .SO(N8) );
  HADDX1_RVT add_31_U1_1_2 ( .A0(edge_count[2]), .B0(add_31_carry[2]), .C1(
        add_31_carry[3]), .SO(N9) );
  HADDX1_RVT add_31_U1_1_3 ( .A0(edge_count[3]), .B0(add_31_carry[3]), .C1(
        add_31_carry[4]), .SO(N10) );
  HADDX1_RVT add_31_U1_1_4 ( .A0(edge_count[4]), .B0(add_31_carry[4]), .C1(
        add_31_carry[5]), .SO(N11) );
  INVX1_RVT U6 ( .A(n22), .Y(n48) );
  INVX1_RVT U14 ( .A(Enable), .Y(n49) );
  INVX1_RVT U15 ( .A(N26), .Y(n47) );
  INVX1_RVT U37 ( .A(n13), .Y(n35) );
  INVX1_RVT U38 ( .A(n17), .Y(n36) );
  INVX1_RVT U39 ( .A(Prescale[4]), .Y(n37) );
  OR2X1_RVT U40 ( .A1(Prescale[1]), .A2(Prescale[0]), .Y(n13) );
  AO21X1_RVT U41 ( .A1(Prescale[1]), .A2(Prescale[0]), .A3(n35), .Y(N26) );
  OR2X1_RVT U42 ( .A1(n13), .A2(Prescale[2]), .Y(n17) );
  AO21X1_RVT U43 ( .A1(Prescale[2]), .A2(n13), .A3(n36), .Y(N27) );
  NOR2X0_RVT U44 ( .A1(n17), .A2(Prescale[3]), .Y(n33) );
  AO21X1_RVT U45 ( .A1(Prescale[3]), .A2(n17), .A3(n33), .Y(N28) );
  XNOR2X1_RVT U46 ( .A1(n37), .A2(n33), .Y(N29) );
  NAND2X0_RVT U47 ( .A1(n33), .A2(n37), .Y(n34) );
  XNOR2X1_RVT U48 ( .A1(n34), .A2(Prescale[5]), .Y(N30) );
  XOR2X1_RVT U49 ( .A1(add_31_carry[5]), .A2(edge_count[5]), .Y(N12) );
  XNOR2X1_RVT U50 ( .A1(N28), .A2(edge_count[3]), .Y(n40) );
  XNOR2X1_RVT U51 ( .A1(N27), .A2(edge_count[2]), .Y(n39) );
  XNOR2X1_RVT U52 ( .A1(N29), .A2(edge_count[4]), .Y(n38) );
  NAND3X0_RVT U53 ( .A1(n40), .A2(n39), .A3(n38), .Y(n46) );
  XOR2X1_RVT U54 ( .A1(N30), .A2(edge_count[5]), .Y(n45) );
  NOR2X0_RVT U55 ( .A1(Prescale[0]), .A2(edge_count[0]), .Y(n41) );
  OA22X1_RVT U56 ( .A1(N26), .A2(n41), .A3(n41), .A4(n2), .Y(n44) );
  AND2X1_RVT U57 ( .A1(edge_count[0]), .A2(Prescale[0]), .Y(n42) );
  OA22X1_RVT U58 ( .A1(n42), .A2(n47), .A3(edge_count[1]), .A4(n42), .Y(n43)
         );
  NOR4X0_RVT U59 ( .A1(n46), .A2(n45), .A3(n44), .A4(n43), .Y(N31) );
endmodule


module data_sampling_test_1 ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable, test_si, test_se;
  output sampled_bit, test_so;
  wire   N58, n23, n24, n25, n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n59;
  wire   [4:0] half_edges;
  wire   [4:1] half_edges_p1;
  wire   [4:1] half_edges_n1;
  wire   [4:2] add_21_carry;

  SDFFARX1_RVT Samples_reg_2_ ( .D(n25), .SI(n56), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n33), .QN(n59) );
  SDFFARX1_RVT Samples_reg_1_ ( .D(n24), .SI(n55), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n2), .QN(n56) );
  SDFFARX1_RVT Samples_reg_0_ ( .D(n23), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(n1), .QN(n55) );
  SDFFARX1_RVT sampled_bit_reg ( .D(N58), .SI(n59), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(sampled_bit), .QN(test_so) );
  HADDX1_RVT add_21_U1_1_1 ( .A0(half_edges[1]), .B0(half_edges[0]), .C1(
        add_21_carry[2]), .SO(half_edges_p1[1]) );
  HADDX1_RVT add_21_U1_1_2 ( .A0(half_edges[2]), .B0(add_21_carry[2]), .C1(
        add_21_carry[3]), .SO(half_edges_p1[2]) );
  HADDX1_RVT add_21_U1_1_3 ( .A0(half_edges[3]), .B0(add_21_carry[3]), .C1(
        add_21_carry[4]), .SO(half_edges_p1[3]) );
  INVX1_RVT U4 ( .A(half_edges[3]), .Y(n16) );
  INVX1_RVT U5 ( .A(n12), .Y(n15) );
  INVX1_RVT U6 ( .A(n3), .Y(n6) );
  INVX1_RVT U10 ( .A(Prescale[4]), .Y(n11) );
  INVX0_RVT U11 ( .A(Prescale[1]), .Y(half_edges[0]) );
  OR2X1_RVT U12 ( .A1(Prescale[2]), .A2(Prescale[1]), .Y(n3) );
  AO21X1_RVT U13 ( .A1(Prescale[2]), .A2(Prescale[1]), .A3(n6), .Y(
        half_edges[1]) );
  NOR2X0_RVT U14 ( .A1(n3), .A2(Prescale[3]), .Y(n4) );
  AO21X1_RVT U15 ( .A1(Prescale[3]), .A2(n3), .A3(n4), .Y(half_edges[2]) );
  XNOR2X1_RVT U16 ( .A1(n11), .A2(n4), .Y(half_edges[3]) );
  NAND2X0_RVT U17 ( .A1(n4), .A2(n11), .Y(n5) );
  XNOR2X1_RVT U18 ( .A1(n5), .A2(Prescale[5]), .Y(half_edges[4]) );
  XOR2X1_RVT U19 ( .A1(add_21_carry[4]), .A2(half_edges[4]), .Y(
        half_edges_p1[4]) );
  OR2X1_RVT U20 ( .A1(half_edges[1]), .A2(half_edges[0]), .Y(n12) );
  AO21X1_RVT U21 ( .A1(half_edges[1]), .A2(half_edges[0]), .A3(n15), .Y(
        half_edges_n1[1]) );
  NOR2X0_RVT U22 ( .A1(n12), .A2(half_edges[2]), .Y(n13) );
  AO21X1_RVT U23 ( .A1(half_edges[2]), .A2(n12), .A3(n13), .Y(half_edges_n1[2]) );
  XNOR2X1_RVT U24 ( .A1(n16), .A2(n13), .Y(half_edges_n1[3]) );
  NAND2X0_RVT U25 ( .A1(n13), .A2(n16), .Y(n14) );
  XNOR2X1_RVT U26 ( .A1(n14), .A2(half_edges[4]), .Y(half_edges_n1[4]) );
  MUX21X1_RVT U27 ( .A1(n17), .A2(n18), .S0(n19), .Y(n25) );
  NOR4X0_RVT U28 ( .A1(n20), .A2(n21), .A3(n22), .A4(n26), .Y(n19) );
  XOR2X1_RVT U29 ( .A1(half_edges_p1[2]), .A2(edge_count[2]), .Y(n26) );
  NAND2X0_RVT U30 ( .A1(n27), .A2(n28), .Y(n21) );
  NAND4X0_RVT U31 ( .A1(n29), .A2(n30), .A3(n31), .A4(n32), .Y(n20) );
  XNOR2X1_RVT U32 ( .A1(edge_count[3]), .A2(half_edges_p1[3]), .Y(n32) );
  XNOR2X1_RVT U33 ( .A1(edge_count[4]), .A2(half_edges_p1[4]), .Y(n31) );
  XNOR2X1_RVT U34 ( .A1(edge_count[0]), .A2(Prescale[1]), .Y(n30) );
  XNOR2X1_RVT U35 ( .A1(edge_count[1]), .A2(half_edges_p1[1]), .Y(n29) );
  AND2X1_RVT U36 ( .A1(Enable), .A2(n33), .Y(n17) );
  MUX21X1_RVT U37 ( .A1(n34), .A2(n18), .S0(n22), .Y(n24) );
  AND4X1_RVT U38 ( .A1(n35), .A2(n36), .A3(n37), .A4(n38), .Y(n22) );
  AND4X1_RVT U39 ( .A1(n39), .A2(n40), .A3(n27), .A4(n28), .Y(n38) );
  XOR2X1_RVT U40 ( .A1(n41), .A2(half_edges[0]), .Y(n40) );
  XOR2X1_RVT U41 ( .A1(n42), .A2(half_edges[1]), .Y(n39) );
  XOR2X1_RVT U42 ( .A1(n43), .A2(half_edges[3]), .Y(n37) );
  XOR2X1_RVT U43 ( .A1(n44), .A2(half_edges[4]), .Y(n36) );
  XOR2X1_RVT U44 ( .A1(n45), .A2(half_edges[2]), .Y(n35) );
  AND2X1_RVT U45 ( .A1(Enable), .A2(n2), .Y(n34) );
  MUX21X1_RVT U46 ( .A1(n18), .A2(n46), .S0(n27), .Y(n23) );
  NAND4X0_RVT U47 ( .A1(n47), .A2(n48), .A3(n49), .A4(n50), .Y(n27) );
  AND3X1_RVT U48 ( .A1(n51), .A2(n28), .A3(n52), .Y(n50) );
  XOR2X1_RVT U49 ( .A1(n45), .A2(half_edges_n1[2]), .Y(n52) );
  INVX0_RVT U50 ( .A(edge_count[2]), .Y(n45) );
  INVX0_RVT U51 ( .A(edge_count[5]), .Y(n28) );
  XOR2X1_RVT U52 ( .A1(n43), .A2(half_edges_n1[3]), .Y(n51) );
  INVX0_RVT U53 ( .A(edge_count[3]), .Y(n43) );
  XOR2X1_RVT U54 ( .A1(n41), .A2(Prescale[1]), .Y(n49) );
  INVX0_RVT U55 ( .A(edge_count[0]), .Y(n41) );
  XOR2X1_RVT U56 ( .A1(n42), .A2(half_edges_n1[1]), .Y(n48) );
  INVX0_RVT U57 ( .A(edge_count[1]), .Y(n42) );
  XOR2X1_RVT U58 ( .A1(n44), .A2(half_edges_n1[4]), .Y(n47) );
  INVX0_RVT U59 ( .A(edge_count[4]), .Y(n44) );
  AND2X1_RVT U60 ( .A1(Enable), .A2(n1), .Y(n46) );
  AND2X1_RVT U61 ( .A1(S_DATA), .A2(Enable), .Y(n18) );
  AND2X1_RVT U62 ( .A1(Enable), .A2(n53), .Y(N58) );
  AO22X1_RVT U63 ( .A1(n2), .A2(n1), .A3(n54), .A4(n33), .Y(n53) );
  NAND2X0_RVT U64 ( .A1(n55), .A2(n56), .Y(n54) );
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK, RST, sampled_bit, Enable, 
        edge_count, Prescale, P_DATA, test_si, test_so, test_se );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output test_so;
  wire   N2, N3, N4, N5, N6, N7, n1, n18, n20, n22, n24, n26, n28, n30, n32,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n33, n34, n35, n43, n46, n47, n48, n49, n50, n51, n52;

  SDFFARX1_RVT P_DATA_reg_7_ ( .D(n32), .SI(n46), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[7]), .QN(test_so) );
  SDFFARX1_RVT P_DATA_reg_6_ ( .D(n30), .SI(n47), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[6]), .QN(n46) );
  SDFFARX1_RVT P_DATA_reg_5_ ( .D(n28), .SI(n48), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[5]), .QN(n47) );
  SDFFARX1_RVT P_DATA_reg_4_ ( .D(n26), .SI(n49), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[4]), .QN(n48) );
  SDFFARX1_RVT P_DATA_reg_3_ ( .D(n24), .SI(n50), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[3]), .QN(n49) );
  SDFFARX1_RVT P_DATA_reg_2_ ( .D(n22), .SI(n51), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[2]), .QN(n50) );
  SDFFARX1_RVT P_DATA_reg_1_ ( .D(n20), .SI(n52), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[1]), .QN(n51) );
  SDFFARX1_RVT P_DATA_reg_0_ ( .D(n18), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(P_DATA[0]), .QN(n52) );
  AO22X1_RVT U3 ( .A1(n1), .A2(P_DATA[0]), .A3(n43), .A4(P_DATA[1]), .Y(n18)
         );
  AO22X1_RVT U4 ( .A1(n1), .A2(P_DATA[1]), .A3(n43), .A4(P_DATA[2]), .Y(n20)
         );
  AO22X1_RVT U6 ( .A1(n1), .A2(P_DATA[2]), .A3(n43), .A4(P_DATA[3]), .Y(n22)
         );
  AO22X1_RVT U8 ( .A1(n1), .A2(P_DATA[3]), .A3(n43), .A4(P_DATA[4]), .Y(n24)
         );
  AO22X1_RVT U10 ( .A1(n1), .A2(P_DATA[4]), .A3(n43), .A4(P_DATA[5]), .Y(n26)
         );
  AO22X1_RVT U12 ( .A1(n1), .A2(P_DATA[5]), .A3(n43), .A4(P_DATA[6]), .Y(n28)
         );
  AO22X1_RVT U14 ( .A1(n1), .A2(P_DATA[6]), .A3(n43), .A4(P_DATA[7]), .Y(n30)
         );
  AO22X1_RVT U16 ( .A1(n1), .A2(P_DATA[7]), .A3(sampled_bit), .A4(n43), .Y(n32) );
  INVX1_RVT U5 ( .A(n1), .Y(n43) );
  INVX1_RVT U7 ( .A(N2), .Y(n34) );
  NAND2X0_RVT U9 ( .A1(N7), .A2(Enable), .Y(n1) );
  INVX1_RVT U11 ( .A(edge_count[1]), .Y(n35) );
  INVX1_RVT U13 ( .A(n2), .Y(n6) );
  INVX1_RVT U15 ( .A(n3), .Y(n7) );
  INVX1_RVT U17 ( .A(Prescale[4]), .Y(n8) );
  OR2X1_RVT U18 ( .A1(Prescale[1]), .A2(Prescale[0]), .Y(n2) );
  AO21X1_RVT U19 ( .A1(Prescale[1]), .A2(Prescale[0]), .A3(n6), .Y(N2) );
  OR2X1_RVT U28 ( .A1(n2), .A2(Prescale[2]), .Y(n3) );
  AO21X1_RVT U29 ( .A1(Prescale[2]), .A2(n2), .A3(n7), .Y(N3) );
  NOR2X0_RVT U30 ( .A1(n3), .A2(Prescale[3]), .Y(n4) );
  AO21X1_RVT U31 ( .A1(Prescale[3]), .A2(n3), .A3(n4), .Y(N4) );
  XNOR2X1_RVT U32 ( .A1(n8), .A2(n4), .Y(N5) );
  NAND2X0_RVT U33 ( .A1(n4), .A2(n8), .Y(n5) );
  XNOR2X1_RVT U34 ( .A1(n5), .A2(Prescale[5]), .Y(N6) );
  XNOR2X1_RVT U35 ( .A1(N4), .A2(edge_count[3]), .Y(n11) );
  XNOR2X1_RVT U36 ( .A1(N3), .A2(edge_count[2]), .Y(n10) );
  XNOR2X1_RVT U37 ( .A1(N5), .A2(edge_count[4]), .Y(n9) );
  NAND3X0_RVT U38 ( .A1(n11), .A2(n10), .A3(n9), .Y(n33) );
  XOR2X1_RVT U39 ( .A1(N6), .A2(edge_count[5]), .Y(n16) );
  NOR2X0_RVT U40 ( .A1(Prescale[0]), .A2(edge_count[0]), .Y(n12) );
  OA22X1_RVT U41 ( .A1(N2), .A2(n12), .A3(n12), .A4(n35), .Y(n15) );
  AND2X1_RVT U42 ( .A1(edge_count[0]), .A2(Prescale[0]), .Y(n13) );
  OA22X1_RVT U43 ( .A1(n13), .A2(n34), .A3(edge_count[1]), .A4(n13), .Y(n14)
         );
  NOR4X0_RVT U44 ( .A1(n33), .A2(n16), .A3(n15), .A4(n14), .Y(N7) );
endmodule


module strt_chk_test_1 ( CLK, RST, sampled_bit, Enable, strt_glitch, test_si, 
        test_so, test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output strt_glitch, test_so;
  wire   n3, n1;

  SDFFARX1_RVT strt_glitch_reg ( .D(n3), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(strt_glitch), .QN(test_so) );
  AO22X1_RVT U2 ( .A1(sampled_bit), .A2(Enable), .A3(strt_glitch), .A4(n1), 
        .Y(n3) );
  INVX1_RVT U3 ( .A(Enable), .Y(n1) );
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable, test_si, test_se;
  output par_err, test_so;
  wire   n2, n3, n4, n5, n6, n7, n9, n1;

  SDFFARX1_RVT par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(par_err), .QN(test_so) );
  AO22X1_RVT U2 ( .A1(par_err), .A2(n1), .A3(Enable), .A4(n2), .Y(n9) );
  XNOR3X1_RVT U3 ( .A1(n3), .A2(n4), .A3(n5), .Y(n2) );
  XNOR3X1_RVT U5 ( .A1(P_DATA[1]), .A2(P_DATA[0]), .A3(n6), .Y(n4) );
  XNOR3X1_RVT U7 ( .A1(P_DATA[5]), .A2(P_DATA[4]), .A3(n7), .Y(n3) );
  XNOR2X1_RVT U4 ( .A1(P_DATA[7]), .A2(P_DATA[6]), .Y(n7) );
  XNOR2X1_RVT U6 ( .A1(P_DATA[3]), .A2(P_DATA[2]), .Y(n6) );
  XNOR2X1_RVT U8 ( .A1(sampled_bit), .A2(parity_type), .Y(n5) );
  INVX1_RVT U9 ( .A(Enable), .Y(n1) );
endmodule


module stp_chk_test_1 ( CLK, RST, sampled_bit, Enable, stp_err, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output stp_err;
  wire   n2, n4, n1;

  SDFFARX1_RVT stp_err_reg ( .D(n4), .SI(test_si), .SE(test_se), .CLK(CLK), 
        .RSTB(RST), .Q(stp_err), .QN(n2) );
  OAI22X1_RVT U2 ( .A1(sampled_bit), .A2(n1), .A3(Enable), .A4(n2), .Y(n4) );
  INVX1_RVT U3 ( .A(Enable), .Y(n1) );
endmodule


module UART_RX_test_1 ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, 
        P_DATA, data_valid, parity_error, framing_error, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type, test_si, test_se;
  output data_valid, parity_error, framing_error, test_so;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n4, n5, n6, n7, n8;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  NBUFFX4_RVT U1 ( .A(RST), .Y(n1) );
  uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(
        RX_IN), .Prescale(Prescale), .parity_enable(parity_enable), 
        .bit_count(bit_count), .edge_count(edge_count), .par_err(parity_error), 
        .stp_err(framing_error), .strt_glitch(strt_glitch), .strt_chk_en(
        strt_chk_en), .edge_bit_en(edge_bit_en), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(
        dat_samp_en), .data_valid(data_valid), .test_si(n4), .test_so(test_so), 
        .test_se(test_se) );
  edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count), .test_si(n7), .test_so(n6), .test_se(test_se) );
  data_sampling_test_1 U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(test_si), .test_so(n8), .test_se(
        test_se) );
  deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA), .test_si(n8), .test_so(n7), 
        .test_se(test_se) );
  strt_chk_test_1 U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch), .test_si(
        framing_error), .test_so(n4), .test_se(test_se) );
  par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error), .test_si(n6), .test_so(n5), .test_se(
        test_se) );
  stp_chk_test_1 U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error), .test_si(n5), .test_se(
        test_se) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, SI, SE, SO, scan_clk, scan_rst, test_mode
 );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type, SI,
         SE, scan_clk, scan_rst, test_mode;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, SO;
  wire   UART_RX_SCAN_CLK, UART_TX_SCAN_CLK, SCAN_RST, n2;

  NBUFFX32_RVT U1 ( .A(TX_OUT_S), .Y(SO) );
  mux2X1_0 U0_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        UART_RX_SCAN_CLK) );
  mux2X1_2 U1_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        UART_TX_SCAN_CLK) );
  mux2X1_1 U2_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        SCAN_RST) );
  UART_TX_DATA_WIDTH8_test_1 U0_UART_TX ( .CLK(UART_TX_SCAN_CLK), .RST(
        SCAN_RST), .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .parity_enable(
        parity_enable), .parity_type(parity_type), .TX_OUT(TX_OUT_S), .busy(
        TX_OUT_V), .test_si(n2), .test_se(SE) );
  UART_RX_test_1 U0_UART_RX ( .CLK(UART_RX_SCAN_CLK), .RST(SCAN_RST), .RX_IN(
        RX_IN_S), .parity_enable(parity_enable), .parity_type(parity_type), 
        .Prescale(Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), 
        .parity_error(parity_error), .framing_error(framing_error), .test_si(
        SI), .test_so(n2), .test_se(SE) );
endmodule

