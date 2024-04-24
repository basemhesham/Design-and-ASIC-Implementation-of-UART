
module deserializer # ( parameter DATA_WIDTH = 8 )

(
 input   wire                      CLK,
 input   wire                      RST,
 input   wire                      sampled_bit,
 input   wire                      Enable, 
 input   wire   [5:0]              edge_count, 
 input   wire   [5:0]              Prescale, 
 output  reg    [DATA_WIDTH-1:0]   P_DATA
);

              
//deserializer
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    P_DATA <= 'b0 ;
   end
  else if(Enable && edge_count == (Prescale - 6'b1))
   begin
    P_DATA <= {sampled_bit,P_DATA[7:1]}	;
   end	
 end
 

endmodule
 