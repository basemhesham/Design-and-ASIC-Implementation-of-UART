
module UART_TX  # (parameter DATA_WIDTH = 8)
(
 input   wire                         CLK,
 input   wire                         RST,
 input   wire    [DATA_WIDTH-1:0]     P_DATA,
 input   wire                         Data_Valid,
 input   wire                         parity_enable,
 input   wire                         parity_type, 
 output  wire                         TX_OUT,
 output  wire                         busy

 );

wire          seriz_en    , 
              seriz_done  ,
		 	  ser_data    ,
		 	  parity      ;
			
wire  [1:0]   mux_sel ;
 
uart_tx_fsm  U0_fsm (
.CLK(CLK),
.RST(RST),
.Data_Valid(Data_Valid), 
.parity_enable(parity_enable),
.ser_done(seriz_done), 
.Ser_enable(seriz_en),
.mux_sel(mux_sel), 
.busy(busy)
);

Serializer # (.WIDTH(DATA_WIDTH)) U0_Serializer (
.CLK(CLK),
.RST(RST),
.DATA(P_DATA),
.Busy(busy),
.Enable(seriz_en), 
.Data_Valid(Data_Valid), 
.ser_out(ser_data),
.ser_done(seriz_done)
);

mux U0_mux (
.CLK(CLK),
.RST(RST),
.IN_0(1'b0),
.IN_1(ser_data),
.IN_2(parity),
.IN_3(1'b1),
.SEL(mux_sel),
.OUT(TX_OUT) 
);

parity_calc # (.WIDTH(DATA_WIDTH)) U0_parity_calc (
.CLK(CLK),
.RST(RST),
.parity_enable(parity_enable),
.parity_type(parity_type),
.DATA(P_DATA),
.Busy(busy),
.Data_Valid(Data_Valid), 
.parity(parity)
); 



endmodule
 