
module mux  (

 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  IN_0,
 input   wire                  IN_1,
 input   wire                  IN_2,
 input   wire                  IN_3,
 input   wire     [1:0]        SEL,
 output  reg                   OUT 

 );

reg              mux_out ;
 
always @ (*)
  begin
   case(SEL)
	2'b00 : begin                 
	         mux_out = IN_0 ;       
	        end
	2'b01 : begin
	         mux_out = IN_1 ;      
	        end	
	2'b10 : begin
	         mux_out = IN_2 ;       
	        end	
	2'b11 : begin
	         mux_out = IN_3 ;      
	        end		
	endcase        	   
  end
 

//register mux output
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    OUT <= 'b0 ;
   end
  else
   begin
    OUT <= mux_out ;
   end 
 end  
 
 
endmodule
 
