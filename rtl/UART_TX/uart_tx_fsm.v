
module uart_tx_fsm  (

 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  Data_Valid, 
 input   wire                  ser_done, 
 input   wire                  parity_enable, 
 output  reg                   Ser_enable,
 output  reg     [1:0]         mux_sel, 
 output  reg                   busy
);


// gray state encoding
parameter   [2:0]      IDLE   = 3'b000,
                       start  = 3'b001,
					   data   = 3'b011,
					   parity = 3'b010,
					   stop   = 3'b110 ;

reg         [2:0]      current_state , next_state ;
			

reg                    busy_c ;
			
//state transiton 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    current_state <= IDLE ;
   end
  else
   begin
    current_state <= next_state ;
   end
 end
 

// next state logic
always @ (*)
 begin
  case(current_state)
  IDLE   : begin
            if(Data_Valid)
			 next_state = start ;
			else
			 next_state = IDLE ; 			
           end
  start  : begin
			 next_state = data ;  
           end
  data   : begin
            if(ser_done)
			 begin
			  if(parity_enable)
			   next_state = parity ;
              else
			   next_state = stop ;			  
			 end
			else
			 next_state = data ; 			
           end
  parity : begin
			 next_state = stop ; 
           end
  stop   : begin
			 next_state = IDLE ; 			
           end	
  default: begin
			 next_state = IDLE ; 
           end	
  endcase                 	   
 end 

 
// output logic
always @ (*)
 begin
     Ser_enable = 1'b0 ;
     mux_sel = 2'b00 ;	
     busy_c = 1'b0 ;
  case(current_state)
  IDLE   : begin
			Ser_enable = 1'b0 ;
            mux_sel = 2'b11 ;	
            busy_c = 1'b0 ;									
           end
  start  : begin
			Ser_enable = 1'b0 ;  
            busy_c = 1'b1 ;
            mux_sel = 2'b00 ;	
           end
  data   : begin 
			Ser_enable = 1'b1 ;    
            busy_c = 1'b1 ;
            mux_sel = 2'b01 ;	
            if(ser_done)
			 Ser_enable = 1'b0 ;  
			else
 			 Ser_enable = 1'b1 ;              			 
           end
  parity : begin
            busy_c = 1'b1 ;
            mux_sel = 2'b10 ;	
           end
  stop   : begin
            busy_c = 1'b1 ;
            mux_sel = 2'b11 ;			
           end		
  default: begin
            busy_c = 1'b0 ;
			Ser_enable = 1'b0 ;
            mux_sel = 2'b00 ;		
           end	
  endcase         	              
 end 
 
 

//register output 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    busy <= 1'b0 ;
   end
  else
   begin
    busy <= busy_c ;
   end
 end
  

endmodule
 
