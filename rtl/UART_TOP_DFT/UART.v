
module UART # ( parameter DATA_WIDTH = 8)

(
 input   wire                          RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,
 output  wire   [DATA_WIDTH-1:0]       RX_OUT_P, 
 output  wire                          RX_OUT_V,
 input   wire   [DATA_WIDTH-1:0]       TX_IN_P, 
 input   wire                          TX_IN_V, 
 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  
 input   wire   [5:0]                  Prescale, 
 input   wire                          parity_enable,
 input   wire                          parity_type,
 output  wire                          parity_error,
 output  wire                          framing_error,

 input  wire                           SI ,
 input  wire                           SE ,
 output  wire                          SO ,
 input   wire                          scan_clk,
 input   wire                          scan_rst,
 input   wire                          test_mode
);

wire UART_RX_SCAN_CLK ;
wire UART_TX_SCAN_CLK ;
wire SCAN_RST ;

// Mux generated UART_RX_CLK & SCAN_CLK
mux2X1 U0_mux2X1 (
.IN_0(RX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(UART_RX_SCAN_CLK)
); 

// Mux generated UART_TX_CLK & SCAN_CLK
mux2X1 U1_mux2X1 (
.IN_0(TX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(UART_TX_SCAN_CLK)
); 

// Mux RST & scan_rst
mux2X1 U2_mux2X1 (
.IN_0(RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(SCAN_RST)
); 

UART_TX  #(.DATA_WIDTH(DATA_WIDTH)) U0_UART_TX (
.CLK(UART_TX_SCAN_CLK),
.RST(SCAN_RST),
.P_DATA(TX_IN_P),
.Data_Valid(TX_IN_V),
.parity_enable(parity_enable),
.parity_type(parity_type), 
.TX_OUT(TX_OUT_S),
.busy(TX_OUT_V)
);
 
 
UART_RX U0_UART_RX (
.CLK(UART_RX_SCAN_CLK),
.RST(SCAN_RST),
.RX_IN(RX_IN_S),
.Prescale(Prescale),
.parity_enable(parity_enable),
.parity_type(parity_type),
.P_DATA(RX_OUT_P), 
.data_valid(RX_OUT_V),
.parity_error(parity_error),
.framing_error(framing_error)
);
 

endmodule
 
