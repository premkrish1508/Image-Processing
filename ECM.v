module ECM (y1,y2,y3,y4,Out);
  input y1,y2,y3,y4;
  output Out;
  wire XX1,XX2;
  

  assign XX1=y1|y2;
  
  assign XX2=y3|y4;
  
  assign Out=XX1&XX2;
  
endmodule  
  

  

  
  
  
  
  
  

  
  
  
  
  
  
  
  

