module parity_calc # ( parameter WIDTH = 8 )

(
 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  parity_enable,
 input   wire                  parity_type,
 input   wire                  Busy, 
 input   wire   [WIDTH-1:0]    DATA,
 input   wire                  Data_Valid,
 output  reg                   parity 
);

reg  [WIDTH-1:0]    DATA_V ;

//isolate input 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    DATA_V <= 'b0 ;
   end
  else if(Data_Valid && !Busy)
   begin
    DATA_V <= DATA ;
   end 
 end
 

always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    parity <= 'b0 ;
   end
  else
   begin
    if (parity_enable)
	 begin
	  case(parity_type)
	  1'b0 : begin                 
	          parity <= ^DATA_V  ;     // Even Parity
	         end
	  1'b1 : begin
	          parity <= ~^DATA_V ;     // Odd Parity
	         end		
	  endcase       	 
	 end
   end
 end 


endmodule
 