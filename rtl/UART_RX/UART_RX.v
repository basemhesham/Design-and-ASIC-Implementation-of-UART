
module UART_RX # (parameter DATA_WIDTH = 8)

(
 input   wire                          CLK,
 input   wire                          RST,
 input   wire                          RX_IN,
 input   wire                          parity_enable,
 input   wire                          parity_type,
 input   wire   [5:0]                  Prescale, 
 output  wire   [DATA_WIDTH-1:0]       P_DATA, 
 output  wire                          data_valid,
 output  wire                          parity_error,
 output  wire                          framing_error
);


wire   [3:0]           bit_count ;
wire   [5:0]           edge_count ;

wire                   edge_bit_en; 
wire                   deser_en; 
wire                   par_chk_en; 
wire                   stp_chk_en; 
wire                   strt_chk_en; 
wire                   strt_glitch;
wire                   sampled_bit;
wire                   dat_samp_en;

 
uart_rx_fsm # ( .DATA_WIDTH(8)) U0_uart_fsm (
.CLK(CLK),
.RST(RST),
.S_DATA(RX_IN),
.Prescale(Prescale),
.bit_count(bit_count),
.parity_enable(parity_enable),
.edge_count(edge_count), 
.strt_glitch(strt_glitch),
.par_err(parity_error),
.stp_err(framing_error), 
.strt_chk_en(strt_chk_en),
.edge_bit_en(edge_bit_en), 
.deser_en(deser_en), 
.par_chk_en(par_chk_en), 
.stp_chk_en(stp_chk_en),
.dat_samp_en(dat_samp_en),
.data_valid(data_valid)
);
 
 
edge_bit_counter U0_edge_bit_counter (
.CLK(CLK),
.RST(RST),
.Prescale(Prescale),
.Enable(edge_bit_en),
.bit_count(bit_count),
.edge_count(edge_count) 
); 

data_sampling U0_data_sampling (
.CLK(CLK),
.RST(RST),
.S_DATA(RX_IN),
.Prescale(Prescale),
.Enable(dat_samp_en),
.edge_count(edge_count),
.sampled_bit(sampled_bit)
);

deserializer # ( .DATA_WIDTH(8)) U0_deserializer (
.CLK(CLK),
.RST(RST),
.Prescale(Prescale),
.sampled_bit(sampled_bit),
.Enable(deser_en),
.edge_count(edge_count), 
.P_DATA(P_DATA)
);

strt_chk U0_strt_chk (
.CLK(CLK),
.RST(RST),
.sampled_bit(sampled_bit),
.Enable(strt_chk_en), 
.strt_glitch(strt_glitch)
);

par_chk # ( .DATA_WIDTH(8)) U0_par_chk (
.CLK(CLK),
.RST(RST),
.parity_type(parity_type),
.sampled_bit(sampled_bit),
.Enable(par_chk_en), 
.P_DATA(P_DATA),
.par_err(parity_error)
);

stp_chk U0_stp_chk (
.CLK(CLK),
.RST(RST),
.sampled_bit(sampled_bit),
.Enable(stp_chk_en), 
.stp_err(framing_error)
);


endmodule
 
