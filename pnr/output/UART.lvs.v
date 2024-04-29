// IC Compiler II Verilog Writer
// Generated on 04/28/2024 at 19:25:18
// Library Name: UART.dlib
// Block Name: UART
// User Label: 
// Write Command: write_verilog -exclude { empty_modules end_cap_cells well_tap_cells } output/UART.lvs.v
module stp_chk_test_1 ( CLK , RST , sampled_bit , Enable , stp_err , test_si , 
    test_se , VDD , VSS ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
output stp_err ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;

wire n2 ;
wire n4 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT stp_err_reg ( .D ( n4 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( stp_err ) , .QN ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1_RVT U2 ( .A1 ( sampled_bit ) , .A2 ( n1 ) , .A3 ( Enable ) , 
    .A4 ( n2 ) , .Y ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U3 ( .A ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK , RST , parity_type , sampled_bit , 
    Enable , P_DATA , par_err , test_si , test_so , test_se , VDD , VSS , 
    dftopt0 ) ;
input  CLK ;
input  RST ;
input  parity_type ;
input  sampled_bit ;
input  Enable ;
input  [7:0] P_DATA ;
output par_err ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;

wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n9 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT par_err_reg ( .D ( n9 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( par_err ) , .QN ( test_so ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U2 ( .A1 ( par_err ) , .A2 ( n1 ) , .A3 ( Enable ) , .A4 ( n2 ) , 
    .Y ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U3 ( .A1 ( n3 ) , .A2 ( n4 ) , .A3 ( n5 ) , .Y ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U5 ( .A1 ( P_DATA[0] ) , .A2 ( P_DATA[1] ) , .A3 ( n6 ) , 
    .Y ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U7 ( .A1 ( P_DATA[5] ) , .A2 ( P_DATA[6] ) , .A3 ( n7 ) , 
    .Y ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U4 ( .A1 ( P_DATA[7] ) , .A2 ( P_DATA[4] ) , .Y ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U6 ( .A1 ( P_DATA[3] ) , .A2 ( P_DATA[2] ) , .Y ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U8 ( .A1 ( sampled_bit ) , .A2 ( parity_type ) , .Y ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U9 ( .A ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module strt_chk_test_1 ( CLK , RST , sampled_bit , Enable , strt_glitch , 
    test_si , test_so , test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt2 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
output strt_glitch ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
input  dftopt2 ;

wire n3 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT strt_glitch_reg ( .D ( n3 ) , .SI ( dftopt2 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , .QN ( test_so ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U2 ( .A1 ( sampled_bit ) , .A2 ( Enable ) , .A3 ( strt_glitch ) , 
    .A4 ( n1 ) , .Y ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U3 ( .A ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK , RST , sampled_bit , Enable , 
    edge_count , Prescale , P_DATA , test_si , test_so , test_se , VDD , VSS , 
    dftopt1 , dftopt0 , dftopt3 , dftopt2 , dftopt13 , dftopt4 , dftopt9 , 
    dftopt5 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
input  [5:0] edge_count ;
input  [5:0] Prescale ;
output [7:0] P_DATA ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt1 ;
output dftopt0 ;
input  dftopt3 ;
output dftopt2 ;
input  dftopt13 ;
output dftopt4 ;
input  dftopt9 ;
output dftopt5 ;

wire test_so_gOb3 ;
wire N2 ;
wire N3 ;
wire N4 ;
wire N5 ;
wire N6 ;
wire N7 ;
wire n1 ;
wire n18 ;
wire n20 ;
wire n22 ;
wire n24 ;
wire n26 ;
wire n28 ;
wire n30 ;
wire n32 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n43 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire dftopt4_gOb14 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT P_DATA_reg_7_ ( .D ( n32 ) , .SI ( dftopt9 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[7] ) , .QN ( test_so_gOb3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_6_ ( .D ( n30 ) , .SI ( n47 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[6] ) , .QN ( dftopt0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_5_ ( .D ( n28 ) , .SI ( test_so_gOb3 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[5] ) , 
    .QN ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_4_ ( .D ( n26 ) , .SI ( dftopt4_gOb14 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[4] ) , 
    .QN ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_3_ ( .D ( n24 ) , .SI ( n48 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[3] ) , .QN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_2_ ( .D ( n22 ) , .SI ( n49 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[2] ) , .QN ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_1_ ( .D ( n20 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[1] ) , .QN ( dftopt4_gOb14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_0_ ( .D ( n18 ) , .SI ( n50 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[0] ) , .QN ( dftopt5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U3 ( .A1 ( n1 ) , .A2 ( P_DATA[0] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[1] ) , .Y ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U4 ( .A1 ( n1 ) , .A2 ( P_DATA[1] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[2] ) , .Y ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U6 ( .A1 ( n1 ) , .A2 ( P_DATA[2] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[3] ) , .Y ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U8 ( .A1 ( n1 ) , .A2 ( P_DATA[3] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[4] ) , .Y ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U10 ( .A1 ( n1 ) , .A2 ( P_DATA[4] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[5] ) , .Y ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U12 ( .A1 ( n1 ) , .A2 ( P_DATA[5] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[6] ) , .Y ( n28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U14 ( .A1 ( n1 ) , .A2 ( P_DATA[6] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[7] ) , .Y ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U16 ( .A1 ( n1 ) , .A2 ( P_DATA[7] ) , .A3 ( sampled_bit ) , 
    .A4 ( n43 ) , .Y ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( n1 ) , .Y ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U7 ( .A ( N2 ) , .Y ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U9 ( .A1 ( N7 ) , .A2 ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1_RVT U11 ( .A ( edge_count[1] ) , .Y ( n35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1_RVT U13 ( .A ( n2 ) , .Y ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U15 ( .A ( n3 ) , .Y ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U17 ( .A ( Prescale[4] ) , .Y ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U18 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U19 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n6 ) , 
    .Y ( N2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U28 ( .A1 ( n2 ) , .A2 ( Prescale[2] ) , .Y ( n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U29 ( .A1 ( Prescale[2] ) , .A2 ( n2 ) , .A3 ( n7 ) , .Y ( N3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U30 ( .A1 ( n3 ) , .A2 ( Prescale[3] ) , .Y ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U31 ( .A1 ( Prescale[3] ) , .A2 ( n3 ) , .A3 ( n4 ) , .Y ( N4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U32 ( .A1 ( n8 ) , .A2 ( n4 ) , .Y ( N5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_RVT U33 ( .A1 ( n4 ) , .A2 ( n8 ) , .Y ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U34 ( .A1 ( n5 ) , .A2 ( Prescale[5] ) , .Y ( N6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U35 ( .A1 ( N4 ) , .A2 ( edge_count[3] ) , .Y ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U36 ( .A1 ( N3 ) , .A2 ( edge_count[2] ) , .Y ( n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U37 ( .A1 ( N5 ) , .A2 ( edge_count[4] ) , .Y ( n9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_RVT U38 ( .A1 ( n11 ) , .A2 ( n10 ) , .A3 ( n9 ) , .Y ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U39 ( .A1 ( N6 ) , .A2 ( edge_count[5] ) , .Y ( n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U40 ( .A1 ( Prescale[0] ) , .A2 ( edge_count[0] ) , .Y ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_RVT U41 ( .A1 ( N2 ) , .A2 ( n12 ) , .A3 ( n12 ) , .A4 ( n35 ) , 
    .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U42 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_RVT U43 ( .A1 ( n13 ) , .A2 ( n34 ) , .A3 ( edge_count[1] ) , 
    .A4 ( n13 ) , .Y ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0_RVT U44 ( .A1 ( n33 ) , .A2 ( n16 ) , .A3 ( n15 ) , .A4 ( n14 ) , 
    .Y ( N7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module data_sampling_test_1 ( CLK , RST , S_DATA , Prescale , edge_count , 
    Enable , sampled_bit , test_si , test_so , test_se , VDD , VSS , dftopt1 , 
    dftopt0 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , dftopt6 , dftopt7 , 
    dftopt8 , dftopt9 , dftopt10 , dftopt11 ) ;
input  CLK ;
input  RST ;
input  S_DATA ;
input  [5:0] Prescale ;
input  [5:0] edge_count ;
input  Enable ;
output sampled_bit ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt1 ;
output dftopt0 ;
input  dftopt2 ;
output dftopt3 ;
input  dftopt4 ;
input  dftopt5 ;
input  dftopt6 ;
output dftopt7 ;
input  dftopt8 ;
output dftopt9 ;
input  dftopt10 ;
input  dftopt11 ;

wire N58 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n56 ;
wire [4:0] half_edges ;
wire [4:1] half_edges_p1 ;
wire [4:1] half_edges_n1 ;
wire [4:2] add_21_carry ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT Samples_reg_2_ ( .D ( n25 ) , .SI ( dftopt10 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n33 ) , 
    .QN ( dftopt0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT Samples_reg_1_ ( .D ( n24 ) , .SI ( dftopt8 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( n56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT Samples_reg_0_ ( .D ( n23 ) , .SI ( dftopt11 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , 
    .QN ( dftopt7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT sampled_bit_reg ( .D ( N58 ) , .SI ( n56 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sampled_bit ) , .QN ( dftopt9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1_RVT add_21_U1_1_1 ( .A0 ( half_edges[1] ) , .B0 ( half_edges[0] ) , 
    .C1 ( add_21_carry[2] ) , .SO ( half_edges_p1[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
HADDX1_RVT add_21_U1_1_2 ( .A0 ( half_edges[2] ) , .B0 ( add_21_carry[2] ) , 
    .C1 ( add_21_carry[3] ) , .SO ( half_edges_p1[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
HADDX1_RVT add_21_U1_1_3 ( .A0 ( half_edges[3] ) , .B0 ( add_21_carry[3] ) , 
    .C1 ( add_21_carry[4] ) , .SO ( half_edges_p1[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1_RVT U4 ( .A ( half_edges[3] ) , .Y ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( n12 ) , .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U6 ( .A ( n3 ) , .Y ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U10 ( .A ( Prescale[4] ) , .Y ( n11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_RVT U11 ( .A ( Prescale[1] ) , .Y ( half_edges[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1_RVT U12 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , .Y ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U13 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , .A3 ( n6 ) , 
    .Y ( half_edges[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U14 ( .A1 ( n3 ) , .A2 ( Prescale[3] ) , .Y ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U15 ( .A1 ( Prescale[3] ) , .A2 ( n3 ) , .A3 ( n4 ) , 
    .Y ( half_edges[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U16 ( .A1 ( n11 ) , .A2 ( n4 ) , .Y ( half_edges[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U17 ( .A1 ( n4 ) , .A2 ( n11 ) , .Y ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U18 ( .A1 ( n5 ) , .A2 ( Prescale[5] ) , .Y ( half_edges[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U19 ( .A1 ( add_21_carry[4] ) , .A2 ( half_edges[4] ) , 
    .Y ( half_edges_p1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U20 ( .A1 ( half_edges[1] ) , .A2 ( half_edges[0] ) , .Y ( n12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U21 ( .A1 ( half_edges[1] ) , .A2 ( half_edges[0] ) , .A3 ( n15 ) , 
    .Y ( half_edges_n1[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U22 ( .A1 ( n12 ) , .A2 ( half_edges[2] ) , .Y ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U23 ( .A1 ( half_edges[2] ) , .A2 ( n12 ) , .A3 ( n13 ) , 
    .Y ( half_edges_n1[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U24 ( .A1 ( n16 ) , .A2 ( n13 ) , .Y ( half_edges_n1[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U25 ( .A1 ( n13 ) , .A2 ( n16 ) , .Y ( n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U26 ( .A1 ( n14 ) , .A2 ( half_edges[4] ) , 
    .Y ( half_edges_n1[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_RVT U27 ( .A1 ( n17 ) , .A2 ( n18 ) , .S0 ( n19 ) , .Y ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0_RVT U28 ( .A1 ( n20 ) , .A2 ( n21 ) , .A3 ( n22 ) , .A4 ( n26 ) , 
    .Y ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U29 ( .A1 ( half_edges_p1[2] ) , .A2 ( edge_count[2] ) , 
    .Y ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U30 ( .A1 ( n27 ) , .A2 ( n28 ) , .Y ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0_RVT U31 ( .A1 ( n29 ) , .A2 ( n30 ) , .A3 ( n31 ) , .A4 ( n32 ) , 
    .Y ( n20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U32 ( .A1 ( edge_count[3] ) , .A2 ( half_edges_p1[3] ) , 
    .Y ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U33 ( .A1 ( edge_count[4] ) , .A2 ( half_edges_p1[4] ) , 
    .Y ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U34 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[1] ) , .Y ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U35 ( .A1 ( edge_count[1] ) , .A2 ( half_edges_p1[1] ) , 
    .Y ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U36 ( .A1 ( Enable ) , .A2 ( n33 ) , .Y ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_RVT U37 ( .A1 ( n34 ) , .A2 ( n18 ) , .S0 ( n22 ) , .Y ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_RVT U38 ( .A1 ( n35 ) , .A2 ( n36 ) , .A3 ( n37 ) , .A4 ( n38 ) , 
    .Y ( n22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_RVT U39 ( .A1 ( n39 ) , .A2 ( n40 ) , .A3 ( n27 ) , .A4 ( n28 ) , 
    .Y ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U40 ( .A1 ( n41 ) , .A2 ( half_edges[0] ) , .Y ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U41 ( .A1 ( n42 ) , .A2 ( half_edges[1] ) , .Y ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U42 ( .A1 ( n43 ) , .A2 ( half_edges[3] ) , .Y ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U43 ( .A1 ( n44 ) , .A2 ( half_edges[4] ) , .Y ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U44 ( .A1 ( n45 ) , .A2 ( half_edges[2] ) , .Y ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U45 ( .A1 ( Enable ) , .A2 ( n2 ) , .Y ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_RVT U46 ( .A1 ( n18 ) , .A2 ( n46 ) , .S0 ( n27 ) , .Y ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0_RVT U47 ( .A1 ( n47 ) , .A2 ( n48 ) , .A3 ( n49 ) , .A4 ( n50 ) , 
    .Y ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U48 ( .A1 ( n51 ) , .A2 ( n28 ) , .A3 ( n52 ) , .Y ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U49 ( .A1 ( n45 ) , .A2 ( half_edges_n1[2] ) , .Y ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U50 ( .A ( edge_count[2] ) , .Y ( n45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_RVT U51 ( .A ( edge_count[5] ) , .Y ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1_RVT U52 ( .A1 ( n43 ) , .A2 ( half_edges_n1[3] ) , .Y ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U53 ( .A ( edge_count[3] ) , .Y ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1_RVT U54 ( .A1 ( n41 ) , .A2 ( Prescale[1] ) , .Y ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U55 ( .A ( edge_count[0] ) , .Y ( n41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1_RVT U56 ( .A1 ( n42 ) , .A2 ( half_edges_n1[1] ) , .Y ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U57 ( .A ( edge_count[1] ) , .Y ( n42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1_RVT U58 ( .A1 ( n44 ) , .A2 ( half_edges_n1[4] ) , .Y ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U59 ( .A ( edge_count[4] ) , .Y ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U60 ( .A1 ( Enable ) , .A2 ( n1 ) , .Y ( n46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U61 ( .A1 ( S_DATA ) , .A2 ( Enable ) , .Y ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U62 ( .A1 ( Enable ) , .A2 ( n53 ) , .Y ( N58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1_RVT U63 ( .A1 ( n2 ) , .A2 ( n1 ) , .A3 ( n54 ) , .A4 ( n33 ) , 
    .Y ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U64 ( .A1 ( dftopt7 ) , .A2 ( n56 ) , .Y ( n54 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module edge_bit_counter_test_1 ( CLK , RST , Enable , Prescale , bit_count , 
    edge_count , test_si , test_so , test_se , VDD , VSS , dftopt0 , dftopt1 , 
    dftopt6 , HFSNET_0 , HFSNET_1 , dftopt2 , dftopt3 , dftopt4 , dftopt7 , 
    dftopt5 , dftopt8 , dftopt23 , dftopt9 , dftopt10 , dftopt29 ) ;
input  CLK ;
input  RST ;
input  Enable ;
input  [5:0] Prescale ;
output [3:0] bit_count ;
output [5:0] edge_count ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt6 ;
input  HFSNET_0 ;
input  HFSNET_1 ;
output dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt7 ;
output dftopt5 ;
output dftopt8 ;
input  dftopt23 ;
output dftopt9 ;
output dftopt10 ;
input  dftopt29 ;

wire N8 ;
wire N9 ;
wire N10 ;
wire N11 ;
wire N12 ;
wire N19 ;
wire N20 ;
wire N21 ;
wire N22 ;
wire N23 ;
wire N24 ;
wire N26 ;
wire N27 ;
wire N28 ;
wire N29 ;
wire N30 ;
wire N31 ;
wire dftopt5_gOb16 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n1 ;
wire n2 ;
wire n13 ;
wire n17 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n52 ;
wire n53 ;
wire dftopt2_gOb10 ;
wire [5:2] add_31_carry ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT edge_count_reg_0_ ( .D ( N19 ) , .SI ( dftopt2_gOb10 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[0] ) , .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_5_ ( .D ( N24 ) , .SI ( n52 ) , .SE ( HFSNET_0 ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( edge_count[5] ) , 
    .QN ( dftopt8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_1_ ( .D ( N20 ) , .SI ( dftopt5_gOb16 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[1] ) , .QN ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_2_ ( .D ( N21 ) , .SI ( n53 ) , .SE ( HFSNET_0 ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( edge_count[2] ) , 
    .QN ( dftopt2_gOb10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_3_ ( .D ( N22 ) , .SI ( dftopt7 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[3] ) , .QN ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_4_ ( .D ( N23 ) , .SI ( dftopt0 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[4] ) , .QN ( n52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_0_ ( .D ( n32 ) , .SI ( n2 ) , .SE ( HFSNET_0 ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( bit_count[0] ) , 
    .QN ( dftopt9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_1_ ( .D ( n31 ) , .SI ( n1 ) , .SE ( HFSNET_0 ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( bit_count[1] ) , 
    .QN ( dftopt10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_2_ ( .D ( n30 ) , .SI ( dftopt29 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[2] ) , 
    .QN ( dftopt4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_3_ ( .D ( n29 ) , .SI ( dftopt23 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[3] ) , 
    .QN ( dftopt5_gOb16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U16 ( .A1 ( n18 ) , .A2 ( n19 ) , .Y ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0_RVT U17 ( .A1 ( Enable ) , .A2 ( n20 ) , .A3 ( n21 ) , 
    .A4 ( bit_count[2] ) , .Y ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U18 ( .A1 ( N31 ) , .A2 ( dftopt5_gOb16 ) , .Y ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U19 ( .A1 ( n22 ) , .A2 ( n23 ) , .A3 ( dftopt5_gOb16 ) , 
    .Y ( n18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U20 ( .A1 ( n20 ) , .A2 ( bit_count[2] ) , .A3 ( n49 ) , 
    .Y ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U21 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .Y ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U22 ( .A1 ( bit_count[2] ) , .A2 ( n24 ) , .A3 ( n25 ) , 
    .A4 ( n26 ) , .Y ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U23 ( .A1 ( dftopt10 ) , .A2 ( bit_count[2] ) , .Y ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U24 ( .A1 ( Enable ) , .A2 ( dftopt10 ) , .A3 ( n27 ) , 
    .Y ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U25 ( .A1 ( bit_count[1] ) , .A2 ( n27 ) , .A3 ( n26 ) , 
    .A4 ( dftopt10 ) , .Y ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U26 ( .A1 ( bit_count[0] ) , .A2 ( n22 ) , .A3 ( Enable ) , 
    .Y ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U27 ( .A1 ( Enable ) , .A2 ( dftopt9 ) , .A3 ( n48 ) , .Y ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U28 ( .A1 ( n48 ) , .A2 ( bit_count[0] ) , .A3 ( n28 ) , 
    .A4 ( Enable ) , .Y ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U29 ( .A1 ( n22 ) , .A2 ( dftopt9 ) , .Y ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U30 ( .A1 ( N12 ) , .A2 ( n48 ) , .Y ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U31 ( .A1 ( N11 ) , .A2 ( n48 ) , .Y ( N23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U32 ( .A1 ( N10 ) , .A2 ( n48 ) , .Y ( N22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U33 ( .A1 ( N9 ) , .A2 ( n48 ) , .Y ( N21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U34 ( .A1 ( N8 ) , .A2 ( n48 ) , .Y ( N20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U35 ( .A1 ( n1 ) , .A2 ( n48 ) , .Y ( N19 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1_RVT U36 ( .A1 ( n49 ) , .A2 ( N31 ) , .Y ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
HADDX1_RVT add_31_U1_1_1 ( .A0 ( edge_count[1] ) , .B0 ( edge_count[0] ) , 
    .C1 ( add_31_carry[2] ) , .SO ( N8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1_RVT add_31_U1_1_2 ( .A0 ( edge_count[2] ) , .B0 ( add_31_carry[2] ) , 
    .C1 ( add_31_carry[3] ) , .SO ( N9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1_RVT add_31_U1_1_3 ( .A0 ( edge_count[3] ) , .B0 ( add_31_carry[3] ) , 
    .C1 ( add_31_carry[4] ) , .SO ( N10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
HADDX1_RVT add_31_U1_1_4 ( .A0 ( edge_count[4] ) , .B0 ( add_31_carry[4] ) , 
    .C1 ( add_31_carry[5] ) , .SO ( N11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U6 ( .A ( n22 ) , .Y ( n48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U14 ( .A ( Enable ) , .Y ( n49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U15 ( .A ( N26 ) , .Y ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U37 ( .A ( n13 ) , .Y ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U38 ( .A ( n17 ) , .Y ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U39 ( .A ( Prescale[4] ) , .Y ( n37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1_RVT U40 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U41 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n35 ) , 
    .Y ( N26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U42 ( .A1 ( n13 ) , .A2 ( Prescale[2] ) , .Y ( n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U43 ( .A1 ( Prescale[2] ) , .A2 ( n13 ) , .A3 ( n36 ) , 
    .Y ( N27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U44 ( .A1 ( n17 ) , .A2 ( Prescale[3] ) , .Y ( n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U45 ( .A1 ( Prescale[3] ) , .A2 ( n17 ) , .A3 ( n33 ) , 
    .Y ( N28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U46 ( .A1 ( n37 ) , .A2 ( n33 ) , .Y ( N29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_RVT U47 ( .A1 ( n33 ) , .A2 ( n37 ) , .Y ( n34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U48 ( .A1 ( n34 ) , .A2 ( Prescale[5] ) , .Y ( N30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U49 ( .A1 ( add_31_carry[5] ) , .A2 ( edge_count[5] ) , 
    .Y ( N12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U50 ( .A1 ( N28 ) , .A2 ( edge_count[3] ) , .Y ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U51 ( .A1 ( N27 ) , .A2 ( edge_count[2] ) , .Y ( n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U52 ( .A1 ( N29 ) , .A2 ( edge_count[4] ) , .Y ( n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_RVT U53 ( .A1 ( n40 ) , .A2 ( n39 ) , .A3 ( n38 ) , .Y ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_RVT U54 ( .A1 ( N30 ) , .A2 ( edge_count[5] ) , .Y ( n45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U55 ( .A1 ( Prescale[0] ) , .A2 ( edge_count[0] ) , .Y ( n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_RVT U56 ( .A1 ( N26 ) , .A2 ( n41 ) , .A3 ( n41 ) , .A4 ( n2 ) , 
    .Y ( n44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U57 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_RVT U58 ( .A1 ( n42 ) , .A2 ( n47 ) , .A3 ( edge_count[1] ) , 
    .A4 ( n42 ) , .Y ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR4X0_RVT U59 ( .A1 ( n46 ) , .A2 ( n45 ) , .A3 ( n44 ) , .A4 ( n43 ) , 
    .Y ( N31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK , RST , S_DATA , Prescale , 
    parity_enable , bit_count , edge_count , par_err , stp_err , strt_glitch , 
    strt_chk_en , edge_bit_en , deser_en , par_chk_en , stp_chk_en , 
    dat_samp_en , data_valid , test_si , test_so , test_se , VDD , VSS , 
    dftopt0 , dftopt1 , dftopt11 , dftopt2 , dftopt3 ) ;
input  CLK ;
input  RST ;
input  S_DATA ;
input  [5:0] Prescale ;
input  parity_enable ;
input  [3:0] bit_count ;
input  [5:0] edge_count ;
input  par_err ;
input  stp_err ;
input  strt_glitch ;
output strt_chk_en ;
output edge_bit_en ;
output deser_en ;
output par_chk_en ;
output stp_chk_en ;
output dat_samp_en ;
output data_valid ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt11 ;
input  dftopt2 ;
input  dftopt3 ;

wire error_check_edge_5_ ;
wire error_check_edge_4_ ;
wire error_check_edge_3_ ;
wire error_check_edge_2_ ;
wire error_check_edge_1_ ;
wire n18 ;
wire n1 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n13 ;
wire n14 ;
wire n16 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire n41 ;
wire n42 ;
wire n43 ;
wire n44 ;
wire n45 ;
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
wire n52 ;
wire n53 ;
wire n54 ;
wire n55 ;
wire n56 ;
wire n57 ;
wire n58 ;
wire n59 ;
wire [5:0] check_edge ;
wire [2:0] next_state ;
wire [5:3] sub_40_carry ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , .SI ( dftopt0 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( dftopt3 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , 
    .QN ( test_so ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( n2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n28 ) , 
    .QN ( dftopt1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U4 ( .A ( n3 ) , .Y ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( n4 ) , .Y ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U6 ( .A ( Prescale[4] ) , .Y ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U9 ( .A ( Prescale[1] ) , .Y ( error_check_edge_1_ ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U10 ( .A1 ( Prescale[5] ) , .A2 ( sub_40_carry[5] ) , 
    .Y ( error_check_edge_5_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U11 ( .A1 ( Prescale[4] ) , .A2 ( sub_40_carry[4] ) , 
    .Y ( sub_40_carry[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U12 ( .A1 ( sub_40_carry[4] ) , .A2 ( Prescale[4] ) , 
    .Y ( error_check_edge_4_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U13 ( .A1 ( Prescale[3] ) , .A2 ( sub_40_carry[3] ) , 
    .Y ( sub_40_carry[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U14 ( .A1 ( sub_40_carry[3] ) , .A2 ( Prescale[3] ) , 
    .Y ( error_check_edge_3_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U15 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , 
    .Y ( sub_40_carry[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U16 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[2] ) , 
    .Y ( error_check_edge_2_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U17 ( .A ( Prescale[0] ) , .Y ( check_edge[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1_RVT U18 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U19 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n7 ) , 
    .Y ( check_edge[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U20 ( .A1 ( n3 ) , .A2 ( Prescale[2] ) , .Y ( n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U21 ( .A1 ( Prescale[2] ) , .A2 ( n3 ) , .A3 ( n8 ) , 
    .Y ( check_edge[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U22 ( .A1 ( n4 ) , .A2 ( Prescale[3] ) , .Y ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U23 ( .A1 ( Prescale[3] ) , .A2 ( n4 ) , .A3 ( n5 ) , 
    .Y ( check_edge[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U24 ( .A1 ( n9 ) , .A2 ( n5 ) , .Y ( check_edge[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U25 ( .A1 ( n5 ) , .A2 ( n9 ) , .Y ( n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U26 ( .A1 ( n6 ) , .A2 ( Prescale[5] ) , .Y ( check_edge[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U27 ( .A ( n13 ) , .Y ( strt_chk_en ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U28 ( .A1 ( n14 ) , .A2 ( test_so ) , .Y ( par_chk_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U29 ( .A1 ( n16 ) , .A2 ( n19 ) , .Y ( next_state[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_RVT U30 ( .A1 ( bit_count[3] ) , .A2 ( n20 ) , .A3 ( n21 ) , 
    .Y ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_RVT U31 ( .A1 ( n14 ) , .A2 ( n22 ) , .S0 ( n23 ) , .Y ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U32 ( .A1 ( deser_en ) , .A2 ( n24 ) , .Y ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U33 ( .A1 ( test_so ) , .A2 ( n25 ) , .A3 ( n14 ) , 
    .Y ( next_state[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U34 ( .A1 ( n26 ) , .A2 ( n27 ) , .A3 ( n28 ) , .Y ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U35 ( .A ( strt_glitch ) , .Y ( n27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_RVT U36 ( .A1 ( n29 ) , .A2 ( n30 ) , .A3 ( deser_en ) , .A4 ( n31 ) , 
    .A5 ( n32 ) , .Y ( next_state[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U37 ( .A1 ( n33 ) , .A2 ( n34 ) , .Y ( n32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0_RVT U38 ( .A1 ( n43 ) , .A2 ( n36 ) , .A3 ( n37 ) , .A4 ( n38 ) , 
    .Y ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_RVT U39 ( .A1 ( n42 ) , .A2 ( n40 ) , .A3 ( n39 ) , .A4 ( n41 ) , 
    .Y ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U40 ( .A1 ( stp_chk_en ) , .A2 ( n35 ) , .A3 ( bit_count[3] ) , 
    .Y ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U41 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .Y ( n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U42 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U43 ( .A ( n16 ) , .Y ( stp_chk_en ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U44 ( .A1 ( n14 ) , .A2 ( n1 ) , .Y ( n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_RVT U45 ( .A ( n44 ) , .Y ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U46 ( .A1 ( edge_count[1] ) , .A2 ( error_check_edge_1_ ) , 
    .Y ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U47 ( .A1 ( n46 ) , .A2 ( n45 ) , .A3 ( n47 ) , .Y ( n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U48 ( .A1 ( edge_count[3] ) , .A2 ( error_check_edge_3_ ) , 
    .Y ( n47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U49 ( .A1 ( edge_count[4] ) , .A2 ( error_check_edge_4_ ) , 
    .Y ( n46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U50 ( .A1 ( edge_count[2] ) , .A2 ( error_check_edge_2_ ) , 
    .Y ( n45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U51 ( .A1 ( edge_count[5] ) , .A2 ( error_check_edge_5_ ) , 
    .Y ( n36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_RVT U52 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .S0 ( n24 ) , 
    .Y ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U53 ( .A ( parity_enable ) , .Y ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U54 ( .A1 ( strt_glitch ) , .A2 ( n26 ) , .A3 ( n13 ) , 
    .Y ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U55 ( .A1 ( n28 ) , .A2 ( n48 ) , .Y ( n13 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND4X1_RVT U56 ( .A1 ( n20 ) , .A2 ( n23 ) , .A3 ( n49 ) , .A4 ( n2 ) , 
    .Y ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U57 ( .A ( bit_count[3] ) , .Y ( n49 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0_RVT U58 ( .A1 ( n20 ) , .A2 ( n23 ) , .A3 ( bit_count[3] ) , 
    .Y ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U59 ( .A ( bit_count[0] ) , .Y ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0_RVT U60 ( .A1 ( n50 ) , .A2 ( n51 ) , .Y ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0_RVT U61 ( .A1 ( n52 ) , .A2 ( n53 ) , .A3 ( n54 ) , .A4 ( n55 ) , 
    .Y ( n51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U62 ( .A1 ( edge_count[3] ) , .A2 ( check_edge[3] ) , .Y ( n55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U63 ( .A1 ( edge_count[4] ) , .A2 ( check_edge[4] ) , .Y ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U64 ( .A1 ( edge_count[0] ) , .A2 ( check_edge[0] ) , .Y ( n53 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U65 ( .A1 ( edge_count[1] ) , .A2 ( check_edge[1] ) , .Y ( n52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND4X0_RVT U66 ( .A1 ( n56 ) , .A2 ( n57 ) , .A3 ( n58 ) , .A4 ( n43 ) , 
    .Y ( n50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U67 ( .A ( bit_count[2] ) , .Y ( n43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_RVT U68 ( .A ( bit_count[1] ) , .Y ( n58 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XNOR2X1_RVT U69 ( .A1 ( edge_count[5] ) , .A2 ( check_edge[5] ) , .Y ( n57 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U70 ( .A1 ( edge_count[2] ) , .A2 ( check_edge[2] ) , .Y ( n56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U71 ( .A ( S_DATA ) , .Y ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_RVT U72 ( .A ( n59 ) , .Y ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U73 ( .A1 ( n48 ) , .A2 ( n44 ) , .Y ( edge_bit_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U74 ( .A1 ( n18 ) , .A2 ( n28 ) , .Y ( n44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X1_RVT U75 ( .A1 ( n28 ) , .A2 ( n2 ) , .A3 ( test_so ) , 
    .Y ( deser_en ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0_RVT U76 ( .A1 ( n59 ) , .A2 ( stp_err ) , .A3 ( par_err ) , 
    .Y ( data_valid ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_RVT U77 ( .A1 ( n28 ) , .A2 ( n2 ) , .A3 ( n1 ) , .Y ( n59 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U78 ( .A1 ( dftopt1 ) , .A2 ( n48 ) , .Y ( dat_samp_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U79 ( .A1 ( n18 ) , .A2 ( S_DATA ) , .A3 ( n1 ) , .Y ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART_RX_test_1 ( CLK , RST , RX_IN , parity_enable , parity_type , 
    Prescale , P_DATA , data_valid , parity_error , framing_error , test_si , 
    test_so , test_se , VDD , VSS , dftopt6 , dftopt7 , dftopt11 , dftopt8 , 
    HFSNET_1 , HFSNET_3 , dftopt12 , dftopt13 , dftopt17 , dftopt23 , 
    dftopt18 , dftopt29 , dftopt19 ) ;
input  CLK ;
input  RST ;
input  RX_IN ;
input  parity_enable ;
input  parity_type ;
input  [5:0] Prescale ;
output [7:0] P_DATA ;
output data_valid ;
output parity_error ;
output framing_error ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt6 ;
output dftopt7 ;
input  dftopt11 ;
output dftopt8 ;
input  HFSNET_1 ;
input  HFSNET_3 ;
output dftopt12 ;
input  dftopt13 ;
output dftopt17 ;
input  dftopt23 ;
output dftopt18 ;
input  dftopt29 ;
output dftopt19 ;

wire test_so_gOb0 ;
wire strt_glitch ;
wire strt_chk_en ;
wire edge_bit_en ;
wire deser_en ;
wire par_chk_en ;
wire stp_chk_en ;
wire dat_samp_en ;
wire sampled_bit ;
wire HFSNET_2 ;
wire n5 ;
wire dftopt0 ;
wire HFSNET_0 ;
wire dftopt4 ;
wire [3:0] bit_count ;
wire [5:0] edge_count ;
supply1 VDD ;
supply0 VSS ;
wire dftopt1 ;
wire dftopt2 ;
wire dftopt3 ;
wire dftopt5 ;
wire dftopt10 ;
wire dftopt12_gOb11 ;
wire dftopt15 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;
wire SYNOPSYS_UNCONNECTED_19 ;
wire SYNOPSYS_UNCONNECTED_20 ;
wire SYNOPSYS_UNCONNECTED_21 ;
wire SYNOPSYS_UNCONNECTED_22 ;
wire SYNOPSYS_UNCONNECTED_23 ;
wire SYNOPSYS_UNCONNECTED_24 ;
wire SYNOPSYS_UNCONNECTED_25 ;
wire SYNOPSYS_UNCONNECTED_26 ;
wire SYNOPSYS_UNCONNECTED_27 ;
wire SYNOPSYS_UNCONNECTED_28 ;
wire SYNOPSYS_UNCONNECTED_29 ;

NBUFFX8_RVT HFSBUF_428_3 ( .A ( HFSNET_3 ) , .Y ( HFSNET_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK ( CLK ) , 
    .RST ( HFSNET_2 ) , .S_DATA ( RX_IN ) , .Prescale ( Prescale ) , 
    .parity_enable ( parity_enable ) , .bit_count ( bit_count ) , 
    .edge_count ( edge_count ) , .par_err ( parity_error ) , 
    .stp_err ( framing_error ) , .strt_glitch ( strt_glitch ) , 
    .strt_chk_en ( strt_chk_en ) , .edge_bit_en ( edge_bit_en ) , 
    .deser_en ( deser_en ) , .par_chk_en ( par_chk_en ) , 
    .stp_chk_en ( stp_chk_en ) , .dat_samp_en ( dat_samp_en ) , 
    .data_valid ( data_valid ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( test_so_gOb0 ) , .test_se ( HFSNET_0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( dftopt1 ) , .dftopt1 ( dftopt2 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_3 ) , .dftopt3 ( dftopt12_gOb11 ) ) ;
edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK ( CLK ) , .RST ( RST ) , 
    .Enable ( edge_bit_en ) , .Prescale ( Prescale ) , 
    .bit_count ( bit_count ) , .edge_count ( edge_count ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_4 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_5 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( test_si ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_7 ) , .HFSNET_0 ( HFSNET_0 ) , 
    .HFSNET_1 ( HFSNET_2 ) , .dftopt2 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_9 ) , .dftopt4 ( dftopt12_gOb11 ) , 
    .dftopt7 ( dftopt15 ) , .dftopt5 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt8 ( dftopt0 ) , .dftopt23 ( dftopt23 ) , .dftopt9 ( dftopt5 ) , 
    .dftopt10 ( dftopt18 ) , .dftopt29 ( dftopt29 ) ) ;
data_sampling_test_1 U0_data_sampling ( .CLK ( CLK ) , .RST ( HFSNET_2 ) , 
    .S_DATA ( RX_IN ) ,
    .Prescale ( { Prescale[5] , Prescale[4] , Prescale[3] , Prescale[2] , 
        Prescale[1] , SYNOPSYS_UNCONNECTED_11 } ) ,
    .edge_count ( edge_count ) , .Enable ( dat_samp_en ) , 
    .sampled_bit ( sampled_bit ) , .test_si ( SYNOPSYS_UNCONNECTED_12 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_13 ) , .test_se ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt0 ( dftopt1 ) , .dftopt2 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_18 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_19 ) , .dftopt7 ( dftopt15 ) , 
    .dftopt8 ( dftopt0 ) , .dftopt9 ( dftopt4 ) , .dftopt10 ( dftopt5 ) , 
    .dftopt11 ( dftopt10 ) ) ;
deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK ( CLK ) , 
    .RST ( HFSNET_2 ) , .sampled_bit ( sampled_bit ) , .Enable ( deser_en ) , 
    .edge_count ( edge_count ) , .Prescale ( Prescale ) , .P_DATA ( P_DATA ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_20 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_21 ) , .test_se ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt1 ( dftopt2 ) , 
    .dftopt0 ( dftopt3 ) , .dftopt3 ( SYNOPSYS_UNCONNECTED_22 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_23 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_24 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_25 ) , .dftopt9 ( dftopt4 ) , 
    .dftopt5 ( dftopt10 ) ) ;
strt_chk_test_1 U0_strt_chk ( .CLK ( CLK ) , .RST ( HFSNET_2 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( strt_chk_en ) , 
    .strt_glitch ( strt_glitch ) , .test_si ( SYNOPSYS_UNCONNECTED_26 ) , 
    .test_so ( dftopt19 ) , .test_se ( HFSNET_0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_28 ) , .dftopt2 ( test_so_gOb0 ) ) ;
par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK ( CLK ) , .RST ( HFSNET_2 ) , 
    .parity_type ( parity_type ) , .sampled_bit ( sampled_bit ) , 
    .Enable ( par_chk_en ) , .P_DATA ( P_DATA ) , .par_err ( parity_error ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_29 ) , .test_so ( n5 ) , 
    .test_se ( HFSNET_0 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( dftopt3 ) ) ;
stp_chk_test_1 U0_stp_chk ( .CLK ( CLK ) , .RST ( HFSNET_2 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( stp_chk_en ) , 
    .stp_err ( framing_error ) , .test_si ( n5 ) , .test_se ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_RVT HFSINV_321_0 ( .A ( HFSNET_1 ) , .Y ( HFSNET_0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module parity_calc_WIDTH8_test_1 ( CLK , RST , parity_enable , parity_type , 
    Busy , DATA , Data_Valid , parity , test_si , test_so , test_se , VDD , 
    VSS , dftopt0 , dftopt1 , dftopt4 , dftopt2 , dftopt7 , dftopt3 , 
    dftopt6 , dftopt5 , dftopt15 , dftopt8 , dftopt17 , dftopt9 , dftopt10 , 
    dftopt11 , dftopt12 , dftopt24 , dftopt13 , dftopt18 , dftopt14 ) ;
input  CLK ;
input  RST ;
input  parity_enable ;
input  parity_type ;
input  Busy ;
input  [7:0] DATA ;
input  Data_Valid ;
output parity ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt1 ;
input  dftopt4 ;
output dftopt2 ;
input  dftopt7 ;
output dftopt3 ;
input  dftopt6 ;
output dftopt5 ;
input  dftopt15 ;
output dftopt8 ;
input  dftopt17 ;
output dftopt9 ;
input  dftopt10 ;
input  dftopt11 ;
output dftopt12 ;
input  dftopt24 ;
output dftopt13 ;
input  dftopt18 ;
output dftopt14 ;

wire dftopt8_gOb12 ;
wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n8 ;
wire n18 ;
wire n20 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n27 ;
wire n29 ;
wire n31 ;
wire n33 ;
wire n35 ;
wire n37 ;
wire n39 ;
wire n41 ;
wire n43 ;
wire dftopt2_gOb13 ;
wire dftopt9_gOb17 ;
wire n7 ;
wire dftopt3_gOb8 ;
wire n10 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire dftopt1_gOb19 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n43 ) , .SI ( n7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt13 ) , .QN ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n41 ) , .SI ( dftopt9_gOb17 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt14 ) , 
    .QN ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n39 ) , .SI ( dftopt3_gOb8 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt9_gOb17 ) , 
    .QN ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n37 ) , .SI ( dftopt18 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt3_gOb8 ) , .QN ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n35 ) , .SI ( dftopt8_gOb12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n13 ) , 
    .QN ( dftopt12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n33 ) , .SI ( dftopt24 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2_gOb13 ) , .QN ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( dftopt11 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n14 ) , .QN ( dftopt1_gOb19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n29 ) , .SI ( dftopt2_gOb13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n7 ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT parity_reg ( .D ( n27 ) , .SI ( dftopt1_gOb19 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( parity ) , 
    .QN ( dftopt8_gOb12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U2 ( .A1 ( parity ) , .A2 ( n17 ) , .A3 ( parity_enable ) , 
    .A4 ( n2 ) , .Y ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U3 ( .A1 ( parity_type ) , .A2 ( n3 ) , .A3 ( n4 ) , .Y ( n2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U4 ( .A1 ( n24 ) , .A2 ( n25 ) , .A3 ( n5 ) , .Y ( n4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U9 ( .A1 ( n8 ) , .A2 ( n7 ) , .A3 ( DATA[0] ) , .A4 ( n15 ) , 
    .Y ( n29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U11 ( .A1 ( n8 ) , .A2 ( n14 ) , .A3 ( DATA[1] ) , .A4 ( n15 ) , 
    .Y ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U13 ( .A1 ( n8 ) , .A2 ( dftopt2_gOb13 ) , .A3 ( DATA[2] ) , 
    .A4 ( n15 ) , .Y ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U15 ( .A1 ( n8 ) , .A2 ( n13 ) , .A3 ( DATA[3] ) , .A4 ( n15 ) , 
    .Y ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U17 ( .A1 ( n8 ) , .A2 ( dftopt3_gOb8 ) , .A3 ( DATA[4] ) , 
    .A4 ( n15 ) , .Y ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U19 ( .A1 ( n8 ) , .A2 ( dftopt9_gOb17 ) , .A3 ( DATA[5] ) , 
    .A4 ( n15 ) , .Y ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U21 ( .A1 ( n8 ) , .A2 ( dftopt14 ) , .A3 ( DATA[6] ) , 
    .A4 ( n15 ) , .Y ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U23 ( .A1 ( n8 ) , .A2 ( dftopt13 ) , .A3 ( DATA[7] ) , 
    .A4 ( n15 ) , .Y ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( n8 ) , .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U6 ( .A1 ( n20 ) , .A2 ( n13 ) , .A3 ( n10 ) , .Y ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U7 ( .A1 ( n14 ) , .A2 ( n18 ) , .Y ( n10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
XOR2X1_RVT U8 ( .A1 ( n22 ) , .A2 ( n23 ) , .Y ( n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_RVT U10 ( .A1 ( Data_Valid ) , .A2 ( n16 ) , .Y ( n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U12 ( .A ( Busy ) , .Y ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U14 ( .A ( parity_enable ) , .Y ( n17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module mux_test_1 ( CLK , RST , IN_0 , IN_1 , IN_2 , IN_3 , SEL , OUT , 
    test_si , test_se , VDD , VSS , dftopt0 , dftopt1 , p0 , p1 , dftopt30 , 
    p2 , p3 ) ;
input  CLK ;
input  RST ;
input  IN_0 ;
input  IN_1 ;
input  IN_2 ;
input  IN_3 ;
input  [1:0] SEL ;
output OUT ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
input  p0 ;
input  p1 ;
input  dftopt30 ;
input  p2 ;
input  p3 ;

wire mux_out ;
wire n4 ;
wire n5 ;
wire n2 ;
wire n3 ;
supply1 VDD ;
supply0 VSS ;
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1_RVT OUT_reg ( .D ( mux_out ) , .SI ( dftopt30 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( OUT ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U6 ( .A1 ( SEL[1] ) , .A2 ( n4 ) , .A3 ( n5 ) , .A4 ( n2 ) , 
    .Y ( mux_out ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U7 ( .A1 ( SEL[0] ) , .A2 ( IN_1 ) , .A3 ( p3 ) , .A4 ( n3 ) , 
    .Y ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U8 ( .A1 ( p2 ) , .A2 ( SEL[0] ) , .A3 ( IN_2 ) , .A4 ( n3 ) , 
    .Y ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U4 ( .A ( SEL[0] ) , .Y ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( SEL[1] ) , .Y ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module Serializer_WIDTH8_test_1 ( CLK , RST , DATA , Enable , Busy , 
    Data_Valid , ser_out , ser_done , test_si , test_so , test_se , VDD , 
    VSS , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , 
    dftopt6 , dftopt12 , dftopt7 , dftopt8 , dftopt9 , dftopt10 , dftopt11 , 
    dftopt13 , dftopt14 , dftopt15 , dftopt16 , dftopt17 , dftopt18 , 
    dftopt19 ) ;
input  CLK ;
input  RST ;
input  [7:0] DATA ;
input  Enable ;
input  Busy ;
input  Data_Valid ;
output ser_out ;
output ser_done ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;
output dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt5 ;
output dftopt6 ;
input  dftopt12 ;
output dftopt7 ;
input  dftopt8 ;
input  dftopt9 ;
output dftopt10 ;
input  dftopt11 ;
input  dftopt13 ;
output dftopt14 ;
input  dftopt15 ;
input  dftopt16 ;
output dftopt17 ;
output dftopt18 ;
input  dftopt19 ;

wire N23 ;
wire N24 ;
wire N25 ;
wire n14 ;
wire n18 ;
wire n19 ;
wire n20 ;
wire n21 ;
wire n22 ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire n28 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire dftopt10_gOb18 ;
wire n34 ;
wire n36 ;
wire dftopt4_gOb7 ;
wire dftopt6_gOb9 ;
wire [7:1] DATA_V ;
wire [2:0] ser_count ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n25 ) , .SI ( dftopt4_gOb7 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[7] ) , 
    .QN ( dftopt10_gOb18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n26 ) , .SI ( dftopt10_gOb18 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[6] ) , 
    .QN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n27 ) , .SI ( n34 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[5] ) , .QN ( dftopt18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n28 ) , .SI ( dftopt16 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[4] ) , .QN ( n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n29 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[3] ) , .QN ( dftopt4_gOb7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n30 ) , .SI ( n36 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[2] ) , .QN ( dftopt6_gOb9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( dftopt6_gOb9 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[1] ) , 
    .QN ( dftopt17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n24 ) , .SI ( dftopt15 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_out ) , .QN ( dftopt2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_0_ ( .D ( N23 ) , .SI ( dftopt13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[0] ) , 
    .QN ( n14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_1_ ( .D ( N24 ) , .SI ( dftopt19 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[1] ) , 
    .QN ( dftopt7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_2_ ( .D ( N25 ) , .SI ( n14 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[2] ) , .QN ( dftopt14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U18 ( .A1 ( ser_count[1] ) , .A2 ( ser_count[0] ) , 
    .A3 ( ser_count[2] ) , .Y ( ser_done ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U19 ( .A1 ( DATA[0] ) , .A2 ( n16 ) , .A3 ( DATA_V[1] ) , 
    .A4 ( n15 ) , .A5 ( ser_out ) , .A6 ( n18 ) , .Y ( n24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1_RVT U20 ( .A1 ( DATA_V[7] ) , .A2 ( n18 ) , .A3 ( DATA[7] ) , 
    .A4 ( n16 ) , .Y ( n25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U21 ( .A1 ( DATA[6] ) , .A2 ( n16 ) , .A3 ( DATA_V[7] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[6] ) , .A6 ( n18 ) , .Y ( n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U22 ( .A1 ( DATA[5] ) , .A2 ( n16 ) , .A3 ( DATA_V[6] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[5] ) , .A6 ( n18 ) , .Y ( n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U23 ( .A1 ( DATA[4] ) , .A2 ( n16 ) , .A3 ( DATA_V[5] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[4] ) , .A6 ( n18 ) , .Y ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U24 ( .A1 ( DATA[3] ) , .A2 ( n16 ) , .A3 ( DATA_V[4] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[3] ) , .A6 ( n18 ) , .Y ( n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U25 ( .A1 ( DATA[2] ) , .A2 ( n16 ) , .A3 ( DATA_V[3] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[2] ) , .A6 ( n18 ) , .Y ( n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_RVT U26 ( .A1 ( DATA[1] ) , .A2 ( n16 ) , .A3 ( DATA_V[2] ) , 
    .A4 ( n15 ) , .A5 ( n18 ) , .A6 ( DATA_V[1] ) , .Y ( n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U27 ( .A1 ( n19 ) , .A2 ( n20 ) , .Y ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_RVT U28 ( .A1 ( Enable ) , .A2 ( n19 ) , .Y ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_RVT U29 ( .A1 ( Data_Valid ) , .A2 ( n17 ) , .Y ( n19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U30 ( .A1 ( ser_count[2] ) , .A2 ( n21 ) , .A3 ( n22 ) , 
    .Y ( N25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_RVT U31 ( .A1 ( Enable ) , .A2 ( ser_count[1] ) , 
    .A3 ( ser_count[0] ) , .A4 ( dftopt14 ) , .Y ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U32 ( .A1 ( Enable ) , .A2 ( dftopt7 ) , .A3 ( N23 ) , .Y ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U33 ( .A1 ( Enable ) , .A2 ( n23 ) , .Y ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U34 ( .A1 ( Enable ) , .A2 ( n14 ) , .Y ( N23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX1_RVT U14 ( .A ( n20 ) , .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U15 ( .A ( n19 ) , .Y ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U16 ( .A ( Busy ) , .Y ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U17 ( .A1 ( dftopt7 ) , .A2 ( ser_count[0] ) , .Y ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module uart_tx_fsm_test_1 ( CLK , RST , Data_Valid , ser_done , 
    parity_enable , Ser_enable , mux_sel , busy , test_si , test_so , 
    test_se , VDD , VSS , dftopt2 , dftopt0 , dftopt1 , dftopt3 , dftopt14 , 
    dftopt4 , dftopt17 ) ;
input  CLK ;
input  RST ;
input  Data_Valid ;
input  ser_done ;
input  parity_enable ;
output Ser_enable ;
output [1:0] mux_sel ;
output busy ;
input  test_si ;
output test_so ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt2 ;
output dftopt0 ;
input  dftopt1 ;
output dftopt3 ;
input  dftopt14 ;
output dftopt4 ;
input  dftopt17 ;

wire dftopt3_gOb20 ;
wire current_state_1_ ;
wire current_state_0_ ;
wire busy_c ;
wire n5 ;
wire n7 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n6 ;
wire n9 ;
wire [2:0] next_state ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , 
    .SI ( dftopt3_gOb20 ) , .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( current_state_0_ ) , .QN ( dftopt4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( dftopt17 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( current_state_1_ ) , 
    .QN ( n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( dftopt14 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt3_gOb20 ) , 
    .QN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT busy_reg ( .D ( busy_c ) , .SI ( n7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( busy ) , .QN ( dftopt0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0_RVT U9 ( .A1 ( n7 ) , .A2 ( dftopt3_gOb20 ) , .A3 ( n10 ) , 
    .Y ( next_state[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1_RVT U10 ( .A1 ( parity_enable ) , .A2 ( n6 ) , 
    .A3 ( current_state_0_ ) , .Y ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1_RVT U11 ( .A1 ( n11 ) , .A2 ( n12 ) , .A3 ( n5 ) , 
    .Y ( next_state[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U12 ( .A1 ( n13 ) , .A2 ( n5 ) , .Y ( next_state[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U13 ( .A1 ( current_state_0_ ) , .A2 ( n6 ) , .A3 ( n14 ) , 
    .A4 ( n7 ) , .Y ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U14 ( .A1 ( Data_Valid ) , .A2 ( current_state_0_ ) , .Y ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U15 ( .A1 ( dftopt4 ) , .A2 ( n5 ) , .A3 ( n15 ) , 
    .Y ( mux_sel[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U16 ( .A1 ( n9 ) , .A2 ( n5 ) , .A3 ( dftopt3_gOb20 ) , 
    .A4 ( n15 ) , .Y ( mux_sel[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U17 ( .A1 ( current_state_0_ ) , .A2 ( n5 ) , .A3 ( n15 ) , 
    .Y ( busy_c ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U18 ( .A1 ( n5 ) , .A2 ( n6 ) , .A3 ( n11 ) , .Y ( Ser_enable ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U19 ( .A1 ( n9 ) , .A2 ( current_state_0_ ) , .Y ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U20 ( .A1 ( current_state_0_ ) , .A2 ( n7 ) , .A3 ( n15 ) , 
    .Y ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U21 ( .A1 ( current_state_1_ ) , .A2 ( dftopt4 ) , .Y ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U7 ( .A ( n12 ) , .Y ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U8 ( .A ( ser_done ) , .Y ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( CLK , RST , P_DATA , Data_Valid , 
    parity_enable , parity_type , TX_OUT , busy , test_si , test_se , VDD , 
    VSS , dftopt0 , dftopt6 , dftopt7 , dftopt11 , dftopt12 , dftopt14 , 
    dftopt15 , dftopt17 , p0 , p1 , dftopt10 , dftopt23 , dftopt24 , 
    dftopt29 , dftopt30 , p2 , p3 ) ;
input  CLK ;
input  RST ;
input  [7:0] P_DATA ;
input  Data_Valid ;
input  parity_enable ;
input  parity_type ;
output TX_OUT ;
output busy ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
output dftopt6 ;
input  dftopt7 ;
output dftopt11 ;
input  dftopt12 ;
output dftopt14 ;
input  dftopt15 ;
input  dftopt17 ;
input  p0 ;
input  p1 ;
input  dftopt10 ;
output dftopt23 ;
input  dftopt24 ;
output dftopt29 ;
input  dftopt30 ;
input  p2 ;
input  p3 ;

wire seriz_done ;
wire seriz_en ;
wire ser_data ;
wire parity ;
wire dftopt13 ;
wire [1:0] mux_sel ;
supply1 VDD ;
supply0 VSS ;
wire dftopt2 ;
wire dftopt3 ;
wire dftopt21 ;
wire dftopt25 ;
wire dftopt26 ;
wire dftopt27 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;
wire SYNOPSYS_UNCONNECTED_19 ;
wire SYNOPSYS_UNCONNECTED_20 ;
wire SYNOPSYS_UNCONNECTED_21 ;
wire SYNOPSYS_UNCONNECTED_22 ;
wire SYNOPSYS_UNCONNECTED_23 ;
wire SYNOPSYS_UNCONNECTED_24 ;
wire SYNOPSYS_UNCONNECTED_25 ;
wire SYNOPSYS_UNCONNECTED_26 ;
wire SYNOPSYS_UNCONNECTED_27 ;
wire SYNOPSYS_UNCONNECTED_28 ;
wire SYNOPSYS_UNCONNECTED_29 ;
wire SYNOPSYS_UNCONNECTED_30 ;
wire SYNOPSYS_UNCONNECTED_31 ;
wire SYNOPSYS_UNCONNECTED_32 ;
wire SYNOPSYS_UNCONNECTED_33 ;
wire SYNOPSYS_UNCONNECTED_34 ;
wire SYNOPSYS_UNCONNECTED_35 ;
wire SYNOPSYS_UNCONNECTED_36 ;
wire SYNOPSYS_UNCONNECTED_37 ;
wire SYNOPSYS_UNCONNECTED_38 ;
wire SYNOPSYS_UNCONNECTED_39 ;

uart_tx_fsm_test_1 U0_fsm ( .CLK ( CLK ) , .RST ( RST ) , 
    .Data_Valid ( Data_Valid ) , .ser_done ( seriz_done ) , 
    .parity_enable ( parity_enable ) , .Ser_enable ( seriz_en ) , 
    .mux_sel ( mux_sel ) , .busy ( busy ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_2 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt2 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt0 ( dftopt3 ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_5 ) , .dftopt14 ( dftopt13 ) , 
    .dftopt4 ( dftopt21 ) , .dftopt17 ( dftopt26 ) ) ;
Serializer_WIDTH8_test_1 U0_Serializer ( .CLK ( CLK ) , .RST ( RST ) , 
    .DATA ( P_DATA ) , .Enable ( seriz_en ) , .Busy ( busy ) , 
    .Data_Valid ( Data_Valid ) , .ser_out ( ser_data ) , 
    .ser_done ( seriz_done ) , .test_si ( SYNOPSYS_UNCONNECTED_6 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_7 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_8 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_9 ) , .dftopt2 ( dftopt2 ) , 
    .dftopt3 ( dftopt3 ) , .dftopt4 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_13 ) , .dftopt7 ( dftopt14 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_17 ) , .dftopt13 ( dftopt10 ) , 
    .dftopt14 ( dftopt13 ) , .dftopt15 ( dftopt21 ) , .dftopt16 ( dftopt25 ) , 
    .dftopt17 ( dftopt26 ) , .dftopt18 ( dftopt27 ) , .dftopt19 ( TX_OUT ) ) ;
mux_test_1 U0_mux ( .CLK ( CLK ) , .RST ( RST ) , 
    .IN_0 ( SYNOPSYS_UNCONNECTED_18 ) , .IN_1 ( ser_data ) , 
    .IN_2 ( parity ) , .IN_3 ( SYNOPSYS_UNCONNECTED_19 ) , .SEL ( mux_sel ) , 
    .OUT ( TX_OUT ) , .test_si ( SYNOPSYS_UNCONNECTED_20 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_22 ) , .p0 ( SYNOPSYS_UNCONNECTED_23 ) , 
    .p1 ( SYNOPSYS_UNCONNECTED_24 ) , .dftopt30 ( dftopt30 ) , .p2 ( p2 ) , 
    .p3 ( p3 ) ) ;
parity_calc_WIDTH8_test_1 U0_parity_calc ( .CLK ( CLK ) , .RST ( RST ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .Busy ( busy ) , .DATA ( P_DATA ) , .Data_Valid ( Data_Valid ) , 
    .parity ( parity ) , .test_si ( SYNOPSYS_UNCONNECTED_25 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_26 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_28 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_29 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_30 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_31 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_32 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_33 ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_34 ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_35 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_36 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_37 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_38 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_39 ) , .dftopt11 ( dftopt2 ) , 
    .dftopt12 ( dftopt23 ) , .dftopt24 ( dftopt24 ) , .dftopt13 ( dftopt25 ) , 
    .dftopt18 ( dftopt27 ) , .dftopt14 ( dftopt29 ) ) ;
endmodule


module mux2X1_1 ( IN_0 , IN_1 , SEL , OUT , VDD , VSS ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;

MUX21X1_RVT U1 ( .A1 ( IN_0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module mux2X1_2 ( IN_0 , IN_1 , SEL , OUT , VDD , VSS ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;
wire cts0 ;

MUX21X2_RVT U1 ( .A1 ( cts0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_RVT IN_0_btd308 ( .A ( IN_0 ) , .Y ( cts0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module mux2X1_0 ( IN_0 , IN_1 , SEL , OUT , VDD , VSS ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;
input  VDD ;
input  VSS ;

supply1 VDD ;
supply0 VSS ;
wire cts0 ;

MUX21X2_RVT U1 ( .A1 ( cts0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_RVT IN_0_btd309 ( .A ( IN_0 ) , .Y ( cts0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


module UART ( RST , TX_CLK , RX_CLK , RX_IN_S , RX_OUT_P , RX_OUT_V , 
    TX_IN_P , TX_IN_V , TX_OUT_S , TX_OUT_V , Prescale , parity_enable , 
    parity_type , parity_error , framing_error , SI , SE , SO , scan_clk , 
    scan_rst , test_mode , VDD , VSS ) ;
input  RST ;
input  TX_CLK ;
input  RX_CLK ;
input  RX_IN_S ;
output [7:0] RX_OUT_P ;
output RX_OUT_V ;
input  [7:0] TX_IN_P ;
input  TX_IN_V ;
output TX_OUT_S ;
output TX_OUT_V ;
input  [5:0] Prescale ;
input  parity_enable ;
input  parity_type ;
output parity_error ;
output framing_error ;
input  SI ;
input  SE ;
output SO ;
input  scan_clk ;
input  scan_rst ;
input  test_mode ;
input  VDD ;
input  VSS ;

wire dftopt22 ;
wire UART_RX_SCAN_CLK ;
wire UART_TX_SCAN_CLK ;
wire SCAN_RST ;
wire HFSNET_0 ;
supply1 VDD ;
supply0 VSS ;
wire dftopt17 ;
wire dftopt28 ;
wire dftopt0 ;
wire HFSNET_1 ;
wire HFSNET_2 ;
wire optlc_net_426 ;
wire optlc_net_427 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;
wire SYNOPSYS_UNCONNECTED_15 ;
wire SYNOPSYS_UNCONNECTED_16 ;
wire SYNOPSYS_UNCONNECTED_17 ;
wire SYNOPSYS_UNCONNECTED_18 ;

INVX8_RVT HFSINV_155_1 ( .A ( HFSNET_1 ) , .Y ( HFSNET_0 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
mux2X1_0 U0_mux2X1 ( .IN_0 ( RX_CLK ) , .IN_1 ( scan_clk ) , 
    .SEL ( test_mode ) , .OUT ( UART_RX_SCAN_CLK ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
mux2X1_2 U1_mux2X1 ( .IN_0 ( TX_CLK ) , .IN_1 ( scan_clk ) , 
    .SEL ( test_mode ) , .OUT ( UART_TX_SCAN_CLK ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
mux2X1_1 U2_mux2X1 ( .IN_0 ( RST ) , .IN_1 ( scan_rst ) , .SEL ( test_mode ) , 
    .OUT ( SCAN_RST ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
UART_TX_DATA_WIDTH8_test_1 U0_UART_TX ( .CLK ( UART_TX_SCAN_CLK ) , 
    .RST ( HFSNET_2 ) , .P_DATA ( TX_IN_P ) , .Data_Valid ( TX_IN_V ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .TX_OUT ( TX_OUT_S ) , .busy ( TX_OUT_V ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , .test_se ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_6 ) , .dftopt14 ( SO ) , 
    .dftopt15 ( SYNOPSYS_UNCONNECTED_7 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_8 ) , .p0 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .p1 ( SYNOPSYS_UNCONNECTED_10 ) , .dftopt10 ( framing_error ) , 
    .dftopt23 ( dftopt22 ) , .dftopt24 ( dftopt17 ) , .dftopt29 ( dftopt28 ) , 
    .dftopt30 ( dftopt0 ) , .p2 ( optlc_net_426 ) , .p3 ( optlc_net_427 ) ) ;
UART_RX_test_1 U0_UART_RX ( .CLK ( UART_RX_SCAN_CLK ) , .RST ( HFSNET_2 ) , 
    .RX_IN ( RX_IN_S ) , .parity_enable ( parity_enable ) , 
    .parity_type ( parity_type ) , .Prescale ( Prescale ) , 
    .P_DATA ( RX_OUT_P ) , .data_valid ( RX_OUT_V ) , 
    .parity_error ( parity_error ) , .framing_error ( framing_error ) , 
    .test_si ( SI ) , .test_so ( SYNOPSYS_UNCONNECTED_11 ) , 
    .test_se ( HFSNET_0 ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_12 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt11 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_15 ) , .HFSNET_1 ( HFSNET_1 ) , 
    .HFSNET_3 ( SCAN_RST ) , .dftopt12 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt13 ( SYNOPSYS_UNCONNECTED_17 ) , 
    .dftopt17 ( SYNOPSYS_UNCONNECTED_18 ) , .dftopt23 ( dftopt22 ) , 
    .dftopt18 ( dftopt17 ) , .dftopt29 ( dftopt28 ) , .dftopt19 ( dftopt0 ) ) ;
INVX2_RVT HFSINV_363_f_2 ( .A ( SE ) , .Y ( HFSNET_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX8_RVT HFSBUF_223_4 ( .A ( SCAN_RST ) , .Y ( HFSNET_2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
TIEH_RVT optlc_1019 ( .Y ( optlc_net_426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_RVT optlc_1020 ( .Y ( optlc_net_427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


