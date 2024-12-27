module Imply (y2,y4,Sum);
  input y2,y4;
  output Sum;
  
  assign sum=((~y2)|y4);
  
endmodule
  
