
module stp_chk (
 input   wire                  CLK,
 input   wire                  RST,
 input   wire                  sampled_bit,
 input   wire                  Enable, 
 output  reg                   stp_err
);

 
              
// error check
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    stp_err <= 'b0 ;
   end
  else if(Enable)
   begin
    stp_err <= 1'b1 ^ sampled_bit ;
   end
 end
 

 
endmodule