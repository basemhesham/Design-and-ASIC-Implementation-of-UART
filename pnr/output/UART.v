// IC Compiler II Verilog Writer
// Generated on 04/24/2024 at 19:58:07
// Library Name: UART.dlib
// Block Name: UART
// User Label: 
// Write Command: write_verilog -exclude { all_physical_cells analog_pg corner_cells cover_cells diode_cells empty_modules end_cap_cells physical_only_cells filler_cells pg_objects well_tap_cells leaf_module_declarations } output/UART.v
module stp_chk_test_1 ( CLK , RST , sampled_bit , Enable , stp_err , test_si , 
    test_se , dftopt0 , dftopt1 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
output stp_err ;
input  test_si ;
input  test_se ;
input  dftopt0 ;
input  dftopt1 ;

wire n2 ;
wire n4 ;
wire n1 ;

SDFFARX1_RVT stp_err_reg ( .D ( n4 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( stp_err ) , .QN ( n2 ) ) ;
OAI22X1_RVT U2 ( .A1 ( sampled_bit ) , .A2 ( n1 ) , .A3 ( Enable ) , 
    .A4 ( n2 ) , .Y ( n4 ) ) ;
INVX1_RVT U3 ( .A ( Enable ) , .Y ( n1 ) ) ;
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK , RST , parity_type , sampled_bit , 
    Enable , P_DATA , par_err , test_si , test_so , test_se , dftopt0 ) ;
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
input  dftopt0 ;

wire n2 ;
wire n3 ;
wire n4 ;
wire n5 ;
wire n6 ;
wire n7 ;
wire n9 ;
wire n1 ;

SDFFARX1_RVT par_err_reg ( .D ( n9 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( par_err ) , .QN ( test_so ) ) ;
AO22X1_RVT U2 ( .A1 ( par_err ) , .A2 ( n1 ) , .A3 ( Enable ) , .A4 ( n2 ) , 
    .Y ( n9 ) ) ;
XNOR3X1_RVT U3 ( .A1 ( n3 ) , .A2 ( n4 ) , .A3 ( n5 ) , .Y ( n2 ) ) ;
XNOR3X1_RVT U5 ( .A1 ( P_DATA[1] ) , .A2 ( P_DATA[0] ) , .A3 ( n6 ) , 
    .Y ( n4 ) ) ;
XNOR3X1_RVT U7 ( .A1 ( P_DATA[4] ) , .A2 ( P_DATA[5] ) , .A3 ( n7 ) , 
    .Y ( n3 ) ) ;
XNOR2X1_RVT U4 ( .A1 ( P_DATA[7] ) , .A2 ( P_DATA[6] ) , .Y ( n7 ) ) ;
XNOR2X1_RVT U6 ( .A1 ( P_DATA[3] ) , .A2 ( P_DATA[2] ) , .Y ( n6 ) ) ;
XNOR2X1_RVT U8 ( .A1 ( sampled_bit ) , .A2 ( parity_type ) , .Y ( n5 ) ) ;
INVX1_RVT U9 ( .A ( Enable ) , .Y ( n1 ) ) ;
endmodule


module strt_chk_test_1 ( CLK , RST , sampled_bit , Enable , strt_glitch , 
    test_si , test_so , test_se , dftopt0 ) ;
input  CLK ;
input  RST ;
input  sampled_bit ;
input  Enable ;
output strt_glitch ;
input  test_si ;
output test_so ;
input  test_se ;
input  dftopt0 ;

wire n3 ;
wire n1 ;

SDFFARX1_RVT strt_glitch_reg ( .D ( n3 ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( strt_glitch ) , .QN ( test_so ) ) ;
AO22X1_RVT U2 ( .A1 ( sampled_bit ) , .A2 ( Enable ) , .A3 ( strt_glitch ) , 
    .A4 ( n1 ) , .Y ( n3 ) ) ;
INVX1_RVT U3 ( .A ( Enable ) , .Y ( n1 ) ) ;
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK , RST , sampled_bit , Enable , 
    edge_count , Prescale , P_DATA , test_si , test_so , test_se , dftopt1 , 
    dftopt0 ) ;
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

SDFFARX1_RVT P_DATA_reg_7_ ( .D ( n32 ) , .SI ( n46 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[7] ) , .QN ( test_so ) ) ;
SDFFARX1_RVT P_DATA_reg_6_ ( .D ( n30 ) , .SI ( n48 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[6] ) , .QN ( n46 ) ) ;
SDFFARX1_RVT P_DATA_reg_5_ ( .D ( n28 ) , .SI ( test_si ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[5] ) , .QN ( n47 ) ) ;
SDFFARX1_RVT P_DATA_reg_4_ ( .D ( n26 ) , .SI ( n49 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[4] ) , .QN ( n48 ) ) ;
SDFFARX1_RVT P_DATA_reg_3_ ( .D ( n24 ) , .SI ( n50 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[3] ) , .QN ( n49 ) ) ;
SDFFARX1_RVT P_DATA_reg_2_ ( .D ( n22 ) , .SI ( n47 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[2] ) , .QN ( n50 ) ) ;
SDFFARX1_RVT P_DATA_reg_1_ ( .D ( n20 ) , .SI ( dftopt1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[1] ) , .QN ( n51 ) ) ;
SDFFARX1_RVT P_DATA_reg_0_ ( .D ( n18 ) , .SI ( n51 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( P_DATA[0] ) , .QN ( dftopt0 ) ) ;
AO22X1_RVT U3 ( .A1 ( n1 ) , .A2 ( P_DATA[0] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[1] ) , .Y ( n18 ) ) ;
AO22X1_RVT U4 ( .A1 ( n1 ) , .A2 ( P_DATA[1] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[2] ) , .Y ( n20 ) ) ;
AO22X1_RVT U6 ( .A1 ( n1 ) , .A2 ( P_DATA[2] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[3] ) , .Y ( n22 ) ) ;
AO22X1_RVT U8 ( .A1 ( n1 ) , .A2 ( P_DATA[3] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[4] ) , .Y ( n24 ) ) ;
AO22X1_RVT U10 ( .A1 ( n1 ) , .A2 ( P_DATA[4] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[5] ) , .Y ( n26 ) ) ;
AO22X1_RVT U12 ( .A1 ( n1 ) , .A2 ( P_DATA[5] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[6] ) , .Y ( n28 ) ) ;
AO22X1_RVT U14 ( .A1 ( n1 ) , .A2 ( P_DATA[6] ) , .A3 ( n43 ) , 
    .A4 ( P_DATA[7] ) , .Y ( n30 ) ) ;
AO22X1_RVT U16 ( .A1 ( n1 ) , .A2 ( P_DATA[7] ) , .A3 ( sampled_bit ) , 
    .A4 ( n43 ) , .Y ( n32 ) ) ;
INVX1_RVT U5 ( .A ( n1 ) , .Y ( n43 ) ) ;
INVX1_RVT U7 ( .A ( N2 ) , .Y ( n34 ) ) ;
NAND2X0_RVT U9 ( .A1 ( N7 ) , .A2 ( Enable ) , .Y ( n1 ) ) ;
INVX1_RVT U11 ( .A ( edge_count[1] ) , .Y ( n35 ) ) ;
INVX1_RVT U13 ( .A ( n2 ) , .Y ( n6 ) ) ;
INVX1_RVT U15 ( .A ( n3 ) , .Y ( n7 ) ) ;
INVX1_RVT U17 ( .A ( Prescale[4] ) , .Y ( n8 ) ) ;
OR2X1_RVT U18 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n2 ) ) ;
AO21X1_RVT U19 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n6 ) , 
    .Y ( N2 ) ) ;
OR2X1_RVT U28 ( .A1 ( n2 ) , .A2 ( Prescale[2] ) , .Y ( n3 ) ) ;
AO21X1_RVT U29 ( .A1 ( Prescale[2] ) , .A2 ( n2 ) , .A3 ( n7 ) , .Y ( N3 ) ) ;
NOR2X0_RVT U30 ( .A1 ( n3 ) , .A2 ( Prescale[3] ) , .Y ( n4 ) ) ;
AO21X1_RVT U31 ( .A1 ( Prescale[3] ) , .A2 ( n3 ) , .A3 ( n4 ) , .Y ( N4 ) ) ;
XNOR2X1_RVT U32 ( .A1 ( n8 ) , .A2 ( n4 ) , .Y ( N5 ) ) ;
NAND2X0_RVT U33 ( .A1 ( n4 ) , .A2 ( n8 ) , .Y ( n5 ) ) ;
XNOR2X1_RVT U34 ( .A1 ( n5 ) , .A2 ( Prescale[5] ) , .Y ( N6 ) ) ;
XNOR2X1_RVT U35 ( .A1 ( N4 ) , .A2 ( edge_count[3] ) , .Y ( n11 ) ) ;
XNOR2X1_RVT U36 ( .A1 ( N3 ) , .A2 ( edge_count[2] ) , .Y ( n10 ) ) ;
XNOR2X1_RVT U37 ( .A1 ( N5 ) , .A2 ( edge_count[4] ) , .Y ( n9 ) ) ;
NAND3X0_RVT U38 ( .A1 ( n11 ) , .A2 ( n10 ) , .A3 ( n9 ) , .Y ( n33 ) ) ;
XOR2X1_RVT U39 ( .A1 ( N6 ) , .A2 ( edge_count[5] ) , .Y ( n16 ) ) ;
NOR2X0_RVT U40 ( .A1 ( Prescale[0] ) , .A2 ( edge_count[0] ) , .Y ( n12 ) ) ;
OA22X1_RVT U41 ( .A1 ( N2 ) , .A2 ( n12 ) , .A3 ( n12 ) , .A4 ( n35 ) , 
    .Y ( n15 ) ) ;
AND2X1_RVT U42 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n13 ) ) ;
OA22X1_RVT U43 ( .A1 ( n13 ) , .A2 ( n34 ) , .A3 ( edge_count[1] ) , 
    .A4 ( n13 ) , .Y ( n14 ) ) ;
NOR4X0_RVT U44 ( .A1 ( n33 ) , .A2 ( n16 ) , .A3 ( n15 ) , .A4 ( n14 ) , 
    .Y ( N7 ) ) ;
endmodule


module data_sampling_test_1 ( CLK , RST , S_DATA , Prescale , edge_count , 
    Enable , sampled_bit , test_si , test_so , test_se , dftopt0 , dftopt1 , 
    dftopt2 , dftopt3 , dftopt4 , dftopt5 , dftopt9 , dftopt6 , dftopt12 ) ;
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

SDFFARX1_RVT Samples_reg_2_ ( .D ( n25 ) , .SI ( dftopt12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n33 ) , 
    .QN ( dftopt4 ) ) ;
SDFFARX1_RVT Samples_reg_1_ ( .D ( n24 ) , .SI ( dftopt9 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( dftopt1 ) ) ;
SDFFARX1_RVT Samples_reg_0_ ( .D ( n23 ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , .QN ( dftopt6 ) ) ;
SDFFARX1_RVT sampled_bit_reg ( .D ( N58 ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( sampled_bit ) , 
    .QN ( test_so ) ) ;
HADDX1_RVT add_21_U1_1_1 ( .A0 ( half_edges[1] ) , .B0 ( half_edges[0] ) , 
    .C1 ( add_21_carry[2] ) , .SO ( half_edges_p1[1] ) ) ;
HADDX1_RVT add_21_U1_1_2 ( .A0 ( half_edges[2] ) , .B0 ( add_21_carry[2] ) , 
    .C1 ( add_21_carry[3] ) , .SO ( half_edges_p1[2] ) ) ;
HADDX1_RVT add_21_U1_1_3 ( .A0 ( half_edges[3] ) , .B0 ( add_21_carry[3] ) , 
    .C1 ( add_21_carry[4] ) , .SO ( half_edges_p1[3] ) ) ;
INVX1_RVT U4 ( .A ( half_edges[3] ) , .Y ( n16 ) ) ;
INVX1_RVT U5 ( .A ( n12 ) , .Y ( n15 ) ) ;
INVX1_RVT U6 ( .A ( n3 ) , .Y ( n6 ) ) ;
INVX1_RVT U10 ( .A ( Prescale[4] ) , .Y ( n11 ) ) ;
INVX0_RVT U11 ( .A ( Prescale[1] ) , .Y ( half_edges[0] ) ) ;
OR2X1_RVT U12 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , .Y ( n3 ) ) ;
AO21X1_RVT U13 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , .A3 ( n6 ) , 
    .Y ( half_edges[1] ) ) ;
NOR2X0_RVT U14 ( .A1 ( n3 ) , .A2 ( Prescale[3] ) , .Y ( n4 ) ) ;
AO21X1_RVT U15 ( .A1 ( Prescale[3] ) , .A2 ( n3 ) , .A3 ( n4 ) , 
    .Y ( half_edges[2] ) ) ;
XNOR2X1_RVT U16 ( .A1 ( n11 ) , .A2 ( n4 ) , .Y ( half_edges[3] ) ) ;
NAND2X0_RVT U17 ( .A1 ( n4 ) , .A2 ( n11 ) , .Y ( n5 ) ) ;
XNOR2X1_RVT U18 ( .A1 ( n5 ) , .A2 ( Prescale[5] ) , .Y ( half_edges[4] ) ) ;
XOR2X1_RVT U19 ( .A1 ( add_21_carry[4] ) , .A2 ( half_edges[4] ) , 
    .Y ( half_edges_p1[4] ) ) ;
OR2X1_RVT U20 ( .A1 ( half_edges[1] ) , .A2 ( half_edges[0] ) , .Y ( n12 ) ) ;
AO21X1_RVT U21 ( .A1 ( half_edges[1] ) , .A2 ( half_edges[0] ) , .A3 ( n15 ) , 
    .Y ( half_edges_n1[1] ) ) ;
NOR2X0_RVT U22 ( .A1 ( n12 ) , .A2 ( half_edges[2] ) , .Y ( n13 ) ) ;
AO21X1_RVT U23 ( .A1 ( half_edges[2] ) , .A2 ( n12 ) , .A3 ( n13 ) , 
    .Y ( half_edges_n1[2] ) ) ;
XNOR2X1_RVT U24 ( .A1 ( n16 ) , .A2 ( n13 ) , .Y ( half_edges_n1[3] ) ) ;
NAND2X0_RVT U25 ( .A1 ( n13 ) , .A2 ( n16 ) , .Y ( n14 ) ) ;
XNOR2X1_RVT U26 ( .A1 ( n14 ) , .A2 ( half_edges[4] ) , 
    .Y ( half_edges_n1[4] ) ) ;
MUX21X1_RVT U27 ( .A1 ( n17 ) , .A2 ( n18 ) , .S0 ( n19 ) , .Y ( n25 ) ) ;
NOR4X0_RVT U28 ( .A1 ( n20 ) , .A2 ( n21 ) , .A3 ( n22 ) , .A4 ( n26 ) , 
    .Y ( n19 ) ) ;
XOR2X1_RVT U29 ( .A1 ( half_edges_p1[2] ) , .A2 ( edge_count[2] ) , 
    .Y ( n26 ) ) ;
NAND2X0_RVT U30 ( .A1 ( n27 ) , .A2 ( n28 ) , .Y ( n21 ) ) ;
NAND4X0_RVT U31 ( .A1 ( n29 ) , .A2 ( n30 ) , .A3 ( n31 ) , .A4 ( n32 ) , 
    .Y ( n20 ) ) ;
XNOR2X1_RVT U32 ( .A1 ( edge_count[3] ) , .A2 ( half_edges_p1[3] ) , 
    .Y ( n32 ) ) ;
XNOR2X1_RVT U33 ( .A1 ( edge_count[4] ) , .A2 ( half_edges_p1[4] ) , 
    .Y ( n31 ) ) ;
XNOR2X1_RVT U34 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[1] ) , .Y ( n30 ) ) ;
XNOR2X1_RVT U35 ( .A1 ( edge_count[1] ) , .A2 ( half_edges_p1[1] ) , 
    .Y ( n29 ) ) ;
AND2X1_RVT U36 ( .A1 ( Enable ) , .A2 ( n33 ) , .Y ( n17 ) ) ;
MUX21X1_RVT U37 ( .A1 ( n34 ) , .A2 ( n18 ) , .S0 ( n22 ) , .Y ( n24 ) ) ;
AND4X1_RVT U38 ( .A1 ( n35 ) , .A2 ( n36 ) , .A3 ( n37 ) , .A4 ( n38 ) , 
    .Y ( n22 ) ) ;
AND4X1_RVT U39 ( .A1 ( n39 ) , .A2 ( n40 ) , .A3 ( n27 ) , .A4 ( n28 ) , 
    .Y ( n38 ) ) ;
XOR2X1_RVT U40 ( .A1 ( n41 ) , .A2 ( half_edges[0] ) , .Y ( n40 ) ) ;
XOR2X1_RVT U41 ( .A1 ( n42 ) , .A2 ( half_edges[1] ) , .Y ( n39 ) ) ;
XOR2X1_RVT U42 ( .A1 ( n43 ) , .A2 ( half_edges[3] ) , .Y ( n37 ) ) ;
XOR2X1_RVT U43 ( .A1 ( n44 ) , .A2 ( half_edges[4] ) , .Y ( n36 ) ) ;
XOR2X1_RVT U44 ( .A1 ( n45 ) , .A2 ( half_edges[2] ) , .Y ( n35 ) ) ;
AND2X1_RVT U45 ( .A1 ( Enable ) , .A2 ( n2 ) , .Y ( n34 ) ) ;
MUX21X1_RVT U46 ( .A1 ( n18 ) , .A2 ( n46 ) , .S0 ( n27 ) , .Y ( n23 ) ) ;
NAND4X0_RVT U47 ( .A1 ( n47 ) , .A2 ( n48 ) , .A3 ( n49 ) , .A4 ( n50 ) , 
    .Y ( n27 ) ) ;
AND3X1_RVT U48 ( .A1 ( n51 ) , .A2 ( n28 ) , .A3 ( n52 ) , .Y ( n50 ) ) ;
XOR2X1_RVT U49 ( .A1 ( n45 ) , .A2 ( half_edges_n1[2] ) , .Y ( n52 ) ) ;
INVX0_RVT U50 ( .A ( edge_count[2] ) , .Y ( n45 ) ) ;
INVX0_RVT U51 ( .A ( edge_count[5] ) , .Y ( n28 ) ) ;
XOR2X1_RVT U52 ( .A1 ( n43 ) , .A2 ( half_edges_n1[3] ) , .Y ( n51 ) ) ;
INVX0_RVT U53 ( .A ( edge_count[3] ) , .Y ( n43 ) ) ;
XOR2X1_RVT U54 ( .A1 ( n41 ) , .A2 ( Prescale[1] ) , .Y ( n49 ) ) ;
INVX0_RVT U55 ( .A ( edge_count[0] ) , .Y ( n41 ) ) ;
XOR2X1_RVT U56 ( .A1 ( n42 ) , .A2 ( half_edges_n1[1] ) , .Y ( n48 ) ) ;
INVX0_RVT U57 ( .A ( edge_count[1] ) , .Y ( n42 ) ) ;
XOR2X1_RVT U58 ( .A1 ( n44 ) , .A2 ( half_edges_n1[4] ) , .Y ( n47 ) ) ;
INVX0_RVT U59 ( .A ( edge_count[4] ) , .Y ( n44 ) ) ;
AND2X1_RVT U60 ( .A1 ( Enable ) , .A2 ( n1 ) , .Y ( n46 ) ) ;
AND2X1_RVT U61 ( .A1 ( S_DATA ) , .A2 ( Enable ) , .Y ( n18 ) ) ;
AND2X1_RVT U62 ( .A1 ( Enable ) , .A2 ( n53 ) , .Y ( N58 ) ) ;
AO22X1_RVT U63 ( .A1 ( n2 ) , .A2 ( n1 ) , .A3 ( n54 ) , .A4 ( n33 ) , 
    .Y ( n53 ) ) ;
NAND2X0_RVT U64 ( .A1 ( dftopt6 ) , .A2 ( dftopt1 ) , .Y ( n54 ) ) ;
endmodule


module edge_bit_counter_test_1 ( CLK , RST , Enable , Prescale , bit_count , 
    edge_count , test_si , test_so , test_se , dftopt0 , dftopt4 , dftopt1 , 
    dftopt2 , dftopt3 , dftopt5 , dftopt6 , HFSNET_0 , HFSNET_1 , dftopt14 , 
    dftopt7 , dftopt8 , dftopt9 , dftopt16 , dftopt10 , dftopt11 , dftopt12 , 
    dftopt13 ) ;
input  CLK ;
input  RST ;
input  Enable ;
input  [5:0] Prescale ;
output [3:0] bit_count ;
output [5:0] edge_count ;
input  test_si ;
output test_so ;
input  test_se ;
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

SDFFARX1_RVT edge_count_reg_0_ ( .D ( N19 ) , .SI ( dftopt8_gOb14 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[0] ) , .QN ( n1 ) ) ;
SDFFARX1_RVT edge_count_reg_5_ ( .D ( N24 ) , .SI ( dftopt0 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[5] ) , .QN ( dftopt9 ) ) ;
SDFFARX1_RVT edge_count_reg_1_ ( .D ( N20 ) , .SI ( dftopt7_gOb13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[1] ) , .QN ( dftopt13 ) ) ;
SDFFARX1_RVT edge_count_reg_2_ ( .D ( N21 ) , .SI ( n53 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( edge_count[2] ) , 
    .QN ( dftopt12 ) ) ;
SDFFARX1_RVT edge_count_reg_3_ ( .D ( N22 ) , .SI ( dftopt3_gOb5 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[3] ) , .QN ( n53 ) ) ;
SDFFARX1_RVT edge_count_reg_4_ ( .D ( N23 ) , .SI ( dftopt11 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( edge_count[4] ) , .QN ( dftopt3_gOb5 ) ) ;
SDFFARX1_RVT bit_count_reg_0_ ( .D ( n32 ) , .SI ( dftopt5 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , 
    .Q ( bit_count[0] ) , .QN ( dftopt8_gOb14 ) ) ;
SDFFARX1_RVT bit_count_reg_1_ ( .D ( n31 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( HFSNET_1 ) , .Q ( bit_count[1] ) , 
    .QN ( dftopt7_gOb13 ) ) ;
SDFFARX1_RVT bit_count_reg_2_ ( .D ( n30 ) , .SI ( dftopt4 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[2] ) , 
    .QN ( dftopt1 ) ) ;
SDFFARX1_RVT bit_count_reg_3_ ( .D ( n29 ) , .SI ( dftopt16 ) , 
    .SE ( HFSNET_0 ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( bit_count[3] ) , 
    .QN ( dftopt10 ) ) ;
NAND2X0_RVT U16 ( .A1 ( n18 ) , .A2 ( n19 ) , .Y ( n29 ) ) ;
NAND4X0_RVT U17 ( .A1 ( Enable ) , .A2 ( n20 ) , .A3 ( n21 ) , 
    .A4 ( bit_count[2] ) , .Y ( n19 ) ) ;
AND2X1_RVT U18 ( .A1 ( N31 ) , .A2 ( dftopt10 ) , .Y ( n21 ) ) ;
AO21X1_RVT U19 ( .A1 ( n22 ) , .A2 ( n23 ) , .A3 ( dftopt10 ) , .Y ( n18 ) ) ;
AO21X1_RVT U20 ( .A1 ( n20 ) , .A2 ( bit_count[2] ) , .A3 ( n49 ) , 
    .Y ( n23 ) ) ;
AND2X1_RVT U21 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .Y ( n20 ) ) ;
AO22X1_RVT U22 ( .A1 ( bit_count[2] ) , .A2 ( n24 ) , .A3 ( n25 ) , 
    .A4 ( n26 ) , .Y ( n30 ) ) ;
NOR2X0_RVT U23 ( .A1 ( dftopt7_gOb13 ) , .A2 ( bit_count[2] ) , .Y ( n25 ) ) ;
AO21X1_RVT U24 ( .A1 ( Enable ) , .A2 ( dftopt7_gOb13 ) , .A3 ( n27 ) , 
    .Y ( n24 ) ) ;
AO22X1_RVT U25 ( .A1 ( bit_count[1] ) , .A2 ( n27 ) , .A3 ( n26 ) , 
    .A4 ( dftopt7_gOb13 ) , .Y ( n31 ) ) ;
AND3X1_RVT U26 ( .A1 ( bit_count[0] ) , .A2 ( n22 ) , .A3 ( Enable ) , 
    .Y ( n26 ) ) ;
AO21X1_RVT U27 ( .A1 ( Enable ) , .A2 ( dftopt8_gOb14 ) , .A3 ( n48 ) , 
    .Y ( n27 ) ) ;
AO22X1_RVT U28 ( .A1 ( n48 ) , .A2 ( bit_count[0] ) , .A3 ( n28 ) , 
    .A4 ( Enable ) , .Y ( n32 ) ) ;
AND2X1_RVT U29 ( .A1 ( n22 ) , .A2 ( dftopt8_gOb14 ) , .Y ( n28 ) ) ;
AND2X1_RVT U30 ( .A1 ( N12 ) , .A2 ( n48 ) , .Y ( N24 ) ) ;
AND2X1_RVT U31 ( .A1 ( N11 ) , .A2 ( n48 ) , .Y ( N23 ) ) ;
AND2X1_RVT U32 ( .A1 ( N10 ) , .A2 ( n48 ) , .Y ( N22 ) ) ;
AND2X1_RVT U33 ( .A1 ( N9 ) , .A2 ( n48 ) , .Y ( N21 ) ) ;
AND2X1_RVT U34 ( .A1 ( N8 ) , .A2 ( n48 ) , .Y ( N20 ) ) ;
AND2X1_RVT U35 ( .A1 ( n1 ) , .A2 ( n48 ) , .Y ( N19 ) ) ;
OR2X1_RVT U36 ( .A1 ( n49 ) , .A2 ( N31 ) , .Y ( n22 ) ) ;
HADDX1_RVT add_31_U1_1_1 ( .A0 ( edge_count[1] ) , .B0 ( edge_count[0] ) , 
    .C1 ( add_31_carry[2] ) , .SO ( N8 ) ) ;
HADDX1_RVT add_31_U1_1_2 ( .A0 ( edge_count[2] ) , .B0 ( add_31_carry[2] ) , 
    .C1 ( add_31_carry[3] ) , .SO ( N9 ) ) ;
HADDX1_RVT add_31_U1_1_3 ( .A0 ( edge_count[3] ) , .B0 ( add_31_carry[3] ) , 
    .C1 ( add_31_carry[4] ) , .SO ( N10 ) ) ;
HADDX1_RVT add_31_U1_1_4 ( .A0 ( edge_count[4] ) , .B0 ( add_31_carry[4] ) , 
    .C1 ( add_31_carry[5] ) , .SO ( N11 ) ) ;
INVX1_RVT U6 ( .A ( n22 ) , .Y ( n48 ) ) ;
INVX1_RVT U14 ( .A ( Enable ) , .Y ( n49 ) ) ;
INVX1_RVT U15 ( .A ( N26 ) , .Y ( n47 ) ) ;
INVX1_RVT U37 ( .A ( n13 ) , .Y ( n35 ) ) ;
INVX1_RVT U38 ( .A ( n17 ) , .Y ( n36 ) ) ;
INVX1_RVT U39 ( .A ( Prescale[4] ) , .Y ( n37 ) ) ;
OR2X1_RVT U40 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n13 ) ) ;
AO21X1_RVT U41 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n35 ) , 
    .Y ( N26 ) ) ;
OR2X1_RVT U42 ( .A1 ( n13 ) , .A2 ( Prescale[2] ) , .Y ( n17 ) ) ;
AO21X1_RVT U43 ( .A1 ( Prescale[2] ) , .A2 ( n13 ) , .A3 ( n36 ) , 
    .Y ( N27 ) ) ;
NOR2X0_RVT U44 ( .A1 ( n17 ) , .A2 ( Prescale[3] ) , .Y ( n33 ) ) ;
AO21X1_RVT U45 ( .A1 ( Prescale[3] ) , .A2 ( n17 ) , .A3 ( n33 ) , 
    .Y ( N28 ) ) ;
XNOR2X1_RVT U46 ( .A1 ( n37 ) , .A2 ( n33 ) , .Y ( N29 ) ) ;
NAND2X0_RVT U47 ( .A1 ( n33 ) , .A2 ( n37 ) , .Y ( n34 ) ) ;
XNOR2X1_RVT U48 ( .A1 ( n34 ) , .A2 ( Prescale[5] ) , .Y ( N30 ) ) ;
XOR2X1_RVT U49 ( .A1 ( add_31_carry[5] ) , .A2 ( edge_count[5] ) , 
    .Y ( N12 ) ) ;
XNOR2X1_RVT U50 ( .A1 ( N28 ) , .A2 ( edge_count[3] ) , .Y ( n40 ) ) ;
XNOR2X1_RVT U51 ( .A1 ( N27 ) , .A2 ( edge_count[2] ) , .Y ( n39 ) ) ;
XNOR2X1_RVT U52 ( .A1 ( N29 ) , .A2 ( edge_count[4] ) , .Y ( n38 ) ) ;
NAND3X0_RVT U53 ( .A1 ( n40 ) , .A2 ( n39 ) , .A3 ( n38 ) , .Y ( n46 ) ) ;
XOR2X1_RVT U54 ( .A1 ( N30 ) , .A2 ( edge_count[5] ) , .Y ( n45 ) ) ;
NOR2X0_RVT U55 ( .A1 ( Prescale[0] ) , .A2 ( edge_count[0] ) , .Y ( n41 ) ) ;
OA22X1_RVT U56 ( .A1 ( N26 ) , .A2 ( n41 ) , .A3 ( n41 ) , .A4 ( dftopt13 ) , 
    .Y ( n44 ) ) ;
AND2X1_RVT U57 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n42 ) ) ;
OA22X1_RVT U58 ( .A1 ( n42 ) , .A2 ( n47 ) , .A3 ( edge_count[1] ) , 
    .A4 ( n42 ) , .Y ( n43 ) ) ;
NOR4X0_RVT U59 ( .A1 ( n46 ) , .A2 ( n45 ) , .A3 ( n44 ) , .A4 ( n43 ) , 
    .Y ( N31 ) ) ;
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK , RST , S_DATA , Prescale , 
    parity_enable , bit_count , edge_count , par_err , stp_err , strt_glitch , 
    strt_chk_en , edge_bit_en , deser_en , par_chk_en , stp_chk_en , 
    dat_samp_en , data_valid , test_si , test_so , test_se , dftopt1 , 
    dftopt0 , dftopt7 , dftopt8 , dftopt2 ) ;
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

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , .SI ( dftopt2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n2 ) , .QN ( n18 ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( stp_err ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , 
    .QN ( test_so ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( n2 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n28 ) , 
    .QN ( dftopt0 ) ) ;
INVX1_RVT U4 ( .A ( n3 ) , .Y ( n7 ) ) ;
INVX1_RVT U5 ( .A ( n4 ) , .Y ( n8 ) ) ;
INVX1_RVT U6 ( .A ( Prescale[4] ) , .Y ( n9 ) ) ;
INVX1_RVT U9 ( .A ( Prescale[1] ) , .Y ( error_check_edge_1_ ) ) ;
XNOR2X1_RVT U10 ( .A1 ( Prescale[5] ) , .A2 ( sub_40_carry[5] ) , 
    .Y ( error_check_edge_5_ ) ) ;
OR2X1_RVT U11 ( .A1 ( Prescale[4] ) , .A2 ( sub_40_carry[4] ) , 
    .Y ( sub_40_carry[5] ) ) ;
XNOR2X1_RVT U12 ( .A1 ( sub_40_carry[4] ) , .A2 ( Prescale[4] ) , 
    .Y ( error_check_edge_4_ ) ) ;
OR2X1_RVT U13 ( .A1 ( Prescale[3] ) , .A2 ( sub_40_carry[3] ) , 
    .Y ( sub_40_carry[4] ) ) ;
XNOR2X1_RVT U14 ( .A1 ( sub_40_carry[3] ) , .A2 ( Prescale[3] ) , 
    .Y ( error_check_edge_3_ ) ) ;
OR2X1_RVT U15 ( .A1 ( Prescale[2] ) , .A2 ( Prescale[1] ) , 
    .Y ( sub_40_carry[3] ) ) ;
XNOR2X1_RVT U16 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[2] ) , 
    .Y ( error_check_edge_2_ ) ) ;
INVX0_RVT U17 ( .A ( Prescale[0] ) , .Y ( check_edge[0] ) ) ;
OR2X1_RVT U18 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .Y ( n3 ) ) ;
AO21X1_RVT U19 ( .A1 ( Prescale[1] ) , .A2 ( Prescale[0] ) , .A3 ( n7 ) , 
    .Y ( check_edge[1] ) ) ;
OR2X1_RVT U20 ( .A1 ( n3 ) , .A2 ( Prescale[2] ) , .Y ( n4 ) ) ;
AO21X1_RVT U21 ( .A1 ( Prescale[2] ) , .A2 ( n3 ) , .A3 ( n8 ) , 
    .Y ( check_edge[2] ) ) ;
NOR2X0_RVT U22 ( .A1 ( n4 ) , .A2 ( Prescale[3] ) , .Y ( n5 ) ) ;
AO21X1_RVT U23 ( .A1 ( Prescale[3] ) , .A2 ( n4 ) , .A3 ( n5 ) , 
    .Y ( check_edge[3] ) ) ;
XNOR2X1_RVT U24 ( .A1 ( n9 ) , .A2 ( n5 ) , .Y ( check_edge[4] ) ) ;
NAND2X0_RVT U25 ( .A1 ( n5 ) , .A2 ( n9 ) , .Y ( n6 ) ) ;
XNOR2X1_RVT U26 ( .A1 ( n6 ) , .A2 ( Prescale[5] ) , .Y ( check_edge[5] ) ) ;
INVX0_RVT U27 ( .A ( n13 ) , .Y ( strt_chk_en ) ) ;
AND2X1_RVT U28 ( .A1 ( n14 ) , .A2 ( test_so ) , .Y ( par_chk_en ) ) ;
NAND2X0_RVT U29 ( .A1 ( n16 ) , .A2 ( n19 ) , .Y ( next_state[2] ) ) ;
NAND3X0_RVT U30 ( .A1 ( bit_count[3] ) , .A2 ( n20 ) , .A3 ( n21 ) , 
    .Y ( n19 ) ) ;
MUX21X1_RVT U31 ( .A1 ( n14 ) , .A2 ( n22 ) , .S0 ( n23 ) , .Y ( n21 ) ) ;
AND2X1_RVT U32 ( .A1 ( deser_en ) , .A2 ( n24 ) , .Y ( n22 ) ) ;
AO21X1_RVT U33 ( .A1 ( test_so ) , .A2 ( n25 ) , .A3 ( n14 ) , 
    .Y ( next_state[1] ) ) ;
AO21X1_RVT U34 ( .A1 ( n26 ) , .A2 ( n27 ) , .A3 ( n28 ) , .Y ( n25 ) ) ;
INVX0_RVT U35 ( .A ( strt_glitch ) , .Y ( n27 ) ) ;
AO221X1_RVT U36 ( .A1 ( n29 ) , .A2 ( n30 ) , .A3 ( deser_en ) , .A4 ( n31 ) , 
    .A5 ( n32 ) , .Y ( next_state[0] ) ) ;
NAND2X0_RVT U37 ( .A1 ( n33 ) , .A2 ( n34 ) , .Y ( n32 ) ) ;
NAND4X0_RVT U38 ( .A1 ( n42 ) , .A2 ( n45 ) , .A3 ( n37 ) , .A4 ( n38 ) , 
    .Y ( n34 ) ) ;
AND4X1_RVT U39 ( .A1 ( n43 ) , .A2 ( n40 ) , .A3 ( n39 ) , .A4 ( n41 ) , 
    .Y ( n38 ) ) ;
AND3X1_RVT U40 ( .A1 ( bit_count[3] ) , .A2 ( stp_chk_en ) , .A3 ( n35 ) , 
    .Y ( n41 ) ) ;
NAND2X0_RVT U41 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .Y ( n42 ) ) ;
XNOR2X1_RVT U42 ( .A1 ( edge_count[0] ) , .A2 ( Prescale[0] ) , .Y ( n40 ) ) ;
INVX0_RVT U43 ( .A ( n16 ) , .Y ( stp_chk_en ) ) ;
NAND2X0_RVT U44 ( .A1 ( n14 ) , .A2 ( n1 ) , .Y ( n16 ) ) ;
INVX0_RVT U45 ( .A ( n44 ) , .Y ( n14 ) ) ;
XNOR2X1_RVT U46 ( .A1 ( edge_count[1] ) , .A2 ( error_check_edge_1_ ) , 
    .Y ( n39 ) ) ;
AND3X1_RVT U47 ( .A1 ( n46 ) , .A2 ( n36 ) , .A3 ( n47 ) , .Y ( n37 ) ) ;
XNOR2X1_RVT U48 ( .A1 ( edge_count[3] ) , .A2 ( error_check_edge_3_ ) , 
    .Y ( n47 ) ) ;
XNOR2X1_RVT U49 ( .A1 ( edge_count[4] ) , .A2 ( error_check_edge_4_ ) , 
    .Y ( n46 ) ) ;
XNOR2X1_RVT U50 ( .A1 ( edge_count[2] ) , .A2 ( error_check_edge_2_ ) , 
    .Y ( n45 ) ) ;
XNOR2X1_RVT U51 ( .A1 ( edge_count[5] ) , .A2 ( error_check_edge_5_ ) , 
    .Y ( n36 ) ) ;
MUX21X1_RVT U52 ( .A1 ( bit_count[1] ) , .A2 ( bit_count[0] ) , .S0 ( n24 ) , 
    .Y ( n35 ) ) ;
INVX0_RVT U53 ( .A ( parity_enable ) , .Y ( n24 ) ) ;
AO21X1_RVT U54 ( .A1 ( strt_glitch ) , .A2 ( n26 ) , .A3 ( n13 ) , 
    .Y ( n33 ) ) ;
OR2X1_RVT U55 ( .A1 ( n28 ) , .A2 ( n48 ) , .Y ( n13 ) ) ;
AND4X1_RVT U56 ( .A1 ( n20 ) , .A2 ( n23 ) , .A3 ( n49 ) , .A4 ( n2 ) , 
    .Y ( n26 ) ) ;
INVX0_RVT U57 ( .A ( bit_count[3] ) , .Y ( n49 ) ) ;
NAND3X0_RVT U58 ( .A1 ( n20 ) , .A2 ( n23 ) , .A3 ( bit_count[3] ) , 
    .Y ( n31 ) ) ;
INVX0_RVT U59 ( .A ( bit_count[0] ) , .Y ( n23 ) ) ;
NOR2X0_RVT U60 ( .A1 ( n50 ) , .A2 ( n51 ) , .Y ( n20 ) ) ;
NAND4X0_RVT U61 ( .A1 ( n52 ) , .A2 ( n53 ) , .A3 ( n54 ) , .A4 ( n55 ) , 
    .Y ( n51 ) ) ;
XNOR2X1_RVT U62 ( .A1 ( edge_count[3] ) , .A2 ( check_edge[3] ) , .Y ( n55 ) ) ;
XNOR2X1_RVT U63 ( .A1 ( edge_count[4] ) , .A2 ( check_edge[4] ) , .Y ( n54 ) ) ;
XNOR2X1_RVT U64 ( .A1 ( edge_count[0] ) , .A2 ( check_edge[0] ) , .Y ( n53 ) ) ;
XNOR2X1_RVT U65 ( .A1 ( edge_count[1] ) , .A2 ( check_edge[1] ) , .Y ( n52 ) ) ;
NAND4X0_RVT U66 ( .A1 ( n56 ) , .A2 ( n57 ) , .A3 ( n58 ) , .A4 ( n43 ) , 
    .Y ( n50 ) ) ;
INVX0_RVT U67 ( .A ( bit_count[2] ) , .Y ( n43 ) ) ;
INVX0_RVT U68 ( .A ( bit_count[1] ) , .Y ( n58 ) ) ;
XNOR2X1_RVT U69 ( .A1 ( edge_count[5] ) , .A2 ( check_edge[5] ) , .Y ( n57 ) ) ;
XNOR2X1_RVT U70 ( .A1 ( edge_count[2] ) , .A2 ( check_edge[2] ) , .Y ( n56 ) ) ;
INVX0_RVT U71 ( .A ( S_DATA ) , .Y ( n30 ) ) ;
INVX0_RVT U72 ( .A ( n59 ) , .Y ( n29 ) ) ;
NAND2X0_RVT U73 ( .A1 ( n48 ) , .A2 ( n44 ) , .Y ( edge_bit_en ) ) ;
NAND2X0_RVT U74 ( .A1 ( n18 ) , .A2 ( n28 ) , .Y ( n44 ) ) ;
AND3X1_RVT U75 ( .A1 ( n28 ) , .A2 ( n2 ) , .A3 ( test_so ) , 
    .Y ( deser_en ) ) ;
NOR3X0_RVT U76 ( .A1 ( n59 ) , .A2 ( stp_err ) , .A3 ( par_err ) , 
    .Y ( data_valid ) ) ;
NAND3X0_RVT U77 ( .A1 ( n28 ) , .A2 ( n2 ) , .A3 ( n1 ) , .Y ( n59 ) ) ;
NAND2X0_RVT U78 ( .A1 ( dftopt0 ) , .A2 ( n48 ) , .Y ( dat_samp_en ) ) ;
AO21X1_RVT U79 ( .A1 ( n18 ) , .A2 ( S_DATA ) , .A3 ( n1 ) , .Y ( n48 ) ) ;
endmodule


module UART_RX_test_1 ( CLK , RST , RX_IN , parity_enable , parity_type , 
    Prescale , P_DATA , data_valid , parity_error , framing_error , test_si , 
    test_so , test_se , dftopt4 , dftopt8 , HFSNET_0 , HFSNET_2 , dftopt9 , 
    dftopt10 , dftopt14 , dftopt7 , dftopt16 , dftopt15 , dftopt20 ) ;
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

NBUFFX8_RVT HFSBUF_432_1 ( .A ( HFSNET_2 ) , .Y ( HFSNET_1 ) ) ;
uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK ( CLK ) , 
    .RST ( HFSNET_1 ) , .S_DATA ( RX_IN ) , .Prescale ( Prescale ) , 
    .parity_enable ( parity_enable ) , .bit_count ( bit_count ) , 
    .edge_count ( edge_count ) , .par_err ( parity_error ) , 
    .stp_err ( framing_error ) , .strt_glitch ( strt_glitch ) , 
    .strt_chk_en ( strt_chk_en ) , .edge_bit_en ( edge_bit_en ) , 
    .deser_en ( deser_en ) , .par_chk_en ( par_chk_en ) , 
    .stp_chk_en ( stp_chk_en ) , .dat_samp_en ( dat_samp_en ) , 
    .data_valid ( data_valid ) , .test_si ( SYNOPSYS_UNCONNECTED_1 ) , 
    .test_so ( dftopt7 ) , .test_se ( test_se ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_2 ) , .dftopt0 ( dftopt3 ) , 
    .dftopt7 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_4 ) , .dftopt2 ( dftopt10_gOb10 ) ) ;
edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK ( CLK ) , .RST ( RST ) , 
    .Enable ( edge_bit_en ) , .Prescale ( Prescale ) , 
    .bit_count ( bit_count ) , .edge_count ( edge_count ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_5 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_6 ) , .test_se ( test_se ) , 
    .dftopt0 ( test_si ) , .dftopt4 ( dftopt4 ) , 
    .dftopt1 ( dftopt10_gOb10 ) , .dftopt2 ( SYNOPSYS_UNCONNECTED_7 ) , 
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
    .test_so ( n8 ) , .test_se ( test_se ) , 
    .dftopt0 ( SYNOPSYS_UNCONNECTED_15 ) , .dftopt1 ( dftopt0 ) , 
    .dftopt2 ( dftopt1 ) , .dftopt3 ( SYNOPSYS_UNCONNECTED_16 ) , 
    .dftopt4 ( dftopt6 ) , .dftopt5 ( n4 ) , .dftopt9 ( dftopt2 ) , 
    .dftopt6 ( dftopt17 ) , .dftopt12 ( dftopt18 ) ) ;
deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK ( CLK ) , 
    .RST ( HFSNET_1 ) , .sampled_bit ( sampled_bit ) , .Enable ( deser_en ) , 
    .edge_count ( edge_count ) , .Prescale ( Prescale ) , .P_DATA ( P_DATA ) , 
    .test_si ( n8 ) , .test_so ( n7 ) , .test_se ( test_se ) , 
    .dftopt1 ( dftopt0 ) , .dftopt0 ( dftopt1 ) ) ;
strt_chk_test_1 U0_strt_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( strt_chk_en ) , 
    .strt_glitch ( strt_glitch ) , .test_si ( SYNOPSYS_UNCONNECTED_17 ) , 
    .test_so ( n4 ) , .test_se ( test_se ) , .dftopt0 ( dftopt3 ) ) ;
par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .parity_type ( parity_type ) , .sampled_bit ( sampled_bit ) , 
    .Enable ( par_chk_en ) , .P_DATA ( P_DATA ) , .par_err ( parity_error ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_18 ) , .test_so ( dftopt9_gOb6 ) , 
    .test_se ( test_se ) , .dftopt0 ( n7 ) ) ;
stp_chk_test_1 U0_stp_chk ( .CLK ( CLK ) , .RST ( HFSNET_1 ) , 
    .sampled_bit ( sampled_bit ) , .Enable ( stp_chk_en ) , 
    .stp_err ( framing_error ) , .test_si ( SYNOPSYS_UNCONNECTED_19 ) , 
    .test_se ( test_se ) , .dftopt0 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .dftopt1 ( dftopt9_gOb6 ) ) ;
endmodule


module parity_calc_WIDTH8_test_1 ( CLK , RST , parity_enable , parity_type , 
    Busy , DATA , Data_Valid , parity , test_si , test_so , test_se , 
    dftopt2 , dftopt0 , dftopt8 , dftopt1 , dftopt4 , dftopt3 , dftopt9 , 
    dftopt12 , dftopt5 , dftopt6 , dftopt17 , dftopt20 , dftopt7 ) ;
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

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n43 ) , .SI ( dftopt20 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n11 ) , .QN ( n25 ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n41 ) , .SI ( n1 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt6 ) , .QN ( n24 ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n39 ) , .SI ( n11 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n6 ) , .QN ( n23 ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n37 ) , .SI ( n6 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt1 ) , .QN ( n22 ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n35 ) , .SI ( dftopt17 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n13 ) , .QN ( dftopt0 ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n33 ) , .SI ( n28 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n1 ) , .QN ( n20 ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( n7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n14 ) , .QN ( n28 ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n29 ) , .SI ( dftopt5 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( n7 ) , .QN ( n18 ) ) ;
SDFFARX1_RVT parity_reg ( .D ( n27 ) , .SI ( dftopt7 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( parity ) , .QN ( test_so ) ) ;
AO22X1_RVT U2 ( .A1 ( parity ) , .A2 ( n17 ) , .A3 ( parity_enable ) , 
    .A4 ( n2 ) , .Y ( n27 ) ) ;
XNOR3X1_RVT U3 ( .A1 ( parity_type ) , .A2 ( n3 ) , .A3 ( n4 ) , .Y ( n2 ) ) ;
XNOR3X1_RVT U4 ( .A1 ( n24 ) , .A2 ( n25 ) , .A3 ( n5 ) , .Y ( n4 ) ) ;
AO22X1_RVT U9 ( .A1 ( n8 ) , .A2 ( n7 ) , .A3 ( DATA[0] ) , .A4 ( n15 ) , 
    .Y ( n29 ) ) ;
AO22X1_RVT U11 ( .A1 ( n8 ) , .A2 ( n14 ) , .A3 ( DATA[1] ) , .A4 ( n15 ) , 
    .Y ( n31 ) ) ;
AO22X1_RVT U13 ( .A1 ( n8 ) , .A2 ( n1 ) , .A3 ( DATA[2] ) , .A4 ( n15 ) , 
    .Y ( n33 ) ) ;
AO22X1_RVT U15 ( .A1 ( n8 ) , .A2 ( n13 ) , .A3 ( DATA[3] ) , .A4 ( n15 ) , 
    .Y ( n35 ) ) ;
AO22X1_RVT U17 ( .A1 ( n8 ) , .A2 ( dftopt1 ) , .A3 ( DATA[4] ) , 
    .A4 ( n15 ) , .Y ( n37 ) ) ;
AO22X1_RVT U19 ( .A1 ( n8 ) , .A2 ( n6 ) , .A3 ( DATA[5] ) , .A4 ( n15 ) , 
    .Y ( n39 ) ) ;
AO22X1_RVT U21 ( .A1 ( n8 ) , .A2 ( dftopt6 ) , .A3 ( DATA[6] ) , 
    .A4 ( n15 ) , .Y ( n41 ) ) ;
AO22X1_RVT U23 ( .A1 ( n8 ) , .A2 ( n11 ) , .A3 ( DATA[7] ) , .A4 ( n15 ) , 
    .Y ( n43 ) ) ;
INVX1_RVT U5 ( .A ( n8 ) , .Y ( n15 ) ) ;
XNOR3X1_RVT U6 ( .A1 ( n13 ) , .A2 ( n20 ) , .A3 ( n10 ) , .Y ( n3 ) ) ;
XNOR2X1_RVT U7 ( .A1 ( n18 ) , .A2 ( n14 ) , .Y ( n10 ) ) ;
XOR2X1_RVT U8 ( .A1 ( n22 ) , .A2 ( n23 ) , .Y ( n5 ) ) ;
NAND2X0_RVT U10 ( .A1 ( Data_Valid ) , .A2 ( n16 ) , .Y ( n8 ) ) ;
INVX1_RVT U12 ( .A ( Busy ) , .Y ( n16 ) ) ;
INVX1_RVT U14 ( .A ( parity_enable ) , .Y ( n17 ) ) ;
endmodule


module mux_test_1 ( CLK , RST , IN_0 , IN_1 , IN_2 , IN_3 , SEL , OUT , 
    test_si , test_se , dftopt5 , p0 , p1 , dftopt0 , p2 , p3 ) ;
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
wire SYNOPSYS_UNCONNECTED_1 ;

SDFFARX1_RVT OUT_reg ( .D ( mux_out ) , .SI ( dftopt0 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( OUT ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
AO22X1_RVT U6 ( .A1 ( SEL[1] ) , .A2 ( n4 ) , .A3 ( n5 ) , .A4 ( n2 ) , 
    .Y ( mux_out ) ) ;
AO22X1_RVT U7 ( .A1 ( SEL[0] ) , .A2 ( IN_1 ) , .A3 ( p3 ) , .A4 ( n3 ) , 
    .Y ( n5 ) ) ;
AO22X1_RVT U8 ( .A1 ( p2 ) , .A2 ( SEL[0] ) , .A3 ( IN_2 ) , .A4 ( n3 ) , 
    .Y ( n4 ) ) ;
INVX1_RVT U4 ( .A ( SEL[0] ) , .Y ( n3 ) ) ;
INVX1_RVT U5 ( .A ( SEL[1] ) , .Y ( n2 ) ) ;
endmodule


module Serializer_WIDTH8_test_1 ( CLK , RST , DATA , Enable , Busy , 
    Data_Valid , ser_out , ser_done , test_si , test_so , test_se , dftopt0 , 
    dftopt1 , dftopt2 , dftopt3 , dftopt4 , dftopt9 , dftopt5 , dftopt6 , 
    dftopt7 , dftopt8 , dftopt10 , dftopt13 , dftopt11 , dftopt12 ) ;
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

SDFFARX1_RVT DATA_V_reg_7_ ( .D ( n25 ) , .SI ( n35 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[7] ) , .QN ( dftopt10_gOb12 ) ) ;
SDFFARX1_RVT DATA_V_reg_6_ ( .D ( n26 ) , .SI ( dftopt10_gOb12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[6] ) , 
    .QN ( n34 ) ) ;
SDFFARX1_RVT DATA_V_reg_5_ ( .D ( n27 ) , .SI ( dftopt3 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[5] ) , .QN ( n35 ) ) ;
SDFFARX1_RVT DATA_V_reg_4_ ( .D ( n28 ) , .SI ( n34 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[4] ) , .QN ( dftopt8_gOb9 ) ) ;
SDFFARX1_RVT DATA_V_reg_3_ ( .D ( n29 ) , .SI ( dftopt8_gOb9 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[3] ) , 
    .QN ( n37 ) ) ;
SDFFARX1_RVT DATA_V_reg_2_ ( .D ( n30 ) , .SI ( n37 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[2] ) , .QN ( dftopt2_gOb8 ) ) ;
SDFFARX1_RVT DATA_V_reg_1_ ( .D ( n31 ) , .SI ( dftopt2_gOb8 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( DATA_V[1] ) , 
    .QN ( n39 ) ) ;
SDFFARX1_RVT DATA_V_reg_0_ ( .D ( n24 ) , .SI ( n39 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_out ) , .QN ( dftopt0 ) ) ;
SDFFARX1_RVT ser_count_reg_0_ ( .D ( N23 ) , .SI ( n13 ) , .SE ( test_se ) , 
    .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[0] ) , .QN ( dftopt11 ) ) ;
SDFFARX1_RVT ser_count_reg_1_ ( .D ( N24 ) , .SI ( dftopt13 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[1] ) , 
    .QN ( n13 ) ) ;
SDFFARX1_RVT ser_count_reg_2_ ( .D ( N25 ) , .SI ( dftopt12 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( ser_count[2] ) , 
    .QN ( dftopt5 ) ) ;
AND3X1_RVT U18 ( .A1 ( ser_count[1] ) , .A2 ( ser_count[0] ) , 
    .A3 ( ser_count[2] ) , .Y ( ser_done ) ) ;
AO222X1_RVT U19 ( .A1 ( DATA[0] ) , .A2 ( n16 ) , .A3 ( DATA_V[1] ) , 
    .A4 ( n15 ) , .A5 ( ser_out ) , .A6 ( n18 ) , .Y ( n24 ) ) ;
AO22X1_RVT U20 ( .A1 ( DATA_V[7] ) , .A2 ( n18 ) , .A3 ( DATA[7] ) , 
    .A4 ( n16 ) , .Y ( n25 ) ) ;
AO222X1_RVT U21 ( .A1 ( DATA[6] ) , .A2 ( n16 ) , .A3 ( DATA_V[7] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[6] ) , .A6 ( n18 ) , .Y ( n26 ) ) ;
AO222X1_RVT U22 ( .A1 ( DATA[5] ) , .A2 ( n16 ) , .A3 ( DATA_V[6] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[5] ) , .A6 ( n18 ) , .Y ( n27 ) ) ;
AO222X1_RVT U23 ( .A1 ( DATA[4] ) , .A2 ( n16 ) , .A3 ( DATA_V[5] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[4] ) , .A6 ( n18 ) , .Y ( n28 ) ) ;
AO222X1_RVT U24 ( .A1 ( DATA[3] ) , .A2 ( n16 ) , .A3 ( DATA_V[4] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[3] ) , .A6 ( n18 ) , .Y ( n29 ) ) ;
AO222X1_RVT U25 ( .A1 ( DATA[2] ) , .A2 ( n16 ) , .A3 ( DATA_V[3] ) , 
    .A4 ( n15 ) , .A5 ( DATA_V[2] ) , .A6 ( n18 ) , .Y ( n30 ) ) ;
AO222X1_RVT U26 ( .A1 ( DATA[1] ) , .A2 ( n16 ) , .A3 ( DATA_V[2] ) , 
    .A4 ( n15 ) , .A5 ( n18 ) , .A6 ( DATA_V[1] ) , .Y ( n31 ) ) ;
AND2X1_RVT U27 ( .A1 ( n19 ) , .A2 ( n20 ) , .Y ( n18 ) ) ;
NAND2X0_RVT U28 ( .A1 ( Enable ) , .A2 ( n19 ) , .Y ( n20 ) ) ;
NAND2X0_RVT U29 ( .A1 ( Data_Valid ) , .A2 ( n17 ) , .Y ( n19 ) ) ;
AO21X1_RVT U30 ( .A1 ( ser_count[2] ) , .A2 ( n21 ) , .A3 ( n22 ) , 
    .Y ( N25 ) ) ;
AND4X1_RVT U31 ( .A1 ( Enable ) , .A2 ( ser_count[1] ) , 
    .A3 ( ser_count[0] ) , .A4 ( dftopt5 ) , .Y ( n22 ) ) ;
AO21X1_RVT U32 ( .A1 ( Enable ) , .A2 ( n13 ) , .A3 ( N23 ) , .Y ( n21 ) ) ;
AND2X1_RVT U33 ( .A1 ( Enable ) , .A2 ( n23 ) , .Y ( N24 ) ) ;
AND2X1_RVT U34 ( .A1 ( Enable ) , .A2 ( dftopt11 ) , .Y ( N23 ) ) ;
INVX1_RVT U14 ( .A ( n20 ) , .Y ( n15 ) ) ;
INVX1_RVT U15 ( .A ( n19 ) , .Y ( n16 ) ) ;
INVX1_RVT U16 ( .A ( Busy ) , .Y ( n17 ) ) ;
XNOR2X1_RVT U17 ( .A1 ( n13 ) , .A2 ( ser_count[0] ) , .Y ( n23 ) ) ;
endmodule


module uart_tx_fsm_test_1 ( CLK , RST , Data_Valid , ser_done , 
    parity_enable , Ser_enable , mux_sel , busy , test_si , test_so , 
    test_se , dftopt0 , dftopt1 , dftopt2 , dftopt3 , dftopt11 , dftopt4 ) ;
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

SDFFARX1_RVT current_state_reg_0_ ( .D ( next_state[0] ) , 
    .SI ( dftopt1_gOb4 ) , .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , 
    .Q ( current_state_0_ ) , .QN ( n8 ) ) ;
SDFFARX1_RVT current_state_reg_1_ ( .D ( next_state[1] ) , .SI ( n8 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( current_state_1_ ) , 
    .QN ( dftopt4 ) ) ;
SDFFARX1_RVT current_state_reg_2_ ( .D ( next_state[2] ) , .SI ( dftopt11 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( dftopt2_gOb7 ) , 
    .QN ( n5 ) ) ;
SDFFARX1_RVT busy_reg ( .D ( busy_c ) , .SI ( dftopt2_gOb7 ) , 
    .SE ( test_se ) , .CLK ( CLK ) , .RSTB ( RST ) , .Q ( busy ) , 
    .QN ( dftopt1_gOb4 ) ) ;
NOR3X0_RVT U9 ( .A1 ( dftopt4 ) , .A2 ( dftopt2_gOb7 ) , .A3 ( n10 ) , 
    .Y ( next_state[2] ) ) ;
OA21X1_RVT U10 ( .A1 ( parity_enable ) , .A2 ( n6 ) , 
    .A3 ( current_state_0_ ) , .Y ( n10 ) ) ;
OA21X1_RVT U11 ( .A1 ( n11 ) , .A2 ( n12 ) , .A3 ( n5 ) , 
    .Y ( next_state[1] ) ) ;
AND2X1_RVT U12 ( .A1 ( n13 ) , .A2 ( n5 ) , .Y ( next_state[0] ) ) ;
AO22X1_RVT U13 ( .A1 ( current_state_0_ ) , .A2 ( n6 ) , .A3 ( n14 ) , 
    .A4 ( dftopt4 ) , .Y ( n13 ) ) ;
OR2X1_RVT U14 ( .A1 ( Data_Valid ) , .A2 ( current_state_0_ ) , .Y ( n14 ) ) ;
AO21X1_RVT U15 ( .A1 ( n8 ) , .A2 ( n5 ) , .A3 ( n15 ) , .Y ( mux_sel[1] ) ) ;
AO22X1_RVT U16 ( .A1 ( n9 ) , .A2 ( n5 ) , .A3 ( dftopt2_gOb7 ) , 
    .A4 ( n15 ) , .Y ( mux_sel[0] ) ) ;
AO21X1_RVT U17 ( .A1 ( current_state_0_ ) , .A2 ( n5 ) , .A3 ( n15 ) , 
    .Y ( busy_c ) ) ;
AND3X1_RVT U18 ( .A1 ( n5 ) , .A2 ( n6 ) , .A3 ( n11 ) , .Y ( Ser_enable ) ) ;
AND2X1_RVT U19 ( .A1 ( n9 ) , .A2 ( current_state_0_ ) , .Y ( n11 ) ) ;
AO21X1_RVT U20 ( .A1 ( current_state_0_ ) , .A2 ( dftopt4 ) , .A3 ( n15 ) , 
    .Y ( n12 ) ) ;
AND2X1_RVT U21 ( .A1 ( current_state_1_ ) , .A2 ( n8 ) , .Y ( n15 ) ) ;
INVX1_RVT U7 ( .A ( n12 ) , .Y ( n9 ) ) ;
INVX1_RVT U8 ( .A ( ser_done ) , .Y ( n6 ) ) ;
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( CLK , RST , P_DATA , Data_Valid , 
    parity_enable , parity_type , TX_OUT , busy , test_si , test_se , 
    dftopt4 , dftopt8 , dftopt9 , dftopt12 , dftopt14 , p0 , p1 , dftopt13 , 
    dftopt16 , dftopt17 , dftopt20 , dftopt18 , p2 , p3 ) ;
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
    .dftopt0 ( SYNOPSYS_UNCONNECTED_3 ) , 
    .dftopt1 ( SYNOPSYS_UNCONNECTED_4 ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_5 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_6 ) , .dftopt11 ( dftopt3 ) , 
    .dftopt4 ( dftopt6 ) ) ;
Serializer_WIDTH8_test_1 U0_Serializer ( .CLK ( CLK ) , .RST ( RST ) , 
    .DATA ( P_DATA ) , .Enable ( seriz_en ) , .Busy ( busy ) , 
    .Data_Valid ( Data_Valid ) , .ser_out ( ser_data ) , 
    .ser_done ( seriz_done ) , .test_si ( SYNOPSYS_UNCONNECTED_7 ) , 
    .test_so ( SYNOPSYS_UNCONNECTED_8 ) , .test_se ( test_se ) , 
    .dftopt0 ( dftopt0 ) , .dftopt1 ( SYNOPSYS_UNCONNECTED_9 ) , 
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
    .test_se ( test_se ) , .dftopt5 ( SYNOPSYS_UNCONNECTED_20 ) , 
    .p0 ( SYNOPSYS_UNCONNECTED_21 ) , .p1 ( SYNOPSYS_UNCONNECTED_22 ) , 
    .dftopt0 ( n3 ) , .p2 ( p2 ) , .p3 ( p3 ) ) ;
parity_calc_WIDTH8_test_1 U0_parity_calc ( .CLK ( CLK ) , .RST ( RST ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .Busy ( busy ) , .DATA ( P_DATA ) , .Data_Valid ( Data_Valid ) , 
    .parity ( parity ) , .test_si ( SYNOPSYS_UNCONNECTED_23 ) , 
    .test_so ( n3 ) , .test_se ( test_se ) , 
    .dftopt2 ( SYNOPSYS_UNCONNECTED_24 ) , .dftopt0 ( dftopt4 ) , 
    .dftopt8 ( SYNOPSYS_UNCONNECTED_25 ) , .dftopt1 ( dftopt5 ) , 
    .dftopt4 ( SYNOPSYS_UNCONNECTED_26 ) , 
    .dftopt3 ( SYNOPSYS_UNCONNECTED_27 ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_28 ) , 
    .dftopt12 ( SYNOPSYS_UNCONNECTED_29 ) , .dftopt5 ( dftopt6 ) , 
    .dftopt6 ( dftopt16 ) , .dftopt17 ( dftopt17 ) , .dftopt20 ( dftopt20 ) , 
    .dftopt7 ( dftopt0 ) ) ;
endmodule


module mux2X1_1 ( IN_0 , IN_1 , SEL , OUT ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;

MUX21X1_RVT U1 ( .A1 ( IN_0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) ) ;
endmodule


module mux2X1_2 ( IN_0 , IN_1 , SEL , OUT ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;

wire cts0 ;

MUX21X2_RVT U1 ( .A1 ( cts0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) ) ;
NBUFFX2_RVT IN_0_btd306 ( .A ( IN_0 ) , .Y ( cts0 ) ) ;
endmodule


module mux2X1_0 ( IN_0 , IN_1 , SEL , OUT ) ;
input  IN_0 ;
input  IN_1 ;
input  SEL ;
output OUT ;

wire cts0 ;

MUX21X2_RVT U1 ( .A1 ( cts0 ) , .A2 ( IN_1 ) , .S0 ( SEL ) , .Y ( OUT ) ) ;
NBUFFX2_RVT IN_0_btd307 ( .A ( IN_0 ) , .Y ( cts0 ) ) ;
endmodule


module UART ( RST , TX_CLK , RX_CLK , RX_IN_S , RX_OUT_P , RX_OUT_V , 
    TX_IN_P , TX_IN_V , TX_OUT_S , TX_OUT_V , Prescale , parity_enable , 
    parity_type , parity_error , framing_error , SI , SE , SO , scan_clk , 
    scan_rst , test_mode ) ;
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

wire dftopt3 ;
wire UART_RX_SCAN_CLK ;
wire UART_TX_SCAN_CLK ;
wire SCAN_RST ;
wire dftopt2 ;
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

NBUFFX8_RVT HFSBUF_156_0 ( .A ( SE ) , .Y ( HFSNET_0 ) ) ;
mux2X1_0 U0_mux2X1 ( .IN_0 ( RX_CLK ) , .IN_1 ( scan_clk ) , 
    .SEL ( test_mode ) , .OUT ( UART_RX_SCAN_CLK ) ) ;
mux2X1_2 U1_mux2X1 ( .IN_0 ( TX_CLK ) , .IN_1 ( scan_clk ) , 
    .SEL ( test_mode ) , .OUT ( UART_TX_SCAN_CLK ) ) ;
mux2X1_1 U2_mux2X1 ( .IN_0 ( RST ) , .IN_1 ( scan_rst ) , .SEL ( test_mode ) , 
    .OUT ( SCAN_RST ) ) ;
UART_TX_DATA_WIDTH8_test_1 U0_UART_TX ( .CLK ( UART_TX_SCAN_CLK ) , 
    .RST ( HFSNET_1 ) , .P_DATA ( TX_IN_P ) , .Data_Valid ( TX_IN_V ) , 
    .parity_enable ( parity_enable ) , .parity_type ( parity_type ) , 
    .TX_OUT ( TX_OUT_S ) , .busy ( TX_OUT_V ) , 
    .test_si ( SYNOPSYS_UNCONNECTED_1 ) , .test_se ( HFSNET_0 ) , 
    .dftopt4 ( dftopt3 ) , .dftopt8 ( SYNOPSYS_UNCONNECTED_2 ) , 
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
    .dftopt4 ( dftopt3 ) , .dftopt8 ( SYNOPSYS_UNCONNECTED_9 ) , 
    .HFSNET_0 ( HFSNET_0 ) , .HFSNET_2 ( SCAN_RST ) , 
    .dftopt9 ( SYNOPSYS_UNCONNECTED_10 ) , 
    .dftopt10 ( SYNOPSYS_UNCONNECTED_11 ) , 
    .dftopt14 ( SYNOPSYS_UNCONNECTED_12 ) , .dftopt7 ( dftopt2 ) , 
    .dftopt16 ( dftopt15 ) , .dftopt15 ( dftopt14 ) , .dftopt20 ( dftopt19 ) ) ;
NBUFFX8_RVT HFSBUF_223_2 ( .A ( SCAN_RST ) , .Y ( HFSNET_1 ) ) ;
TIEH_RVT optlc_1045 ( .Y ( optlc_net_426 ) ) ;
TIEL_RVT optlc_1046 ( .Y ( optlc_net_427 ) ) ;
endmodule


