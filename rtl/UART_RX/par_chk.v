
module par_chk # ( parameter DATA_WIDTH = 8 )

(
 input   wire                   CLK,
 input   wire                   RST,
 input   wire                   parity_type, 
 input   wire                   sampled_bit,
 input   wire                   Enable,  
 input   wire  [DATA_WIDTH-1:0] P_DATA,
 output  reg                    par_err
);


reg        parity ;

// parity calc
always @ (*)
  begin
    case(parity_type)
    1'b0 : begin                 
	        parity <= ^P_DATA  ;     // Even Parity
	       end
    1'b1 : begin
	        parity <= ~^P_DATA ;     // Odd Parity
	       end		
    endcase       	 
 end 
 
           
// error check
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    par_err <= 1'b0 ;
   end
  else if(Enable)
   begin
    par_err <= parity ^	sampled_bit ;
   end	
 end
 

endmodule
 