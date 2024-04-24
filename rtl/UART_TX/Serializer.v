
module Serializer # ( parameter WIDTH = 8 )

(
 input   wire                  CLK,
 input   wire                  RST,
 input   wire   [WIDTH-1:0]    DATA,
 input   wire                  Enable, 
 input   wire                  Busy,
 input   wire                  Data_Valid, 
 output  wire                  ser_out,
 output  wire                  ser_done
);

reg  [WIDTH-1:0]    DATA_V ;
reg  [2:0]          ser_count ;
              
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
  else if(Enable)
   begin
    DATA_V <= DATA_V >> 1 ;         // shift register
   end
 end
 

//counter
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    ser_count <= 'b0 ;
   end
  else
   begin
    if (Enable)
	 begin
      ser_count <= ser_count + 'b1 ;		 
	 end
	else 
	 begin
      ser_count <= 'b0 ;		 
	 end	
   end
 end 

assign ser_done = (ser_count == 'b111) ? 1'b1 : 1'b0 ;

assign ser_out = DATA_V[0] ;

endmodule
 