
`timescale 1ns/1ps

module UART_RX_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter DATA_WIDTH = 8 ;  
parameter RX_CLK_PERIOD = 10 ; 

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg                         RX_CLK_TB;
reg                         RST_TB;
reg                         RX_IN_TB;
reg   [5:0]                 Prescale_TB;
reg                         parity_enable_TB;
reg                         parity_type_TB;
wire  [DATA_WIDTH-1:0]      P_DATA_TB; 
wire                        data_valid_TB;
wire                        parity_error_TB;
wire                        framing_error_T;

reg                         TX_CLK_TB;

////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

initial
 begin

 // Initialization
 initialize() ;

 // Reset
 reset() ; 

 ////////////// Test Case 1 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1 && Prescale = 32)
 UART_CONFG (1'b1,1'b1,6'd32);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,1) ;
 
 ////////////// Test Case 2 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 0 && Prescale = 32)
 UART_CONFG (1'b1,1'b0,6'd32);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,2) ;
 
 ////////////// Test Case 3 //////////////////

 // UART Configuration (Parity Enable = 0 && Parity Type = 0 && Prescale = 32)
 UART_CONFG (1'b0,1'b0,6'd32);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,3) ;
 
 ////////////// Test Case 4 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1 && Prescale = 16)
 UART_CONFG (1'b1,1'b1,6'd16);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,4) ;
 
 ////////////// Test Case 5 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 0 && Prescale = 32)
 UART_CONFG (1'b1,1'b0,6'd16);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,5) ;
 
  ////////////// Test Case 6 //////////////////

 // UART Configuration (Parity Enable = 0 && Parity Type = 0 && Prescale = 16)
 UART_CONFG (1'b0,1'b0,6'd16);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,6) ;
 
  ////////////// Test Case 7 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1 && Prescale = 8)
 UART_CONFG (1'b1,1'b1,6'd8);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,7) ;
 
  ////////////// Test Case 8 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1 && Prescale = 8)
 UART_CONFG (1'b1,1'b0,6'd8);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,8) ;
 
 ////////////// Test Case 9 //////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1 && Prescale = 8)
 UART_CONFG (1'b0,1'b0,6'd8);
 
 // Load Data 
 DATA_IN(8'hBB);  

 // Check Output
 chk_rx_out(8'hBB,9) ;
 
#4000

$stop ;

end
 
///////////////////// Clock Generator //////////////////

always #(RX_CLK_PERIOD/2) RX_CLK_TB = ~RX_CLK_TB ;

always #(Prescale_TB*RX_CLK_PERIOD/2) TX_CLK_TB = ~TX_CLK_TB ;

////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize ;
  begin
	RX_CLK_TB         = 1'b0      ;
	TX_CLK_TB         = 1'b0      ;
	RST_TB            = 1'b1      ;    // rst is deactivated
	Prescale_TB       = 6'b100000 ;    // prescale = 32
	parity_enable_TB  = 1'b1      ;
	parity_type_TB    = 1'b0      ;
	RX_IN_TB          = 1'b1      ;
  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(RX_CLK_PERIOD)
	RST_TB  = 'b0;           // rst is activated
	#(RX_CLK_PERIOD)
	RST_TB  = 'b1;
	#(RX_CLK_PERIOD) ;
  end
endtask

///////////////////// Configuration ////////////////////
task UART_CONFG ;
  input                   PAR_EN ;
  input                   PAR_TYP ;
  input    [5:0]          PRESCALE;

  begin
	parity_enable_TB  = PAR_EN   ;
	parity_type_TB    = PAR_TYP  ;
	Prescale_TB       = PRESCALE ;    	
  end
endtask

/////////////////////// Data IN /////////////////////////
task DATA_IN ;
 input  [DATA_WIDTH-1:0]  DATA ;

 integer   i  ;
 
 begin
	
	@ (posedge TX_CLK_TB)  
	RX_IN_TB <= 1'b0 ;              // start_bit

	for(i=0; i<8; i=i+1)
		begin
		@(posedge TX_CLK_TB) 		
		RX_IN_TB <= DATA[i] ;       // data bits
		end 

	if(parity_enable_TB)
		begin
			@ (posedge TX_CLK_TB) 
			case(parity_type_TB)
			1'b0 : RX_IN_TB <= ^DATA  ;     // Even Parity
			1'b1 : RX_IN_TB <= ~^DATA ;     // Odd Parity
			endcase	
		end
	
	@ (posedge TX_CLK_TB) 
	RX_IN_TB <= 1'b1 ;              // stop_bit
	
 end
endtask


//////////////////  Check Output  ////////////////////
task chk_rx_out ;
 input  [DATA_WIDTH-1:0]  		expec_out    ;
 input  [4:0]                   Test_NUM;
  
 begin
 
	@(posedge data_valid_TB)	
	if(P_DATA_TB == expec_out) 
		begin
			$display("Test Case %d is succeeded",Test_NUM,);
		end
	else
		begin
			$display("Test Case %d is failed", Test_NUM);
		end
 end
endtask
 
//////////////////////////////////////////////////////// 
///////////////// Design Instaniation //////////////////
////////////////////////////////////////////////////////

UART_RX DUT (
.CLK(RX_CLK_TB),
.RST(RST_TB),
.RX_IN(RX_IN_TB),
.Prescale(Prescale_TB),
.parity_enable(parity_enable_TB),
.parity_type(parity_type_TB),
.P_DATA(P_DATA_TB), 
.data_valid(data_valid_TB),
.parity_error(parity_error_TB),
.framing_error(framing_error_TB)
);

endmodule