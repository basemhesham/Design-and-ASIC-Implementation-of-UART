
module data_sampling (
 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  S_DATA,
 input   wire   [5:0]          Prescale,
 input   wire   [5:0]          edge_count,
 input   wire                  Enable, 
 output  reg                   sampled_bit
);

              
reg  [2:0]    Samples ;

wire [4:0]    half_edges ,
              half_edges_p1 ,
			  half_edges_n1 ;


assign 	half_edges    = (Prescale >> 1) - 'b1 ;
assign 	half_edges_p1 =  half_edges + 'b1 ;
assign 	half_edges_n1 =  half_edges - 'b1 ;
		  			  

always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    Samples <= 'b0 ;
   end
  else 
   begin
    if(Enable) 
	 begin
	  if(edge_count == half_edges_n1)
       begin
        Samples[0] <= S_DATA ;
       end	
      else if(edge_count == half_edges)
       begin
        Samples[1] <= S_DATA ;
       end	
      else if(edge_count == half_edges_p1)
       begin
        Samples[2] <= S_DATA ;
       end
     end
    else
     begin
      Samples <= 'b0 ;
     end 
   end	 
 end
 

//decision 
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    sampled_bit <= 'b0 ;
   end
  else
   begin
    if(Enable) 
	 begin
      case (Samples)
      3'b000 : begin
                sampled_bit <= 1'b0 ;
               end	
      3'b001 : begin
                sampled_bit <= 1'b0 ;
               end
      3'b010 : begin
                sampled_bit <= 1'b0 ;
               end	
      3'b011 : begin
                sampled_bit <= 1'b1 ;
               end	
      3'b100 : begin
                sampled_bit <= 1'b0 ;
               end
      3'b101 : begin
                sampled_bit <= 1'b1 ;
               end	
      3'b110 : begin
                sampled_bit <= 1'b1 ;
               end
      3'b111 : begin
                sampled_bit <= 1'b1 ;
               end
      endcase
     end
    else
     begin
       sampled_bit <= 1'b0 ;
     end	 
   end
 end 


endmodule
 