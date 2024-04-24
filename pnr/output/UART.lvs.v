// IC Compiler II Verilog Writer
// Generated on 04/24/2024 at 19:58:07
// Library Name: UART.dlib
// Block Name: UART
// User Label: 
// Write Command: write_verilog -exclude { empty_modules end_cap_cells well_tap_cells } output/UART.lvs.v
module stp_chk_test_1 ( CLK , RST , sampled_bit , Enable , stp_err , test_si , 
    test_se , VDD , VSS , dftopt0 , dftopt1 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
output stp_err ;
input  test_si ;
input  test_se ;
input  VDD ;
input  VSS ;
input  dftopt0 ;
input  dftopt1 ;

wire n2 ;
wire n4 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT stp_err_reg ( .D ( n4 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
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
XNOR3X1_RVT U5 ( .A1 ( P_DATA[1] ) , .A2 ( P_DATA[0] ) , .A3 ( n6 ) , 
    .Y ( n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U7 ( .A1 ( P_DATA[4] ) , .A2 ( P_DATA[5] ) , .A3 ( n7 ) , 
    .Y ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U4 ( .A1 ( P_DATA[7] ) , .A2 ( P_DATA[6] ) , .Y ( n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U6 ( .A1 ( P_DATA[3] ) , .A2 ( P_DATA[2] ) , .Y ( n6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U8 ( .A1 ( sampled_bit ) , .A2 ( parity_type ) , .Y ( n5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U9 ( .A ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module strt_chk_test_1 ( CLK , RST , sampled_bit , Enable , strt_glitch , 
    test_si , test_so , test_se , VDD , VSS , dftopt0 ) ;
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

wire n3 ;
wire n1 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT strt_glitch_reg ( .D ( n3 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , .QN ( test_so ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U2 ( .A1 ( sampled_bit ) , .A2 ( Enable ) , .A3 ( strt_glitch ) , 
    .A4 ( n1 ) , .Y ( n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U3 ( .A ( Enable ) , .Y ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK , RST , sampled_bit , Enable , 
    edge_count , Prescale , P_DATA , test_si , test_so , test_se , VDD , VSS , 
    dftopt1 , dftopt0 ) ;
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
wire n46 ;
wire n47 ;
wire n48 ;
wire n49 ;
wire n50 ;
wire n51 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT P_DATA_reg_7_ ( .D ( n32 ) , .SI ( n46 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[7] ) , .QN ( test_so ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_6_ ( .D ( n30 ) , .SI ( n48 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[6] ) , .QN ( n46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_5_ ( .D ( n28 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[5] ) , .QN ( n47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_4_ ( .D ( n26 ) , .SI ( n49 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[4] ) , .QN ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_3_ ( .D ( n24 ) , .SI ( n50 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[3] ) , .QN ( n49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_2_ ( .D ( n22 ) , .SI ( n47 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[2] ) , .QN ( n50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_1_ ( .D ( n20 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[1] ) , .QN ( n51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT P_DATA_reg_0_ ( .D ( n18 ) , .SI ( n51 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[0] ) , .QN ( dftopt0 ) , 
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
    Enable , sampled_bit , test_si , test_so , test_se , VDD , VSS , dftopt0 , 
    dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt5 , dftopt9 , dftopt6 , 
    dftopt12 ) ;
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
input  dftopt0 ;
output dftopt1 ;
input  dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt5 ;
input  dftopt9 ;
output dftopt6 ;
input  dftopt12 ;

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
wire [4:0] half_edges ;
wire [4:1] half_edges_p1 ;
wire [4:1] half_edges_n1 ;
wire [4:2] add_21_carry ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT Samples_reg_2_ ( .D ( n25 ) , .SI ( dftopt12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n33 ) , 
    .QN ( dftopt4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT Samples_reg_1_ ( .D ( n24 ) , .SI ( dftopt9 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( dftopt1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT Samples_reg_0_ ( .D ( n23 ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , .QN ( dftopt6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT sampled_bit_reg ( .D ( N58 ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sampled_bit ) , 
    .QN ( test_so ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NAND2X0_RVT U64 ( .A1 ( dftopt6 ) , .A2 ( dftopt1 ) , .Y ( n54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module edge_bit_counter_test_1 ( CLK , RST , Enable , Prescale , bit_count , 
    edge_count , test_si , test_so , test_se , VDD , VSS , dftopt0 , dftopt4 , 
    dftopt1 , dftopt2 , dftopt3 , dftopt5 , dftopt6 , HFSNET_0 , HFSNET_1 , 
    dftopt14 , dftopt7 , dftopt8 , dftopt9 , dftopt16 , dftopt10 , dftopt11 , 
    dftopt12 , dftopt13 ) ;
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
input  dftopt4 ;
output dftopt1 ;
input  dftopt2 ;
output dftopt3 ;
input  dftopt5 ;
output dftopt6 ;
input  HFSNET_0 ;
input  HFSNET_1 ;
input  dftopt14 ;
output dftopt7 ;
output dftopt8 ;
output dftopt9 ;
input  dftopt16 ;
output dftopt10 ;
input  dftopt11 ;
output dftopt12 ;
output dftopt13 ;

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
wire dftopt7_gOb13 ;
wire dftopt8_gOb14 ;
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
wire dftopt3_gOb5 ;
wire n53 ;
wire [5:2] add_31_carry ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT edge_count_reg_0_ ( .D ( N19 ) , .SI ( dftopt8_gOb14 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[0] ) , .QN ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_5_ ( .D ( N24 ) , .SI ( dftopt0 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[5] ) , .QN ( dftopt9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_1_ ( .D ( N20 ) , .SI ( dftopt7_gOb13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[1] ) , .QN ( dftopt13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_2_ ( .D ( N21 ) , .SI ( n53 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( edge_count[2] ) , 
    .QN ( dftopt12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_3_ ( .D ( N22 ) , .SI ( dftopt3_gOb5 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[3] ) , .QN ( n53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT edge_count_reg_4_ ( .D ( N23 ) , .SI ( dftopt11 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[4] ) , .QN ( dftopt3_gOb5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_0_ ( .D ( n32 ) , .SI ( dftopt5 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( bit_count[0] ) , .QN ( dftopt8_gOb14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_1_ ( .D ( n31 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( bit_count[1] ) , 
    .QN ( dftopt7_gOb13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_2_ ( .D ( n30 ) , .SI ( dftopt4 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[2] ) , 
    .QN ( dftopt1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT bit_count_reg_3_ ( .D ( n29 ) , .SI ( dftopt16 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[3] ) , 
    .QN ( dftopt10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_RVT U16 ( .A1 ( n18 ) , .A2 ( n19 ) , .Y ( n29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND4X0_RVT U17 ( .A1 ( Enable ) , .A2 ( n20 ) , .A3 ( n21 ) , 
    .A4 ( bit_count[2] ) , .Y ( n19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U18 ( .A1 ( N31 ) , .A2 ( dftopt10 ) , .Y ( n21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U19 ( .A1 ( n22 ) , .A2 ( n23 ) , .A3 ( dftopt10 ) , .Y ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U20 ( .A1 ( n20 ) , .A2 ( bit_count[2] ) , .A3 ( n49 ) , 
    .Y ( n23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U21 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .Y ( n20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U22 ( .A1 ( bit_count[2] ) , .A2 ( n24 ) , .A3 ( n25 ) , 
    .A4 ( n26 ) , .Y ( n30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_RVT U23 ( .A1 ( dftopt7_gOb13 ) , .A2 ( bit_count[2] ) , .Y ( n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U24 ( .A1 ( Enable ) , .A2 ( dftopt7_gOb13 ) , .A3 ( n27 ) , 
    .Y ( n24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U25 ( .A1 ( bit_count[1] ) , .A2 ( n27 ) , .A3 ( n26 ) , 
    .A4 ( dftopt7_gOb13 ) , .Y ( n31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U26 ( .A1 ( bit_count[0] ) , .A2 ( n22 ) , .A3 ( Enable ) , 
    .Y ( n26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U27 ( .A1 ( Enable ) , .A2 ( dftopt8_gOb14 ) , .A3 ( n48 ) , 
    .Y ( n27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U28 ( .A1 ( n48 ) , .A2 ( bit_count[0] ) , .A3 ( n28 ) , 
    .A4 ( Enable ) , .Y ( n32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U29 ( .A1 ( n22 ) , .A2 ( dftopt8_gOb14 ) , .Y ( n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
OA22X1_RVT U56 ( .A1 ( N26 ) , .A2 ( n41 ) , .A3 ( n41 ) , .A4 ( dftopt13 ) , 
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
    dftopt1 , dftopt0 , dftopt7 , dftopt8 , dftopt2 ) ;
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
input  dftopt1 ;
output dftopt0 ;
input  dftopt7 ;
input  dftopt8 ;
input  dftopt2 ;

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

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( n18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( stp_err ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , 
    .QN ( test_so ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( n2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n28 ) , 
    .QN ( dftopt0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
NAND4X0_RVT U38 ( .A1 ( n42 ) , .A2 ( n45 ) , .A3 ( n37 ) , .A4 ( n38 ) , 
    .Y ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_RVT U39 ( .A1 ( n43 ) , .A2 ( n40 ) , .A3 ( n39 ) , .A4 ( n41 ) , 
    .Y ( n38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U40 ( .A1 ( bit_count[3] ) , .A2 ( stp_chk_en ) , .A3 ( n35 ) , 
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
AND3X1_RVT U47 ( .A1 ( n46 ) , .A2 ( n36 ) , .A3 ( n47 ) , .Y ( n37 ) , 
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
NAND2X0_RVT U78 ( .A1 ( dftopt0 ) , .A2 ( n48 ) , .Y ( dat_samp_en ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U79 ( .A1 ( n18 ) , .A2 ( S_DATA ) , .A3 ( n1 ) , .Y ( n48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART_RX_test_1 ( CLK , RST , RX_IN , parity_enable , parity_type , 
    Prescale , P_DATA , data_valid , parity_error , framing_error , test_si , 
    test_so , test_se , VDD , VSS , dftopt4 , dftopt8 , HFSNET_0 , HFSNET_2 , 
    dftopt9 , dftopt10 , dftopt14 , dftopt7 , dftopt16 , dftopt15 , dftopt20 ) ;
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
input  dftopt4 ;
output dftopt8 ;
input  HFSNET_0 ;
input  HFSNET_2 ;
output dftopt9 ;
output dftopt10 ;
input  dftopt14 ;
output dftopt7 ;
input  dftopt16 ;
output dftopt15 ;
output dftopt20 ;

wire strt_glitch ;
wire strt_chk_en ;
wire edge_bit_en ;
wire deser_en ;
wire par_chk_en ;
wire stp_chk_en ;
wire dat_samp_en ;
wire sampled_bit ;
wire HFSNET_1 ;
wire n4 ;
wire dftopt9_gOb6 ;
wire dftopt2 ;
wire n7 ;
wire n8 ;
wire [3:0] bit_count ;
wire [5:0] edge_count ;
supply1 VDD ;
supply0 VSS ;
wire dftopt0 ;
wire dftopt1 ;
wire dftopt10_gOb10 ;
wire dftopt3 ;
wire dftopt6 ;
wire dftopt17 ;
wire dftopt18 ;
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

NBUFFX8_RVT HFSBUF_432_1 ( .A ( HFSNET_2 ) , .Y ( HFSNET_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK ( CLK ) , 
    .RST ( HFSNET_1 ) , .S_DATA ( RX_IN ) , .Prescale ( Prescale ) , 
    .parity_enable ( parity_enable ) , .bit_count ( bit_count ) , 
    .edge_count ( edge_count ) , .par_err ( parity_error ) , 
    .stp_err ( framing_error ) , .strt_glitch ( strt_glitch ) , 
    .strt_chk_en ( strt_chk_en ) , .edge_bit_en ( edge_bit_en ) , 
    .deser_en ( deser_en ) , .par_chk_en ( par_chk_en ) , 
    .stp_chk_en ( stp_chk_en ) , .dat_samp_en ( dat_samp_en ) , 
    .data_valid ( data_valid ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( dftopt7 ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt0 ( dftopt3 ) , .dftopt7 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_4 ) , .dftopt2 ( dftopt10_gOb10 ) ) ;
edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK ( CLK ) , .RST ( RST ) , 
    .Enable ( edge_bit_en ) , .Prescale ( Prescale ) , 
    .bit_count ( bit_count ) , .edge_count ( edge_count ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_5 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_6 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( test_si ) , 
    .dftopt4 ( dftopt4 ) , .dftopt1 ( dftopt10_gOb10 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_7 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_8 ) , .dftopt5 ( dftopt6 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_9 ) , .HFSNET_0 ( HFSNET_0 ) , 
    .HFSNET_1 ( HFSNET_1 ) , .dftopt14 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt9 ( dftopt2 ) , 
    .dftopt16 ( dftopt16 ) , .dftopt10 ( dftopt15 ) , .dftopt11 ( dftopt17 ) , 
    .dftopt12 ( dftopt18 ) , .dftopt13 ( dftopt20 ) ) ;
data_sampling_test_1 U0_data_sampling ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .S_DATA ( RX_IN ) ,
    .Prescale ( { Prescale[5] , Prescale[4] , Prescale[3] , Prescale[2] , 
        Prescale[1] , SYNOPSYS_UNCONNECTED_13 } ) ,
    .edge_count ( edge_count ) , .Enable ( dat_samp_en ) , 
    .sampled_bit ( sampled_bit ) , .test_si ( SYNOPSYS_UNCONNECTED_14 ) , 
    .test_so ( n8 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_15 ) , .dftopt1 ( dftopt0 ) , 
    .dftopt2 ( dftopt1 ) , .dftopt3 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt4 ( dftopt6 ) , .dftopt5 ( n4 ) , .dftopt9 ( dftopt2 ) , 
    .dftopt6 ( dftopt17 ) , .dftopt12 ( dftopt18 ) ) ;
deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK ( CLK ) , 
    .RST ( HFSNET_1 ) , .sampled_bit ( sampled_bit ) , .Enable ( deser_en ) , 
    .edge_count ( edge_count ) , .Prescale ( Prescale ) , .P_DATA ( P_DATA ) , 
    .test_si ( n8 ) , .test_so ( n7 ) , .test_se ( test_se ) , .VDD ( VDD ) , 
    .VSS ( VSS ) , .dftopt1 ( dftopt0 ) , .dftopt0 ( dftopt1 ) ) ;
strt_chk_test_1 U0_strt_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( strt_chk_en ) , 
    .strt_glitch ( strt_glitch ) , .test_si ( SYNOPSYS_UNCONNECTED_17 ) , 
    .test_so ( n4 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( dftopt3 ) ) ;
par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .parity_type ( parity_type ) , .sampled_bit ( sampled_bit ) , 
    .Enable ( par_chk_en ) , .P_DATA ( P_DATA ) , .par_err ( parity_error ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_18 ) , .test_so ( dftopt9_gOb6 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( n7 ) ) ;
stp_chk_test_1 U0_stp_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( stp_chk_en ) , 
    .stp_err ( framing_error ) , .test_si ( SYNOPSYS_UNCONNECTED_19 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_20 ) , .dftopt1 ( dftopt9_gOb6 ) ) ;
endmodule


module parity_calc_WIDTH8_test_1 ( CLK , RST , parity_enable , parity_type , 
    Busy , DATA , Data_Valid , parity , test_si , test_so , test_se , VDD , 
    VSS , dftopt2 , dftopt0 , dftopt8 , dftopt1 , dftopt4 , dftopt3 , 
    dftopt9 , dftopt12 , dftopt5 , dftopt6 , dftopt17 , dftopt20 , dftopt7 ) ;
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
input  dftopt2 ;
output dftopt0 ;
input  dftopt8 ;
output dftopt1 ;
input  dftopt4 ;
input  dftopt3 ;
input  dftopt9 ;
input  dftopt12 ;
input  dftopt5 ;
output dftopt6 ;
input  dftopt17 ;
input  dftopt20 ;
input  dftopt7 ;

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
wire n1 ;
wire n6 ;
wire n7 ;
wire n10 ;
wire n11 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n16 ;
wire n17 ;
wire n28 ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n43 ) , .SI ( dftopt20 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n11 ) , .QN ( n25 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n41 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt6 ) , .QN ( n24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n39 ) , .SI ( n11 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n6 ) , .QN ( n23 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n37 ) , .SI ( n6 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt1 ) , .QN ( n22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n35 ) , .SI ( dftopt17 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n13 ) , .QN ( dftopt0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n33 ) , .SI ( n28 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , .QN ( n20 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( n7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n14 ) , .QN ( n28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n29 ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n7 ) , .QN ( n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_RVT parity_reg ( .D ( n27 ) , .SI ( dftopt7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( parity ) , .QN ( test_so ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
AO22X1_RVT U13 ( .A1 ( n8 ) , .A2 ( n1 ) , .A3 ( DATA[2] ) , .A4 ( n15 ) , 
    .Y ( n33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U15 ( .A1 ( n8 ) , .A2 ( n13 ) , .A3 ( DATA[3] ) , .A4 ( n15 ) , 
    .Y ( n35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U17 ( .A1 ( n8 ) , .A2 ( dftopt1 ) , .A3 ( DATA[4] ) , 
    .A4 ( n15 ) , .Y ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U19 ( .A1 ( n8 ) , .A2 ( n6 ) , .A3 ( DATA[5] ) , .A4 ( n15 ) , 
    .Y ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U21 ( .A1 ( n8 ) , .A2 ( dftopt6 ) , .A3 ( DATA[6] ) , 
    .A4 ( n15 ) , .Y ( n41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U23 ( .A1 ( n8 ) , .A2 ( n11 ) , .A3 ( DATA[7] ) , .A4 ( n15 ) , 
    .Y ( n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U5 ( .A ( n8 ) , .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_RVT U6 ( .A1 ( n13 ) , .A2 ( n20 ) , .A3 ( n10 ) , .Y ( n3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U7 ( .A1 ( n18 ) , .A2 ( n14 ) , .Y ( n10 ) , .VDD ( VDD ) , 
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
    test_si , test_se , VDD , VSS , dftopt5 , p0 , p1 , dftopt0 , p2 , p3 ) ;
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
input  dftopt5 ;
input  p0 ;
input  p1 ;
input  dftopt0 ;
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

SDFFARX1_RVT OUT_reg ( .D ( mux_out ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
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
    VSS , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt9 , 
    dftopt5 , dftopt6 , dftopt7 , dftopt8 , dftopt10 , dftopt13 , dftopt11 , 
    dftopt12 ) ;
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
output dftopt0 ;
input  dftopt1 ;
output dftopt2 ;
input  dftopt3 ;
output dftopt4 ;
input  dftopt9 ;
output dftopt5 ;
input  dftopt6 ;
input  dftopt7 ;
output dftopt8 ;
output dftopt10 ;
input  dftopt13 ;
output dftopt11 ;
input  dftopt12 ;

wire N23 ;
wire N24 ;
wire N25 ;
wire n13 ;
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
wire dftopt10_gOb12 ;
wire n34 ;
wire n35 ;
wire dftopt8_gOb9 ;
wire n37 ;
wire dftopt2_gOb8 ;
wire n39 ;
wire [7:1] DATA_V ;
wire [2:0] ser_count ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n25 ) , .SI ( n35 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[7] ) , .QN ( dftopt10_gOb12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n26 ) , .SI ( dftopt10_gOb12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[6] ) , 
    .QN ( n34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n27 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[5] ) , .QN ( n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n28 ) , .SI ( n34 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[4] ) , .QN ( dftopt8_gOb9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n29 ) , .SI ( dftopt8_gOb9 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[3] ) , 
    .QN ( n37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n30 ) , .SI ( n37 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[2] ) , .QN ( dftopt2_gOb8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( dftopt2_gOb8 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[1] ) , 
    .QN ( n39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n24 ) , .SI ( n39 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_out ) , .QN ( dftopt0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_0_ ( .D ( N23 ) , .SI ( n13 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[0] ) , .QN ( dftopt11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_1_ ( .D ( N24 ) , .SI ( dftopt13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[1] ) , 
    .QN ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT ser_count_reg_2_ ( .D ( N25 ) , .SI ( dftopt12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[2] ) , 
    .QN ( dftopt5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
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
    .A3 ( ser_count[0] ) , .A4 ( dftopt5 ) , .Y ( n22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO21X1_RVT U32 ( .A1 ( Enable ) , .A2 ( n13 ) , .A3 ( N23 ) , .Y ( n21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U33 ( .A1 ( Enable ) , .A2 ( n23 ) , .Y ( N24 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_RVT U34 ( .A1 ( Enable ) , .A2 ( dftopt11 ) , .Y ( N23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U14 ( .A ( n20 ) , .Y ( n15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U15 ( .A ( n19 ) , .Y ( n16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U16 ( .A ( Busy ) , .Y ( n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_RVT U17 ( .A1 ( n13 ) , .A2 ( ser_count[0] ) , .Y ( n23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module uart_tx_fsm_test_1 ( CLK , RST , Data_Valid , ser_done , 
    parity_enable , Ser_enable , mux_sel , busy , test_si , test_so , 
    test_se , VDD , VSS , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt11 , 
    dftopt4 ) ;
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
input  dftopt0 ;
output dftopt1 ;
output dftopt2 ;
input  dftopt3 ;
input  dftopt11 ;
output dftopt4 ;

wire dftopt2_gOb7 ;
wire current_state_1_ ;
wire current_state_0_ ;
wire busy_c ;
wire n5 ;
wire n8 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire n13 ;
wire n14 ;
wire n15 ;
wire n6 ;
wire n9 ;
wire dftopt1_gOb4 ;
wire [2:0] next_state ;
supply1 VDD ;
supply0 VSS ;

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , 
    .SI ( dftopt1_gOb4 ) , .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( current_state_0_ ) , .QN ( n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( n8 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( current_state_1_ ) , 
    .QN ( dftopt4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( dftopt11 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2_gOb7 ) , 
    .QN ( n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_RVT busy_reg ( .D ( busy_c ) , .SI ( dftopt2_gOb7 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( busy ) , 
    .QN ( dftopt1_gOb4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR3X0_RVT U9 ( .A1 ( dftopt4 ) , .A2 ( dftopt2_gOb7 ) , .A3 ( n10 ) , 
    .Y ( next_state[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1_RVT U10 ( .A1 ( parity_enable ) , .A2 ( n6 ) , 
    .A3 ( current_state_0_ ) , .Y ( n10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA21X1_RVT U11 ( .A1 ( n11 ) , .A2 ( n12 ) , .A3 ( n5 ) , 
    .Y ( next_state[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U12 ( .A1 ( n13 ) , .A2 ( n5 ) , .Y ( next_state[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U13 ( .A1 ( current_state_0_ ) , .A2 ( n6 ) , .A3 ( n14 ) , 
    .A4 ( dftopt4 ) , .Y ( n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_RVT U14 ( .A1 ( Data_Valid ) , .A2 ( current_state_0_ ) , .Y ( n14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U15 ( .A1 ( n8 ) , .A2 ( n5 ) , .A3 ( n15 ) , .Y ( mux_sel[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_RVT U16 ( .A1 ( n9 ) , .A2 ( n5 ) , .A3 ( dftopt2_gOb7 ) , 
    .A4 ( n15 ) , .Y ( mux_sel[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U17 ( .A1 ( current_state_0_ ) , .A2 ( n5 ) , .A3 ( n15 ) , 
    .Y ( busy_c ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_RVT U18 ( .A1 ( n5 ) , .A2 ( n6 ) , .A3 ( n11 ) , .Y ( Ser_enable ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U19 ( .A1 ( n9 ) , .A2 ( current_state_0_ ) , .Y ( n11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_RVT U20 ( .A1 ( current_state_0_ ) , .A2 ( dftopt4 ) , .A3 ( n15 ) , 
    .Y ( n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_RVT U21 ( .A1 ( current_state_1_ ) , .A2 ( n8 ) , .Y ( n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U7 ( .A ( n12 ) , .Y ( n9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_RVT U8 ( .A ( ser_done ) , .Y ( n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( CLK , RST , P_DATA , Data_Valid , 
    parity_enable , parity_type , TX_OUT , busy , test_si , test_se , VDD , 
    VSS , dftopt4 , dftopt8 , dftopt9 , dftopt12 , dftopt14 , p0 , p1 , 
    dftopt13 , dftopt16 , dftopt17 , dftopt20 , dftopt18 , p2 , p3 ) ;
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
output dftopt4 ;
input  dftopt8 ;
input  dftopt9 ;
input  dftopt12 ;
output dftopt14 ;
input  p0 ;
input  p1 ;
input  dftopt13 ;
output dftopt16 ;
input  dftopt17 ;
input  dftopt20 ;
output dftopt18 ;
input  p2 ;
input  p3 ;

wire dftopt0 ;
wire seriz_done ;
wire seriz_en ;
wire ser_data ;
wire parity ;
wire n3 ;
wire [1:0] mux_sel ;
supply1 VDD ;
supply0 VSS ;
wire dftopt3 ;
wire dftopt5 ;
wire dftopt6 ;
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

uart_tx_fsm_test_1 U0_fsm ( .CLK ( CLK ) , .RST ( RST ) , 
    .Data_Valid ( Data_Valid ) , .ser_done ( seriz_done ) , 
    .parity_enable ( parity_enable ) , .Ser_enable ( seriz_en ) , 
    .mux_sel ( mux_sel ) , .busy ( busy ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_2 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_6 ) , .dftopt11 ( dftopt3 ) , 
    .dftopt4 ( dftopt6 ) ) ;
Serializer_WIDTH8_test_1 U0_Serializer ( .CLK ( CLK ) , .RST ( RST ) , 
    .DATA ( P_DATA ) , .Enable ( seriz_en ) , .Busy ( busy ) , 
    .Data_Valid ( Data_Valid ) , .ser_out ( ser_data ) , 
    .ser_done ( seriz_done ) , .test_si ( SYNOPSYS_UNCONNECTED_7 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_8 ) , .test_se ( test_se ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt0 ( dftopt0 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_10 ) , .dftopt3 ( dftopt5 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt5 ( dftopt18 ) , 
    .dftopt6 ( SYNOPSYS_UNCONNECTED_13 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_14 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_15 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_16 ) , .dftopt13 ( dftopt13 ) , 
    .dftopt11 ( dftopt3 ) , .dftopt12 ( TX_OUT ) ) ;
mux_test_1 U0_mux ( .CLK ( CLK ) , .RST ( RST ) , 
    .IN_0 ( SYNOPSYS_UNCONNECTED_17 ) , .IN_1 ( ser_data ) , 
    .IN_2 ( parity ) , .IN_3 ( SYNOPSYS_UNCONNECTED_18 ) , .SEL ( mux_sel ) , 
    .OUT ( TX_OUT ) , .test_si ( SYNOPSYS_UNCONNECTED_19 ) , 
    .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt5 ( SYNOPSYS_UNCONNECTED_20 ) , .p0 ( SYNOPSYS_UNCONNECTED_21 ) , 
    .p1 ( SYNOPSYS_UNCONNECTED_22 ) , .dftopt0 ( n3 ) , .p2 ( p2 ) , 
    .p3 ( p3 ) ) ;
parity_calc_WIDTH8_test_1 U0_parity_calc ( .CLK ( CLK ) , .RST ( RST ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .Busy ( busy ) , .DATA ( P_DATA ) , .Data_Valid ( Data_Valid ) , 
    .parity ( parity ) , .test_si ( SYNOPSYS_UNCONNECTED_23 ) , 
    .test_so ( n3 ) , .test_se ( test_se ) , .VDD ( VDD ) , .VSS ( VSS ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_24 ) , .dftopt0 ( dftopt4 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_25 ) , .dftopt1 ( dftopt5 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_26 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_28 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_29 ) , .dftopt5 ( dftopt6 ) , 
    .dftopt6 ( dftopt16 ) , .dftopt17 ( dftopt17 ) , .dftopt20 ( dftopt20 ) , 
    .dftopt7 ( dftopt0 ) ) ;
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
NBUFFX2_RVT IN_0_btd306 ( .A ( IN_0 ) , .Y ( cts0 ) , .VDD ( VDD ) , 
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
NBUFFX2_RVT IN_0_btd307 ( .A ( IN_0 ) , .Y ( cts0 ) , .VDD ( VDD ) , 
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

wire dftopt3 ;
wire UART_RX_SCAN_CLK ;
wire UART_TX_SCAN_CLK ;
wire SCAN_RST ;
wire dftopt2 ;
supply1 VDD ;
supply0 VSS ;
wire dftopt15 ;
wire HFSNET_0 ;
wire HFSNET_1 ;
wire optlc_net_426 ;
wire optlc_net_427 ;
wire dftopt14 ;
wire dftopt19 ;
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

NBUFFX8_RVT HFSBUF_156_0 ( .A ( SE ) , .Y ( HFSNET_0 ) , .VDD ( VDD ) , 
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
    .RST ( HFSNET_1 ) , .P_DATA ( TX_IN_P ) , .Data_Valid ( TX_IN_V ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .TX_OUT ( TX_OUT_S ) , .busy ( TX_OUT_V ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , .test_se ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt4 ( dftopt3 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_2 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_5 ) , .p0 ( SYNOPSYS_UNCONNECTED_6 ) , 
    .p1 ( SYNOPSYS_UNCONNECTED_7 ) , .dftopt13 ( dftopt2 ) , 
    .dftopt16 ( dftopt15 ) , .dftopt17 ( dftopt14 ) , .dftopt20 ( dftopt19 ) , 
    .dftopt18 ( SO ) , .p2 ( optlc_net_426 ) , .p3 ( optlc_net_427 ) ) ;
UART_RX_test_1 U0_UART_RX ( .CLK ( UART_RX_SCAN_CLK ) , .RST ( HFSNET_1 ) , 
    .RX_IN ( RX_IN_S ) , .parity_enable ( parity_enable ) , 
    .parity_type ( parity_type ) , .Prescale ( Prescale ) , 
    .P_DATA ( RX_OUT_P ) , .data_valid ( RX_OUT_V ) , 
    .parity_error ( parity_error ) , .framing_error ( framing_error ) , 
    .test_si ( SI ) , .test_so ( SYNOPSYS_UNCONNECTED_8 ) , .test_se ( SE ) , 
    .VDD ( VDD ) , .VSS ( VSS ) , .dftopt4 ( dftopt3 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_9 ) , .HFSNET_0 ( HFSNET_0 ) , 
    .HFSNET_2 ( SCAN_RST ) , .dftopt9 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt7 ( dftopt2 ) , 
    .dftopt16 ( dftopt15 ) , .dftopt15 ( dftopt14 ) , .dftopt20 ( dftopt19 ) ) ;
NBUFFX8_RVT HFSBUF_223_2 ( .A ( SCAN_RST ) , .Y ( HFSNET_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
TIEH_RVT optlc_1045 ( .Y ( optlc_net_426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_RVT optlc_1046 ( .Y ( optlc_net_427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x30000y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x34560y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x39120y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x43680y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x48240y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x52800y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x64960y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x69520y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x74080y30000 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x110560y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x115120y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x119680y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x124240y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x128800y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x133360y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x137920y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x206320y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x210880y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x215440y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x247360y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x251920y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x256480y30000 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x30000y46720 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x34560y46720 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x39120y46720 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x86240y46720 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x171360y46720 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x175920y46720 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x180480y46720 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x438880y46720 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x30000y63440 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x49760y80160 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x367440y80160 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x43680y96880 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x48240y96880 ( .VDD ( VDD ) , .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x233680y96880 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x320320y96880 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x455600y113600 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x168320y130320 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x443440y130320 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x454080y130320 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x30000y147040 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x311200y147040 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x203280y163760 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x207840y163760 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x337040y163760 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x341600y163760 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x51280y180480 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x122720y180480 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x191120y180480 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x449520y180480 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x454080y180480 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x30000y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x156160y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x160720y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x165280y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x169840y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x174400y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x178960y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x183520y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x244320y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x248880y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x253440y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x258000y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x262560y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x335520y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x340080y197200 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x92320y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x96880y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x101440y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x335520y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x340080y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x373520y213920 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x183520y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x241280y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x245840y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x422160y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x426720y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x431280y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x435840y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x440400y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x444960y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x449520y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x454080y247360 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x98400y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x102960y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x115120y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x119680y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x124240y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x245840y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x454080y264080 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x52800y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x140960y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x145520y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x150080y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x154640y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x159200y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x186560y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x428240y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x432800y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x452560y280800 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x57360y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x61920y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x244320y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x248880y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x253440y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x258000y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x302080y297520 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x194160y314240 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x64960y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x69520y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x80160y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x84720y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x89280y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x144000y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x166800y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x241280y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x245840y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x250400y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x254960y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x259520y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x455600y330960 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x148560y347680 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x153120y347680 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x317280y347680 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x162240y364400 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x280800y364400 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x137920y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x142480y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x189600y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x194160y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x198720y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x203280y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x207840y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x253440y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x384160y414560 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x30000y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x34560y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x39120y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x69520y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x127280y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL2_RVT \xofiller!SHFILL2_RVT!x131840y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x221520y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x226080y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x230640y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL3_RVT \xofiller!SHFILL3_RVT!x396320y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SHFILL1_RVT \xofiller!SHFILL1_RVT!x400880y431280 ( .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
endmodule


