module FullAdder_Testbench;

  // Inputs
  reg A;
  reg B;
  reg Cin;

  // Outputs
  wire Sum;    
  wire Cout;

  // Instantiate the FullAdder module
  FullAdder_Imply  uut (
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .Sum(Sum), 
    .Cout(Cout)
  );

  initial begin
    // Display header for easier readability
    $display("A B Cin | Sum Cout | Expected Sum Cout");
    $display("----------------------------------------");

    // Apply all input combinations
    A = 0; B = 0; Cin = 0; #10;
    $display("%b %b  %b  |  %b    %b   |     0    0", A, B, Cin, Sum, Cout);
    
    A = 0; B = 0; Cin = 1; #10;
    $display("%b %b  %b  |  %b    %b   |     1    0", A, B, Cin, Sum, Cout);
    
    A = 0; B = 1; Cin = 0; #10;
    $display("%b %b  %b  |  %b    %b   |     1    0", A, B, Cin, Sum, Cout);
    
    A = 0; B = 1; Cin = 1; #10;
    $display("%b %b  %b  |  %b    %b   |     0    1", A, B, Cin, Sum, Cout);
    
    A = 1; B = 0; Cin = 0; #10;
    $display("%b %b  %b  |  %b    %b   |     1    0", A, B, Cin, Sum, Cout);
    
    A = 1; B = 0; Cin = 1; #10;
    $display("%b %b  %b  |  %b    %b   |     0    1", A, B, Cin, Sum, Cout);
    
    A = 1; B = 1; Cin = 0; #10;
    $display("%b %b  %b  |  %b    %b   |     0    1", A, B, Cin, Sum, Cout);
    
    A = 1; B = 1; Cin = 1; #10;
    $display("%b %b  %b  |  %b    %b   |     1    1", A, B, Cin, Sum, Cout);

    $finish;
  end

endmodule
