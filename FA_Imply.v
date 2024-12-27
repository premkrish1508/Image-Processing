module FullAdder_Imply (A, B, Cin, Sum, Cout);
  input A, B, Cin;
  output Sum, Cout;
  
  wire AxorB, AxorB_and_Cin, AandB;
  
  // XOR using Imply gates
  wire nA, nB;
  wire imply_AB, imply_BA;
  
  Imply imply1 (.a(A), .b(B), .r(imply_AB));
  Imply imply2 (.a(B), .b(A), .r(imply_BA));
  assign AxorB = imply_AB & imply_BA;

  // Sum = A XOR B XOR Cin
  wire nAxorB, imply_AxorB_Cin, imply_Cin_AxorB;
  assign nAxorB = ~AxorB;
  Imply imply3 (.a(AxorB), .b(Cin), .r(imply_AxorB_Cin));
  Imply imply4 (.a(Cin), .b(AxorB), .r(imply_Cin_AxorB));
  assign Sum = imply_AxorB_Cin & imply_Cin_AxorB;

  // Carry-out (Cout)
  assign AandB = A & B;
  assign AxorB_and_Cin = AxorB & Cin;
  assign Cout = AandB | AxorB_and_Cin;
  
endmodule

module Imply (a, b, r);
  input a, b;
  output r;
  
  assign r = (~a) | b;
endmodule