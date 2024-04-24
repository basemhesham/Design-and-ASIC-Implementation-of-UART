
module strt_chk (
 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  sampled_bit,
 input   wire                  Enable, 
 output  reg                   strt_glitch
);

 
              
// error check
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    strt_glitch <= 'b0 ;
   end
  else if(Enable)
   begin
    strt_glitch <= sampled_bit ;
   end
 end
 

 
endmodule