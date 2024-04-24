module edge_bit_counter 
(
 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  Enable,
 input   wire  [5:0]           Prescale, 
 output  reg   [3:0]           bit_count,
 output  reg   [5:0]           edge_count 
);



wire                           edge_count_done ;

  
//edge counter 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    edge_count <= 'b0 ;
   end
  else if(Enable)
   begin
    if (edge_count_done)
	 begin
      edge_count <= 'b0 ;
	 end
	else
	 begin
      edge_count <= edge_count + 'b1 ;
	 end	
   end 
  else
   begin
    edge_count <= 'b0 ;
   end   
 end
 
assign edge_count_done = (edge_count == (Prescale - 6'b1)) ? 1'b1 : 1'b0 ; 


// bit counter 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    bit_count <= 'b0 ;
   end
  else if(Enable)
   begin
    if (edge_count_done)
	 begin
      bit_count <= bit_count + 'b1 ;
	 end
   end 
  else
   begin
    bit_count <= 'b0 ;
   end	
 end 



 
endmodule
 