/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Apr 20 12:22:46 2024
/////////////////////////////////////////////////////////////


module uart_tx_fsm ( CLK, RST, Data_Valid, parity_enable, Ser_enable, mux_sel, 
        busy_BAR, ser_done_BAR );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, parity_enable, ser_done_BAR;
  output Ser_enable, busy_BAR;
  wire   busy_c, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFARX1_RVT current_state_reg_0_ ( .D(next_state[0]), .CLK(CLK), .RSTB(RST), 
        .Q(current_state[0]), .QN(n11) );
  DFFARX1_RVT current_state_reg_2_ ( .D(next_state[2]), .CLK(CLK), .RSTB(RST), 
        .Q(current_state[2]), .QN(n12) );
  DFFARX1_RVT current_state_reg_1_ ( .D(next_state[1]), .CLK(CLK), .RSTB(RST), 
        .Q(current_state[1]), .QN(n10) );
  DFFARX1_RVT busy_reg ( .D(busy_c), .CLK(CLK), .RSTB(RST), .QN(busy_BAR) );
  NAND2X0_RVT U3 ( .A1(current_state[0]), .A2(n12), .Y(n6) );
  INVX0_RVT U4 ( .A(n6), .Y(n8) );
  AND3X1_RVT U5 ( .A1(current_state[1]), .A2(n8), .A3(ser_done_BAR), .Y(
        Ser_enable) );
  NAND2X0_RVT U6 ( .A1(current_state[1]), .A2(n12), .Y(n2) );
  NAND2X0_RVT U7 ( .A1(n12), .A2(n10), .Y(n1) );
  MUX21X1_RVT U8 ( .A1(n2), .A2(n1), .S0(n11), .Y(n4) );
  NAND3X0_RVT U9 ( .A1(current_state[2]), .A2(n11), .A3(current_state[1]), .Y(
        n3) );
  NAND2X0_RVT U10 ( .A1(n4), .A2(n3), .Y(mux_sel[0]) );
  NAND2X0_RVT U11 ( .A1(current_state[1]), .A2(n11), .Y(n5) );
  NAND2X0_RVT U12 ( .A1(n6), .A2(n5), .Y(busy_c) );
  OA21X1_RVT U13 ( .A1(current_state[1]), .A2(n12), .A3(n11), .Y(mux_sel[1])
         );
  OA21X1_RVT U14 ( .A1(current_state[0]), .A2(Data_Valid), .A3(n12), .Y(n7) );
  AO22X1_RVT U15 ( .A1(ser_done_BAR), .A2(n8), .A3(n10), .A4(n7), .Y(
        next_state[0]) );
  OA21X1_RVT U16 ( .A1(current_state[1]), .A2(current_state[0]), .A3(n12), .Y(
        next_state[1]) );
  OAI21X1_RVT U17 ( .A1(ser_done_BAR), .A2(parity_enable), .A3(
        current_state[0]), .Y(n9) );
  AND3X1_RVT U18 ( .A1(current_state[1]), .A2(n12), .A3(n9), .Y(next_state[2])
         );
endmodule


module Serializer_WIDTH8 ( CLK, RST, DATA, Enable, Data_Valid, ser_out, 
        Busy_BAR, ser_done_BAR );
  input [7:0] DATA;
  input CLK, RST, Enable, Data_Valid, Busy_BAR;
  output ser_out, ser_done_BAR;
  wire   N23, N24, N25, n13, n14, n15, n16, n17, n18, n19, n20, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10;
  wire   [7:1] DATA_V;
  wire   [2:0] ser_count;

  DFFARX1_RVT DATA_V_reg_7_ ( .D(n14), .CLK(CLK), .RSTB(RST), .Q(DATA_V[7]) );
  DFFARX1_RVT DATA_V_reg_6_ ( .D(n15), .CLK(CLK), .RSTB(RST), .Q(DATA_V[6]) );
  DFFARX1_RVT DATA_V_reg_5_ ( .D(n16), .CLK(CLK), .RSTB(RST), .Q(DATA_V[5]) );
  DFFARX1_RVT DATA_V_reg_4_ ( .D(n17), .CLK(CLK), .RSTB(RST), .Q(DATA_V[4]) );
  DFFARX1_RVT DATA_V_reg_3_ ( .D(n18), .CLK(CLK), .RSTB(RST), .Q(DATA_V[3]) );
  DFFARX1_RVT DATA_V_reg_2_ ( .D(n19), .CLK(CLK), .RSTB(RST), .Q(DATA_V[2]) );
  DFFARX1_RVT DATA_V_reg_1_ ( .D(n20), .CLK(CLK), .RSTB(RST), .Q(DATA_V[1]) );
  DFFARX1_RVT DATA_V_reg_0_ ( .D(n13), .CLK(CLK), .RSTB(RST), .Q(ser_out) );
  DFFARX1_RVT ser_count_reg_0_ ( .D(N23), .CLK(CLK), .RSTB(RST), .Q(
        ser_count[0]), .QN(n10) );
  DFFARX1_RVT ser_count_reg_1_ ( .D(N24), .CLK(CLK), .RSTB(RST), .Q(
        ser_count[1]) );
  DFFARX1_RVT ser_count_reg_2_ ( .D(N25), .CLK(CLK), .RSTB(RST), .Q(
        ser_count[2]) );
  NAND3X0_RVT U3 ( .A1(ser_count[0]), .A2(ser_count[1]), .A3(ser_count[2]), 
        .Y(ser_done_BAR) );
  NAND2X0_RVT U4 ( .A1(ser_count[0]), .A2(ser_count[1]), .Y(n3) );
  INVX0_RVT U5 ( .A(n3), .Y(n2) );
  AND2X1_RVT U6 ( .A1(ser_done_BAR), .A2(Enable), .Y(n1) );
  OA21X1_RVT U7 ( .A1(ser_count[2]), .A2(n2), .A3(n1), .Y(N25) );
  AND2X1_RVT U8 ( .A1(n3), .A2(Enable), .Y(n4) );
  OA21X1_RVT U9 ( .A1(ser_count[1]), .A2(ser_count[0]), .A3(n4), .Y(N24) );
  AND2X1_RVT U10 ( .A1(Enable), .A2(n10), .Y(N23) );
  NAND2X0_RVT U11 ( .A1(Data_Valid), .A2(Busy_BAR), .Y(n5) );
  INVX0_RVT U12 ( .A(n5), .Y(n9) );
  NAND2X0_RVT U13 ( .A1(Enable), .A2(n5), .Y(n6) );
  AND2X1_RVT U14 ( .A1(n5), .A2(n6), .Y(n8) );
  INVX0_RVT U15 ( .A(n6), .Y(n7) );
  AO222X1_RVT U16 ( .A1(n9), .A2(DATA[1]), .A3(n8), .A4(DATA_V[1]), .A5(n7), 
        .A6(DATA_V[2]), .Y(n20) );
  AO222X1_RVT U17 ( .A1(n9), .A2(DATA[2]), .A3(n8), .A4(DATA_V[2]), .A5(n7), 
        .A6(DATA_V[3]), .Y(n19) );
  AO222X1_RVT U18 ( .A1(n9), .A2(DATA[3]), .A3(n8), .A4(DATA_V[3]), .A5(n7), 
        .A6(DATA_V[4]), .Y(n18) );
  AO222X1_RVT U19 ( .A1(n9), .A2(DATA[4]), .A3(n8), .A4(DATA_V[4]), .A5(n7), 
        .A6(DATA_V[5]), .Y(n17) );
  AO222X1_RVT U20 ( .A1(n9), .A2(DATA[5]), .A3(n8), .A4(DATA_V[5]), .A5(n7), 
        .A6(DATA_V[6]), .Y(n16) );
  AO222X1_RVT U21 ( .A1(n9), .A2(DATA[6]), .A3(n8), .A4(DATA_V[6]), .A5(n7), 
        .A6(DATA_V[7]), .Y(n15) );
  AO22X1_RVT U22 ( .A1(n9), .A2(DATA[7]), .A3(n8), .A4(DATA_V[7]), .Y(n14) );
  AO222X1_RVT U23 ( .A1(n9), .A2(DATA[0]), .A3(n8), .A4(ser_out), .A5(
        DATA_V[1]), .A6(n7), .Y(n13) );
endmodule


module mux ( CLK, RST, IN_0, IN_1, IN_2, IN_3, SEL, OUT );
  input [1:0] SEL;
  input CLK, RST, IN_0, IN_1, IN_2, IN_3;
  output OUT;
  wire   n1;

  DFFARX1_RVT OUT_reg ( .D(n1), .CLK(CLK), .RSTB(RST), .Q(OUT) );
  AO222X1_RVT U3 ( .A1(SEL[1]), .A2(SEL[0]), .A3(SEL[1]), .A4(IN_2), .A5(
        SEL[0]), .A6(IN_1), .Y(n1) );
endmodule


module parity_calc_WIDTH8 ( CLK, RST, parity_enable, parity_type, DATA, 
        Data_Valid, parity, Busy_BAR );
  input [7:0] DATA;
  input CLK, RST, parity_enable, parity_type, Data_Valid, Busy_BAR;
  output parity;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n1, n2, n3, n4, n5, n6,
         n7;
  wire   [7:0] DATA_V;

  DFFARX1_RVT DATA_V_reg_7_ ( .D(n17), .CLK(CLK), .RSTB(RST), .Q(DATA_V[7]) );
  DFFARX1_RVT DATA_V_reg_6_ ( .D(n16), .CLK(CLK), .RSTB(RST), .Q(DATA_V[6]) );
  DFFARX1_RVT DATA_V_reg_5_ ( .D(n15), .CLK(CLK), .RSTB(RST), .Q(DATA_V[5]) );
  DFFARX1_RVT DATA_V_reg_4_ ( .D(n14), .CLK(CLK), .RSTB(RST), .Q(DATA_V[4]) );
  DFFARX1_RVT DATA_V_reg_3_ ( .D(n13), .CLK(CLK), .RSTB(RST), .Q(DATA_V[3]) );
  DFFARX1_RVT DATA_V_reg_2_ ( .D(n12), .CLK(CLK), .RSTB(RST), .Q(DATA_V[2]) );
  DFFARX1_RVT DATA_V_reg_1_ ( .D(n11), .CLK(CLK), .RSTB(RST), .Q(DATA_V[1]) );
  DFFARX1_RVT DATA_V_reg_0_ ( .D(n10), .CLK(CLK), .RSTB(RST), .Q(DATA_V[0]) );
  DFFARX1_RVT parity_reg ( .D(n9), .CLK(CLK), .RSTB(RST), .Q(parity) );
  NAND2X0_RVT U2 ( .A1(Data_Valid), .A2(Busy_BAR), .Y(n1) );
  INVX0_RVT U3 ( .A(n1), .Y(n2) );
  AO22X1_RVT U4 ( .A1(n2), .A2(DATA[7]), .A3(n1), .A4(DATA_V[7]), .Y(n17) );
  AO22X1_RVT U5 ( .A1(n2), .A2(DATA[6]), .A3(n1), .A4(DATA_V[6]), .Y(n16) );
  AO22X1_RVT U6 ( .A1(n2), .A2(DATA[5]), .A3(n1), .A4(DATA_V[5]), .Y(n15) );
  AO22X1_RVT U7 ( .A1(n2), .A2(DATA[4]), .A3(n1), .A4(DATA_V[4]), .Y(n14) );
  AO22X1_RVT U8 ( .A1(n2), .A2(DATA[3]), .A3(n1), .A4(DATA_V[3]), .Y(n13) );
  AO22X1_RVT U9 ( .A1(n2), .A2(DATA[2]), .A3(n1), .A4(DATA_V[2]), .Y(n12) );
  AO22X1_RVT U10 ( .A1(n2), .A2(DATA[1]), .A3(n1), .A4(DATA_V[1]), .Y(n11) );
  AO22X1_RVT U11 ( .A1(n2), .A2(DATA[0]), .A3(n1), .A4(DATA_V[0]), .Y(n10) );
  FADDX1_RVT U12 ( .A(DATA_V[4]), .B(parity_type), .CI(DATA_V[7]), .S(n3) );
  FADDX1_RVT U13 ( .A(DATA_V[5]), .B(DATA_V[6]), .CI(n3), .S(n4) );
  FADDX1_RVT U14 ( .A(DATA_V[2]), .B(DATA_V[3]), .CI(n4), .S(n5) );
  FADDX1_RVT U15 ( .A(DATA_V[0]), .B(DATA_V[1]), .CI(n5), .S(n7) );
  INVX0_RVT U16 ( .A(parity_enable), .Y(n6) );
  AO22X1_RVT U17 ( .A1(parity_enable), .A2(n7), .A3(n6), .A4(parity), .Y(n9)
         );
endmodule


module UART_TX_DATA_WIDTH8 ( CLK, RST, P_DATA, Data_Valid, parity_enable, 
        parity_type, TX_OUT, busy_BAR );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, parity_enable, parity_type;
  output TX_OUT, busy_BAR;
  wire   seriz_done, seriz_en, ser_data, parity;
  wire   [1:0] mux_sel;

  uart_tx_fsm U0_fsm ( .CLK(CLK), .RST(RST), .Data_Valid(Data_Valid), 
        .parity_enable(parity_enable), .Ser_enable(seriz_en), .mux_sel(mux_sel), .busy_BAR(busy_BAR), .ser_done_BAR(seriz_done) );
  Serializer_WIDTH8 U0_Serializer ( .CLK(CLK), .RST(RST), .DATA(P_DATA), 
        .Enable(seriz_en), .Data_Valid(Data_Valid), .ser_out(ser_data), 
        .Busy_BAR(busy_BAR), .ser_done_BAR(seriz_done) );
  mux U0_mux ( .CLK(CLK), .RST(RST), .IN_0(1'b0), .IN_1(ser_data), .IN_2(
        parity), .IN_3(1'b1), .SEL(mux_sel), .OUT(TX_OUT) );
  parity_calc_WIDTH8 U0_parity_calc ( .CLK(CLK), .RST(RST), .parity_enable(
        parity_enable), .parity_type(parity_type), .DATA(P_DATA), .Data_Valid(
        Data_Valid), .parity(parity), .Busy_BAR(busy_BAR) );
endmodule


module uart_rx_fsm_DATA_WIDTH8 ( CLK, RST, S_DATA, Prescale, parity_enable, 
        bit_count, edge_count, par_err, stp_err, strt_glitch, strt_chk_en, 
        edge_bit_en, deser_en, par_chk_en, stp_chk_en, dat_samp_en, data_valid
 );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid;
  wire   n31, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFARX1_RVT current_state_reg_0_ ( .D(next_state[0]), .CLK(CLK), .RSTB(RST), 
        .Q(current_state[0]), .QN(n75) );
  DFFARX1_RVT current_state_reg_1_ ( .D(n31), .CLK(CLK), .RSTB(RST), .Q(
        current_state[1]), .QN(n74) );
  DFFARX1_RVT current_state_reg_2_ ( .D(next_state[2]), .CLK(CLK), .RSTB(RST), 
        .Q(current_state[2]), .QN(n73) );
  NAND2X0_RVT U3 ( .A1(current_state[1]), .A2(n75), .Y(n71) );
  INVX0_RVT U4 ( .A(n71), .Y(n62) );
  AND2X1_RVT U5 ( .A1(n62), .A2(n73), .Y(par_chk_en) );
  AND2X1_RVT U6 ( .A1(current_state[2]), .A2(n62), .Y(stp_chk_en) );
  NAND2X0_RVT U7 ( .A1(n74), .A2(n73), .Y(n28) );
  INVX0_RVT U8 ( .A(Prescale[1]), .Y(n43) );
  INVX0_RVT U9 ( .A(Prescale[0]), .Y(n47) );
  NAND2X0_RVT U10 ( .A1(n43), .A2(n47), .Y(n14) );
  INVX0_RVT U11 ( .A(n14), .Y(n6) );
  NAND2X0_RVT U12 ( .A1(Prescale[2]), .A2(edge_count[2]), .Y(n1) );
  NAND2X0_RVT U13 ( .A1(edge_count[1]), .A2(n1), .Y(n35) );
  NAND2X0_RVT U14 ( .A1(edge_count[0]), .A2(n47), .Y(n2) );
  AO21X1_RVT U15 ( .A1(Prescale[1]), .A2(edge_count[1]), .A3(n2), .Y(n5) );
  INVX0_RVT U16 ( .A(edge_count[1]), .Y(n32) );
  INVX0_RVT U17 ( .A(edge_count[0]), .Y(n46) );
  NAND2X0_RVT U18 ( .A1(Prescale[0]), .A2(n46), .Y(n3) );
  AO221X1_RVT U19 ( .A1(Prescale[1]), .A2(n32), .A3(n43), .A4(edge_count[1]), 
        .A5(n3), .Y(n4) );
  AO22X1_RVT U20 ( .A1(n6), .A2(n35), .A3(n5), .A4(n4), .Y(n23) );
  INVX0_RVT U21 ( .A(edge_count[4]), .Y(n7) );
  INVX0_RVT U22 ( .A(Prescale[4]), .Y(n36) );
  AO22X1_RVT U23 ( .A1(Prescale[4]), .A2(n7), .A3(n36), .A4(edge_count[4]), 
        .Y(n45) );
  NAND2X0_RVT U24 ( .A1(Prescale[4]), .A2(edge_count[4]), .Y(n8) );
  NAND2X0_RVT U25 ( .A1(edge_count[3]), .A2(n8), .Y(n30) );
  INVX0_RVT U26 ( .A(Prescale[2]), .Y(n42) );
  NAND3X0_RVT U27 ( .A1(n43), .A2(n47), .A3(n42), .Y(n18) );
  INVX0_RVT U28 ( .A(n18), .Y(n19) );
  INVX0_RVT U29 ( .A(Prescale[3]), .Y(n29) );
  AND2X1_RVT U30 ( .A1(n19), .A2(n29), .Y(n9) );
  MUX21X1_RVT U31 ( .A1(n45), .A2(n30), .S0(n9), .Y(n22) );
  HADDX1_RVT U32 ( .A0(edge_count[5]), .B0(Prescale[5]), .SO(n39) );
  NAND2X0_RVT U33 ( .A1(edge_count[4]), .A2(n39), .Y(n40) );
  NAND2X0_RVT U34 ( .A1(n9), .A2(n36), .Y(n10) );
  MUX21X1_RVT U35 ( .A1(n40), .A2(n39), .S0(n10), .Y(n21) );
  NAND2X0_RVT U36 ( .A1(Prescale[3]), .A2(edge_count[3]), .Y(n11) );
  NAND2X0_RVT U37 ( .A1(edge_count[2]), .A2(n11), .Y(n51) );
  INVX0_RVT U38 ( .A(edge_count[3]), .Y(n12) );
  AO22X1_RVT U39 ( .A1(Prescale[3]), .A2(n12), .A3(n29), .A4(edge_count[3]), 
        .Y(n49) );
  INVX0_RVT U40 ( .A(bit_count[2]), .Y(n16) );
  INVX0_RVT U41 ( .A(bit_count[1]), .Y(n41) );
  INVX0_RVT U42 ( .A(edge_count[2]), .Y(n13) );
  AO22X1_RVT U43 ( .A1(Prescale[2]), .A2(n13), .A3(n42), .A4(edge_count[2]), 
        .Y(n34) );
  NAND2X0_RVT U44 ( .A1(n34), .A2(n14), .Y(n15) );
  NAND3X0_RVT U45 ( .A1(n16), .A2(n41), .A3(n15), .Y(n17) );
  AO221X1_RVT U46 ( .A1(n19), .A2(n51), .A3(n18), .A4(n49), .A5(n17), .Y(n20)
         );
  NOR4X0_RVT U47 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Y(n65) );
  INVX0_RVT U48 ( .A(bit_count[0]), .Y(n61) );
  AND2X1_RVT U49 ( .A1(n65), .A2(n61), .Y(n24) );
  INVX0_RVT U50 ( .A(bit_count[3]), .Y(n68) );
  AND3X1_RVT U51 ( .A1(n24), .A2(strt_glitch), .A3(n68), .Y(n26) );
  AND2X1_RVT U52 ( .A1(n24), .A2(n73), .Y(n69) );
  AO22X1_RVT U53 ( .A1(current_state[2]), .A2(S_DATA), .A3(n69), .A4(
        bit_count[3]), .Y(n25) );
  AO222X1_RVT U54 ( .A1(n74), .A2(current_state[2]), .A3(n74), .A4(n26), .A5(
        current_state[1]), .A6(n25), .Y(n27) );
  AO222X1_RVT U55 ( .A1(n75), .A2(S_DATA), .A3(n75), .A4(n28), .A5(
        current_state[0]), .A6(n27), .Y(n60) );
  NAND3X0_RVT U56 ( .A1(n43), .A2(n42), .A3(n29), .Y(n44) );
  INVX0_RVT U57 ( .A(n44), .Y(n37) );
  AOI21X1_RVT U58 ( .A1(n37), .A2(n30), .A3(bit_count[2]), .Y(n58) );
  NAND2X0_RVT U59 ( .A1(Prescale[1]), .A2(n32), .Y(n33) );
  OA22X1_RVT U60 ( .A1(Prescale[1]), .A2(n35), .A3(n34), .A4(n33), .Y(n56) );
  NAND2X0_RVT U61 ( .A1(n37), .A2(n36), .Y(n38) );
  MUX21X1_RVT U62 ( .A1(n40), .A2(n39), .S0(n38), .Y(n55) );
  INVX0_RVT U63 ( .A(parity_enable), .Y(n63) );
  AO222X1_RVT U64 ( .A1(bit_count[1]), .A2(bit_count[0]), .A3(n41), .A4(
        parity_enable), .A5(n61), .A6(n63), .Y(n54) );
  NAND2X0_RVT U65 ( .A1(n43), .A2(n42), .Y(n50) );
  INVX0_RVT U66 ( .A(n50), .Y(n52) );
  AO222X1_RVT U67 ( .A1(edge_count[0]), .A2(n47), .A3(n46), .A4(Prescale[0]), 
        .A5(n45), .A6(n44), .Y(n48) );
  AO221X1_RVT U68 ( .A1(n52), .A2(n51), .A3(n50), .A4(n49), .A5(n48), .Y(n53)
         );
  NOR4X0_RVT U69 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .Y(n57) );
  NAND4X0_RVT U70 ( .A1(bit_count[3]), .A2(stp_chk_en), .A3(n58), .A4(n57), 
        .Y(n59) );
  NAND2X0_RVT U71 ( .A1(n60), .A2(n59), .Y(next_state[0]) );
  AND3X1_RVT U72 ( .A1(current_state[1]), .A2(current_state[0]), .A3(n73), .Y(
        deser_en) );
  OA222X1_RVT U73 ( .A1(bit_count[0]), .A2(deser_en), .A3(bit_count[0]), .A4(
        n63), .A5(n62), .A6(n61), .Y(n64) );
  OA222X1_RVT U74 ( .A1(stp_chk_en), .A2(bit_count[3]), .A3(stp_chk_en), .A4(
        n65), .A5(stp_chk_en), .A6(n64), .Y(next_state[2]) );
  NAND2X0_RVT U75 ( .A1(current_state[0]), .A2(current_state[1]), .Y(n66) );
  NOR4X0_RVT U76 ( .A1(par_err), .A2(stp_err), .A3(n66), .A4(n73), .Y(
        data_valid) );
  AO21X1_RVT U77 ( .A1(S_DATA), .A2(n75), .A3(current_state[2]), .Y(n67) );
  NAND2X0_RVT U78 ( .A1(n71), .A2(n67), .Y(edge_bit_en) );
  NOR2X0_RVT U79 ( .A1(n67), .A2(current_state[1]), .Y(strt_chk_en) );
  NAND2X0_RVT U80 ( .A1(n74), .A2(n67), .Y(dat_samp_en) );
  NAND3X0_RVT U81 ( .A1(n69), .A2(current_state[0]), .A3(n68), .Y(n70) );
  OA22X1_RVT U82 ( .A1(current_state[2]), .A2(n74), .A3(strt_glitch), .A4(n70), 
        .Y(n72) );
  NAND2X0_RVT U83 ( .A1(n72), .A2(n71), .Y(n31) );
endmodule


module edge_bit_counter ( CLK, RST, Enable, Prescale, bit_count, edge_count );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable;
  wire   N19, N20, N21, N22, N23, N24, n15, n16, n17, n18, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42;

  DFFARX1_RVT edge_count_reg_5_ ( .D(N24), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[5]), .QN(n40) );
  DFFARX1_RVT edge_count_reg_4_ ( .D(N23), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[4]) );
  DFFARX1_RVT edge_count_reg_3_ ( .D(N22), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[3]), .QN(n37) );
  DFFARX1_RVT edge_count_reg_2_ ( .D(N21), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[2]) );
  DFFARX1_RVT edge_count_reg_1_ ( .D(N20), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[1]), .QN(n38) );
  DFFARX1_RVT edge_count_reg_0_ ( .D(N19), .CLK(CLK), .RSTB(RST), .Q(
        edge_count[0]), .QN(n35) );
  DFFARX1_RVT bit_count_reg_0_ ( .D(n18), .CLK(CLK), .RSTB(RST), .Q(
        bit_count[0]), .QN(n36) );
  DFFARX1_RVT bit_count_reg_1_ ( .D(n17), .CLK(CLK), .RSTB(RST), .Q(
        bit_count[1]), .QN(n39) );
  DFFARX1_RVT bit_count_reg_2_ ( .D(n16), .CLK(CLK), .RSTB(RST), .Q(
        bit_count[2]), .QN(n41) );
  DFFARX1_RVT bit_count_reg_3_ ( .D(n15), .CLK(CLK), .RSTB(RST), .Q(
        bit_count[3]), .QN(n42) );
  NAND2X0_RVT U3 ( .A1(Enable), .A2(n28), .Y(n26) );
  AND2X1_RVT U4 ( .A1(edge_count[0]), .A2(edge_count[1]), .Y(n20) );
  AND3X1_RVT U5 ( .A1(edge_count[3]), .A2(edge_count[2]), .A3(n20), .Y(n14) );
  NAND3X0_RVT U6 ( .A1(edge_count[0]), .A2(edge_count[1]), .A3(edge_count[2]), 
        .Y(n21) );
  INVX0_RVT U7 ( .A(n21), .Y(n22) );
  NAND3X0_RVT U8 ( .A1(edge_count[4]), .A2(edge_count[3]), .A3(n22), .Y(n24)
         );
  OR3X1_RVT U9 ( .A1(Prescale[2]), .A2(Prescale[1]), .A3(Prescale[0]), .Y(n1)
         );
  OR2X1_RVT U10 ( .A1(Prescale[3]), .A2(n1), .Y(n8) );
  FADDX1_RVT U11 ( .A(Prescale[4]), .B(edge_count[4]), .CI(n8), .S(n12) );
  FADDX1_RVT U12 ( .A(Prescale[3]), .B(edge_count[3]), .CI(n1), .S(n7) );
  INVX0_RVT U13 ( .A(Prescale[0]), .Y(n2) );
  AO22X1_RVT U14 ( .A1(Prescale[0]), .A2(n35), .A3(n2), .A4(edge_count[0]), 
        .Y(n6) );
  FADDX1_RVT U15 ( .A(Prescale[1]), .B(Prescale[0]), .CI(edge_count[1]), .S(n5) );
  OR2X1_RVT U16 ( .A1(Prescale[1]), .A2(Prescale[0]), .Y(n3) );
  FADDX1_RVT U17 ( .A(Prescale[2]), .B(edge_count[2]), .CI(n3), .S(n4) );
  AND4X1_RVT U18 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .Y(n11) );
  OR2X1_RVT U19 ( .A1(Prescale[4]), .A2(n8), .Y(n9) );
  FADDX1_RVT U20 ( .A(Prescale[5]), .B(edge_count[5]), .CI(n9), .S(n10) );
  NAND3X0_RVT U21 ( .A1(n12), .A2(n11), .A3(n10), .Y(n28) );
  INVX0_RVT U22 ( .A(n26), .Y(n23) );
  AND2X1_RVT U23 ( .A1(n24), .A2(n23), .Y(n13) );
  OA21X1_RVT U24 ( .A1(n14), .A2(edge_count[4]), .A3(n13), .Y(N23) );
  AND2X1_RVT U25 ( .A1(n21), .A2(n23), .Y(n19) );
  OA21X1_RVT U26 ( .A1(n20), .A2(edge_count[2]), .A3(n19), .Y(N21) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n35), .Y(N19) );
  OA221X1_RVT U28 ( .A1(edge_count[0]), .A2(edge_count[1]), .A3(n35), .A4(n38), 
        .A5(n23), .Y(N20) );
  OA221X1_RVT U29 ( .A1(edge_count[3]), .A2(n22), .A3(n37), .A4(n21), .A5(n23), 
        .Y(N22) );
  INVX0_RVT U30 ( .A(n24), .Y(n25) );
  OA221X1_RVT U31 ( .A1(edge_count[5]), .A2(n25), .A3(n40), .A4(n24), .A5(n23), 
        .Y(N24) );
  NAND2X0_RVT U32 ( .A1(Enable), .A2(n36), .Y(n27) );
  OAI22X1_RVT U33 ( .A1(n36), .A2(n26), .A3(n27), .A4(n28), .Y(n18) );
  NAND2X0_RVT U34 ( .A1(n27), .A2(n26), .Y(n30) );
  INVX0_RVT U35 ( .A(n28), .Y(n29) );
  AND3X1_RVT U36 ( .A1(Enable), .A2(bit_count[0]), .A3(n29), .Y(n31) );
  AO22X1_RVT U37 ( .A1(bit_count[1]), .A2(n30), .A3(n39), .A4(n31), .Y(n17) );
  AO21X1_RVT U38 ( .A1(Enable), .A2(n39), .A3(n30), .Y(n32) );
  AND2X1_RVT U39 ( .A1(bit_count[1]), .A2(n31), .Y(n34) );
  AO22X1_RVT U40 ( .A1(bit_count[2]), .A2(n32), .A3(n41), .A4(n34), .Y(n16) );
  AO21X1_RVT U41 ( .A1(Enable), .A2(n41), .A3(n32), .Y(n33) );
  OA222X1_RVT U42 ( .A1(bit_count[3]), .A2(bit_count[2]), .A3(bit_count[3]), 
        .A4(n34), .A5(n42), .A6(n33), .Y(n15) );
endmodule


module data_sampling ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable;
  output sampled_bit;
  wire   N58, n31, n32, n33, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [2:0] Samples;

  DFFARX1_RVT Samples_reg_2_ ( .D(n31), .CLK(CLK), .RSTB(RST), .Q(Samples[2])
         );
  DFFARX1_RVT Samples_reg_1_ ( .D(n32), .CLK(CLK), .RSTB(RST), .Q(Samples[1])
         );
  DFFARX1_RVT Samples_reg_0_ ( .D(n33), .CLK(CLK), .RSTB(RST), .Q(Samples[0])
         );
  DFFARX1_RVT sampled_bit_reg ( .D(N58), .CLK(CLK), .RSTB(RST), .Q(sampled_bit) );
  NAND2X0_RVT U3 ( .A1(Enable), .A2(S_DATA), .Y(n42) );
  HADDX1_RVT U4 ( .A0(Prescale[1]), .B0(edge_count[0]), .SO(n11) );
  NOR2X0_RVT U5 ( .A1(edge_count[5]), .A2(n11), .Y(n22) );
  INVX0_RVT U6 ( .A(Prescale[2]), .Y(n27) );
  AND2X1_RVT U7 ( .A1(edge_count[1]), .A2(n27), .Y(n23) );
  NOR2X0_RVT U8 ( .A1(n27), .A2(edge_count[1]), .Y(n25) );
  OR2X1_RVT U9 ( .A1(n23), .A2(n25), .Y(n13) );
  INVX0_RVT U10 ( .A(n13), .Y(n5) );
  INVX0_RVT U11 ( .A(edge_count[3]), .Y(n3) );
  INVX0_RVT U12 ( .A(edge_count[4]), .Y(n2) );
  AOI22X1_RVT U13 ( .A1(n3), .A2(Prescale[4]), .A3(n2), .A4(Prescale[5]), .Y(
        n1) );
  OA221X1_RVT U14 ( .A1(n3), .A2(Prescale[4]), .A3(n2), .A4(Prescale[5]), .A5(
        n1), .Y(n4) );
  HADDX1_RVT U15 ( .A0(Prescale[3]), .B0(edge_count[2]), .SO(n26) );
  INVX0_RVT U16 ( .A(n26), .Y(n24) );
  NAND4X0_RVT U17 ( .A1(n22), .A2(n5), .A3(n4), .A4(n24), .Y(n7) );
  NAND3X0_RVT U18 ( .A1(Enable), .A2(Samples[2]), .A3(n7), .Y(n6) );
  OAI21X1_RVT U19 ( .A1(n42), .A2(n7), .A3(n6), .Y(n31) );
  OR3X1_RVT U20 ( .A1(Prescale[3]), .A2(Prescale[2]), .A3(Prescale[1]), .Y(n14) );
  HADDX1_RVT U21 ( .A0(Prescale[4]), .B0(n14), .SO(n8) );
  HADDX1_RVT U22 ( .A0(edge_count[3]), .B0(n8), .SO(n34) );
  OR2X1_RVT U23 ( .A1(Prescale[2]), .A2(Prescale[1]), .Y(n9) );
  HADDX1_RVT U24 ( .A0(n9), .B0(n26), .SO(n12) );
  INVX0_RVT U25 ( .A(edge_count[5]), .Y(n10) );
  AND3X1_RVT U26 ( .A1(n12), .A2(n11), .A3(n10), .Y(n18) );
  HADDX1_RVT U27 ( .A0(Prescale[1]), .B0(n13), .SO(n17) );
  OR2X1_RVT U28 ( .A1(n14), .A2(Prescale[4]), .Y(n15) );
  HADDX1_RVT U29 ( .A0(Prescale[5]), .B0(n15), .SO(n16) );
  HADDX1_RVT U30 ( .A0(edge_count[4]), .B0(n16), .SO(n29) );
  NAND4X0_RVT U31 ( .A1(n34), .A2(n18), .A3(n17), .A4(n29), .Y(n20) );
  NAND3X0_RVT U32 ( .A1(Enable), .A2(Samples[1]), .A3(n20), .Y(n19) );
  OAI21X1_RVT U33 ( .A1(n42), .A2(n20), .A3(n19), .Y(n32) );
  AO222X1_RVT U34 ( .A1(Samples[0]), .A2(Samples[1]), .A3(Samples[0]), .A4(
        Samples[2]), .A5(Samples[1]), .A6(Samples[2]), .Y(n21) );
  AND2X1_RVT U35 ( .A1(Enable), .A2(n21), .Y(N58) );
  OA221X1_RVT U36 ( .A1(n26), .A2(n25), .A3(n24), .A4(n23), .A5(n22), .Y(n39)
         );
  INVX0_RVT U37 ( .A(Prescale[3]), .Y(n28) );
  NAND3X0_RVT U38 ( .A1(Prescale[1]), .A2(n28), .A3(n27), .Y(n35) );
  NAND3X0_RVT U39 ( .A1(n35), .A2(n29), .A3(n34), .Y(n37) );
  HADDX1_RVT U40 ( .A0(n29), .B0(Prescale[4]), .SO(n30) );
  OR3X1_RVT U41 ( .A1(n35), .A2(n34), .A3(n30), .Y(n36) );
  NAND2X0_RVT U42 ( .A1(n37), .A2(n36), .Y(n38) );
  NAND2X0_RVT U43 ( .A1(n39), .A2(n38), .Y(n43) );
  INVX0_RVT U44 ( .A(Enable), .Y(n41) );
  NAND2X0_RVT U45 ( .A1(n43), .A2(Samples[0]), .Y(n40) );
  OAI22X1_RVT U46 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .Y(n33) );
endmodule


module deserializer_DATA_WIDTH8 ( CLK, RST, sampled_bit, Enable, edge_count, 
        Prescale, P_DATA );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n1, n2, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  DFFARX1_RVT P_DATA_reg_7_ ( .D(n10), .CLK(CLK), .RSTB(RST), .Q(P_DATA[7]) );
  DFFARX1_RVT P_DATA_reg_6_ ( .D(n9), .CLK(CLK), .RSTB(RST), .Q(P_DATA[6]) );
  DFFARX1_RVT P_DATA_reg_5_ ( .D(n8), .CLK(CLK), .RSTB(RST), .Q(P_DATA[5]) );
  DFFARX1_RVT P_DATA_reg_4_ ( .D(n7), .CLK(CLK), .RSTB(RST), .Q(P_DATA[4]) );
  DFFARX1_RVT P_DATA_reg_3_ ( .D(n6), .CLK(CLK), .RSTB(RST), .Q(P_DATA[3]) );
  DFFARX1_RVT P_DATA_reg_2_ ( .D(n5), .CLK(CLK), .RSTB(RST), .Q(P_DATA[2]) );
  DFFARX1_RVT P_DATA_reg_1_ ( .D(n4), .CLK(CLK), .RSTB(RST), .Q(P_DATA[1]) );
  DFFARX1_RVT P_DATA_reg_0_ ( .D(n3), .CLK(CLK), .RSTB(RST), .Q(P_DATA[0]) );
  NAND3X0_RVT U3 ( .A1(n30), .A2(n29), .A3(n28), .Y(n31) );
  OR3X1_RVT U4 ( .A1(Prescale[1]), .A2(Prescale[0]), .A3(Prescale[2]), .Y(n15)
         );
  FADDX1_RVT U5 ( .A(Prescale[3]), .B(edge_count[3]), .CI(n15), .S(n21) );
  INVX0_RVT U6 ( .A(Prescale[1]), .Y(n1) );
  INVX0_RVT U7 ( .A(Prescale[0]), .Y(n13) );
  NAND2X0_RVT U8 ( .A1(n1), .A2(n13), .Y(n22) );
  OA21X1_RVT U9 ( .A1(edge_count[1]), .A2(n22), .A3(Enable), .Y(n20) );
  INVX0_RVT U10 ( .A(edge_count[0]), .Y(n14) );
  NAND2X0_RVT U11 ( .A1(Prescale[1]), .A2(edge_count[1]), .Y(n12) );
  INVX0_RVT U12 ( .A(edge_count[1]), .Y(n2) );
  OA221X1_RVT U13 ( .A1(Prescale[1]), .A2(n2), .A3(n1), .A4(edge_count[1]), 
        .A5(Prescale[0]), .Y(n11) );
  OA222X1_RVT U14 ( .A1(n14), .A2(n13), .A3(n14), .A4(n12), .A5(edge_count[0]), 
        .A6(n11), .Y(n19) );
  HADDX1_RVT U15 ( .A0(edge_count[5]), .B0(Prescale[5]), .SO(n27) );
  AND2X1_RVT U16 ( .A1(edge_count[4]), .A2(n27), .Y(n17) );
  INVX0_RVT U17 ( .A(edge_count[4]), .Y(n16) );
  OR2X1_RVT U18 ( .A1(Prescale[3]), .A2(n15), .Y(n25) );
  MUX41X1_RVT U19 ( .A1(n17), .A3(n16), .A2(n16), .A4(edge_count[4]), .S0(
        Prescale[4]), .S1(n25), .Y(n18) );
  AND4X1_RVT U20 ( .A1(n21), .A2(n20), .A3(n19), .A4(n18), .Y(n30) );
  INVX0_RVT U21 ( .A(n22), .Y(n23) );
  FADDX1_RVT U22 ( .A(n23), .B(Prescale[2]), .CI(edge_count[2]), .S(n24) );
  INVX0_RVT U23 ( .A(n24), .Y(n29) );
  OR2X1_RVT U24 ( .A1(Prescale[4]), .A2(n25), .Y(n26) );
  NAND2X0_RVT U25 ( .A1(n27), .A2(n26), .Y(n28) );
  INVX0_RVT U26 ( .A(n31), .Y(n32) );
  MUX21X1_RVT U27 ( .A1(P_DATA[7]), .A2(sampled_bit), .S0(n32), .Y(n10) );
  AO22X1_RVT U28 ( .A1(n32), .A2(P_DATA[7]), .A3(n31), .A4(P_DATA[6]), .Y(n9)
         );
  AO22X1_RVT U29 ( .A1(n32), .A2(P_DATA[6]), .A3(n31), .A4(P_DATA[5]), .Y(n8)
         );
  AO22X1_RVT U30 ( .A1(n32), .A2(P_DATA[5]), .A3(n31), .A4(P_DATA[4]), .Y(n7)
         );
  AO22X1_RVT U31 ( .A1(n32), .A2(P_DATA[4]), .A3(n31), .A4(P_DATA[3]), .Y(n6)
         );
  AO22X1_RVT U32 ( .A1(n32), .A2(P_DATA[3]), .A3(n31), .A4(P_DATA[2]), .Y(n5)
         );
  AO22X1_RVT U33 ( .A1(n32), .A2(P_DATA[2]), .A3(n31), .A4(P_DATA[1]), .Y(n4)
         );
  AO22X1_RVT U34 ( .A1(n32), .A2(P_DATA[1]), .A3(n31), .A4(P_DATA[0]), .Y(n3)
         );
endmodule


module strt_chk ( CLK, RST, sampled_bit, Enable, strt_glitch );
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire   n2, n1;

  DFFARX1_RVT strt_glitch_reg ( .D(n2), .CLK(CLK), .RSTB(RST), .Q(strt_glitch)
         );
  INVX0_RVT U2 ( .A(Enable), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Enable), .A2(sampled_bit), .A3(n1), .A4(strt_glitch), 
        .Y(n2) );
endmodule


module par_chk_DATA_WIDTH8 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable;
  output par_err;
  wire   n7, n1, n2, n3, n4, n5, n6;

  DFFARX1_RVT par_err_reg ( .D(n7), .CLK(CLK), .RSTB(RST), .Q(par_err) );
  HADDX1_RVT U2 ( .A0(P_DATA[0]), .B0(P_DATA[2]), .SO(n1) );
  FADDX1_RVT U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .CI(n1), .S(n2) );
  FADDX1_RVT U4 ( .A(P_DATA[1]), .B(P_DATA[3]), .CI(n2), .S(n3) );
  FADDX1_RVT U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .CI(n3), .S(n4) );
  FADDX1_RVT U6 ( .A(parity_type), .B(sampled_bit), .CI(n4), .S(n6) );
  INVX0_RVT U7 ( .A(Enable), .Y(n5) );
  AO22X1_RVT U8 ( .A1(Enable), .A2(n6), .A3(n5), .A4(par_err), .Y(n7) );
endmodule


module stp_chk ( CLK, RST, sampled_bit, Enable, stp_err );
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire   n3, n1, n2;

  DFFARX1_RVT stp_err_reg ( .D(n3), .CLK(CLK), .RSTB(RST), .Q(stp_err) );
  INVX0_RVT U2 ( .A(sampled_bit), .Y(n2) );
  INVX0_RVT U3 ( .A(Enable), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Enable), .A2(n2), .A3(n1), .A4(stp_err), .Y(n3) );
endmodule


module UART_RX ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, P_DATA, 
        data_valid, parity_error, framing_error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type;
  output data_valid, parity_error, framing_error;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm ( .CLK(CLK), .RST(RST), .S_DATA(RX_IN), 
        .Prescale(Prescale), .parity_enable(parity_enable), .bit_count(
        bit_count), .edge_count(edge_count), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .strt_chk_en(strt_chk_en), 
        .edge_bit_en(edge_bit_en), .deser_en(deser_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(dat_samp_en), .data_valid(data_valid)
         );
  edge_bit_counter U0_edge_bit_counter ( .CLK(CLK), .RST(RST), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count) );
  data_sampling U0_data_sampling ( .CLK(CLK), .RST(RST), .S_DATA(RX_IN), 
        .Prescale({Prescale[5:1], 1'b0}), .edge_count(edge_count), .Enable(
        dat_samp_en), .sampled_bit(sampled_bit) );
  deserializer_DATA_WIDTH8 U0_deserializer ( .CLK(CLK), .RST(RST), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA) );
  strt_chk U0_strt_chk ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch) );
  par_chk_DATA_WIDTH8 U0_par_chk ( .CLK(CLK), .RST(RST), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error) );
  stp_chk U0_stp_chk ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n2;

  UART_TX_DATA_WIDTH8 U0_UART_TX ( .CLK(TX_CLK), .RST(RST), .P_DATA(TX_IN_P), 
        .Data_Valid(TX_IN_V), .parity_enable(parity_enable), .parity_type(
        parity_type), .TX_OUT(TX_OUT_S), .busy_BAR(n2) );
  UART_RX U0_UART_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN_S), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Prescale(
        Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .parity_error(
        parity_error), .framing_error(framing_error) );
  INVX0_RVT U1 ( .A(n2), .Y(TX_OUT_V) );
endmodule

