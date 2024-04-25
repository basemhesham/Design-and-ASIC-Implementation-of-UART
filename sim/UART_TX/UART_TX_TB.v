
`timescale 1ns/1ps


module UART_TX_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter DATA_WD_TB = 8 ;      
parameter CLK_PERIOD = 10 ; 


/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////


reg                  		CLK_TB;
reg                  		RST_TB;
reg     [DATA_WD_TB-1:0]    P_DATA_TB;
reg                  		Data_Valid_TB;
reg                 		parity_enable_TB;
reg                 		parity_type_TB; 
wire                		TX_OUT_TB;
wire                		busy_TB;



////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

initial
 begin

 // Initialization
 initialize() ;

 // Reset
 reset() ; 


 ////////////// Test Case 1 (No Parity) //////////////////

 // UART Configuration (Parity Enable = 0)
 UART_CONFG (1'b0,1'b0);

 // Load Data 
 DATA_IN(8'hA3);  

 // Check Output
 chk_tx_out(8'hA3,0,0,0) ;

 #2000
 
 ////////////// Test Case 2 (Even Parity) ////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 0)
 UART_CONFG (1'b1,1'b0);

 // Load Data 
 DATA_IN(8'hB4);  

 // Check Output
 chk_tx_out(8'hB4,1,0,1) ;
 
 #2000
 
 ////////////// Test Case 3 (Odd Parity) ////////////////

 // UART Configuration (Parity Enable = 1 && Parity Type = 1)
 UART_CONFG (1'b1,1'b1);

 // Load Data 
 DATA_IN(8'hD2);  

 // Check Output
 chk_tx_out(8'hD2,1,1,2) ; 

  #2000

$stop ;

end
 
 

///////////////////// Clock Generator //////////////////

always #(CLK_PERIOD/2) CLK_TB = ~CLK_TB ;

////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize ;
  begin
	CLK_TB            = 1'b0   ;
	RST_TB            = 1'b1   ;    // rst is deactivated
	P_DATA_TB         = 8'h00  ;
	parity_enable_TB  = 1'b0   ;
	parity_type_TB    = 1'b0   ;
	Data_Valid_TB     = 1'b0   ;
  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(CLK_PERIOD)
	RST_TB  = 'b0;           // rst is activated
	#(CLK_PERIOD)
	RST_TB  = 'b1;
	#(CLK_PERIOD) ;
  end
endtask

///////////////////// Configuration ////////////////////
task UART_CONFG ;
  input                   PAR_EN ;
  input                   PAR_TYP ;

  begin
	parity_enable_TB  = PAR_EN   ;
	parity_type_TB    = PAR_TYP   ;
  end
endtask

/////////////////////// Data IN /////////////////////////
task DATA_IN ;
 input  [DATA_WD_TB-1:0]  DATA ;

 begin
	P_DATA_TB         = DATA  ;
	Data_Valid_TB     = 1'b1   ;
	#CLK_PERIOD
	Data_Valid_TB     = 1'b0   ;
 end
endtask

//////////////////  Check Output  ////////////////////
task chk_tx_out ;
 input  [DATA_WD_TB-1:0]  		DATA    ;
 input                          PAR_EN  ; 
 input                          PAR_TYP ; 
 input  [2:0]                   Test_NUM;
 
 reg    [10:0]  gener_out ,expec_out;     //longest frame = 11 bits (1-start,1-stop,8-data,1-parity)
 reg            parity_bit;
 
 integer   i  ;

 begin
 
	@(posedge busy_TB)
	for(i=0; i<11; i=i+1)
		begin
		@(negedge CLK_TB) gener_out[i] = TX_OUT_TB ;
		end
		
    if(parity_enable_TB)
		if(parity_type_TB)
			parity_bit = ~^DATA ;
		else
			parity_bit = ^DATA ;
	else
			parity_bit = 1'b1 ;	
	
    if(parity_enable_TB)
		expec_out = {1'b1,parity_bit,DATA,1'b0} ;
	else
		expec_out = {1'b1,1'b1,DATA,1'b0} ;
			
	if(gener_out == expec_out) 
		begin
			$display("Test Case %d is succeeded",Test_NUM);
		end
	else
		begin
			$display("Test Case %d is failed", Test_NUM);
		end
 end
endtask
///////////////// Design Instaniation //////////////////
UART_TX DUT (
.CLK(CLK_TB),
.RST(RST_TB),
.P_DATA(P_DATA_TB),
.Data_Valid(Data_Valid_TB),
.parity_enable(parity_enable_TB),
.parity_type(parity_type_TB),
.TX_OUT(TX_OUT_TB), 
.busy(busy_TB)
);

endmodule