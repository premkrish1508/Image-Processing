module Multiplier_Imply (a,b,f);
  input [7:0]a,b;
  output [15:0]f;
  
  assign f[0] = a[0]&b[0];
  
assign s1=(a[6]&b[0])^(a[5]&b[1]);
assign c1=(a[6]&b[0])&(a[5]&b[1]);
 
assign s2=(a[7]&b[0])^(a[6]&b[1])^(a[5]&b[2]);
assign c2=(((a[7]&b[0])^(a[6]&b[1]))&(a[5]&b[2]))|(a[7]&b[0]&a[6]&b[1]);
 
 
assign s3=(a[4]&b[3])^(a[3]&b[4]);
assign c3=(a[4]&b[3])&(a[3]&b[4]);
 
 
assign s4=(a[7]&b[1])^(a[6]&b[2])^(a[5]&b[3]);
assign c4=(((a[7]&b[1])^(a[6]&b[2]))&(a[5]&b[3]))|(a[7]&b[1]&a[6]&b[2]);
 
assign s5=(a[4]&b[4])^(a[3]&b[5]);
assign c5=(a[4]&b[4])&(a[3]&b[5]);
 
assign s6=(a[7]&b[2])^(a[6]&b[3])^(a[5]&b[4]);
assign c6=(((a[7]&b[2])^(a[6]&b[3]))&(a[5]&b[4]))|(a[7]&b[2]&a[6]&b[3]);
 
assign s7=(a[4]&b[0])^(a[3]&b[1]);
assign c7=(a[4]&b[0])&(a[3]&b[1]);
 
 
assign s8=(a[5]&b[0])^(a[4]&b[1])^(a[3]&b[2]);
assign c8=(((a[5]&b[0])^(a[4]&b[1]))&(a[3]&b[2]))|(a[5]&b[0]&a[4]&b[1]);
 
 
assign s9=(a[2]&b[3])^(a[1]&b[4]);
assign c9=(a[2]&b[3])&(a[1]&b[4]);
 
assign s10=s1^(a[4]&b[2])^(a[3]&b[3]);
assign c10=((s1^(a[4]&b[2]))&(a[3]&b[3]))|(s1&a[4]&b[2]);
 
 
assign s11=(a[2]&b[4])^(a[1]&b[5])^(a[0]&b[6]);
assign c11=(((a[2]&b[4])^(a[1]&b[5]))&(a[0]&b[6]))|(a[2]&b[4]&a[1]&b[5]);
 
assign s12=s2^s3^(a[2]&b[5]);
assign c12=((s2^s3)&(a[2]&b[5]))|(s2&s3);
 
assign s13=(a[1]&b[6])^(a[0]&b[7])^c1;
assign c13=(((a[1]&b[6])^(a[0]&b[7]))&c1)|(a[1]&b[6]&a[0]&b[7]);
 
assign s14=s4^s5^(a[2]&b[6]);
assign c14=((s4^s5)&(a[2]&b[6]))|(s4&s5);
 
assign s15=(a[1]&b[7])^c2^c3;
assign c15=(((a[1]&b[7])^c2)&c3)|((a[1]&b[7])&c2);
 
assign s16=s6^(a[4]&b[5])^(a[3]&b[6]);
assign c16=((s6^(a[4]&b[5]))&(a[3]&b[6]))|(s6&(a[4]&b[5]));
 
assign s17=(a[2]&b[7])^c4^c5;
assign c17=(((a[2]&b[7])^c4)&c5)|((a[2]&b[7])&c4);
 
assign s18=(a[7]&b[3])^(a[6]&b[4])^(a[5]&b[5]); 
assign c18=(((a[7]&b[3])^(a[6]&b[4]))&(a[5]&b[5]))|(a[7]&b[3]&a[6]&b[4]);
 
assign s19=(a[4]&b[6])^(a[3]&b[7])^c6;
assign c19=(((a[4]&b[6])^(a[3]&b[7]))&c6)|(a[4]&b[6]&a[3]&b[7]);
 
assign s20=(a[7]&b[4])^(a[6]&b[5])^(a[5]&b[6]);
assign c20=(((a[7]&b[4])^(a[6]&b[5]))&(a[5]&b[6]))|(a[7]&b[4]&a[6]&b[5]);
 
assign s21=(a[3]&b[0])^(a[2]&b[1]);
assign c21=(a[3]&b[0])&(a[2]&b[1]);

assign s22=s7^(a[3]&b[1])^(a[2]&b[2]);
assign c22=((s7^(a[3]&b[1]))&(a[2]&b[2]))|(s7&(a[3]&b[1]));
 
assign s23=s8^s9^(a[0]&b[5]);
assign c23=((s8^s9)&(a[0]&b[5]))|(s8&s9);
 
assign s24=s10^s11^c8; 
assign c24=((s10^s11)&c8)|(s10&s11);
 
assign s25=s12^s13^c10;
assign c25=((s12^s13)&c10)|(s12&s13);
 
assign s26=s14^s15^c12;
assign c26=((s14^s15)&c12)|(s14&s15);
 
assign s27=s16^s17^c14;
assign c27=((s16^s17)&c14)|(s16&s17);
 
assign s28=s18^s19^c16;
assign c28=((s18^s19)&c16)|(s18&s19);
 
assign s29=s20^(a[4]&b[7])^c18;
assign c29=((s20^(a[4]&b[7]))&c18)|(s20&(a[4]&b[7]));
 
assign s30=(a[7]&b[5])^(a[6]&b[6])^(a[5]&b[7]);
assign c30=(((a[7]&b[5])^(a[6]&b[6]))&(a[5]&b[7]))|(a[7]&b[5]&a[6]&b[6]);
 
 
assign s31=(a[2]&b[0])^(a[1]&b[1]);
assign c31=(a[2]&b[0])&(a[1]&b[1]);
 
 
assign s32=s21^(a[1]&b[2])^(a[0]&b[3]);
assign c32=((s21^(a[1]&b[2]))&(a[0]&b[3]))|(s21&(a[1]&b[2]));
 
 
assign s33=s22^(a[0]&b[4])^c21;
assign c33=((s22^(a[0]&b[4]))&c21)|(s22&(a[0]&b[4]));
 
 
assign s34=s23^c7^c22;
assign c34=((s23^c7)&c22)|(s23&c7);

 
assign s35=s24^c9^c23;
assign c35=((s24^c9)&c23)|(s24&c9);

 
assign s36=s25^c11^c24;
assign c36=((s25^c11)&c24)|(s25&c11);

 
assign s37=s26^c13^c25;
assign c37=((s26^c13)&c25)|(s26&c13);
 
 
assign s38=s27^c15^c26;
assign c38=((s27^c15)&c26)|(s27&c15);

 
assign s39=s28^c17^c27;
assign c39=((s28^c17)&c27)|(s28&c17);

 
assign s40=s29^c19^c28;
assign c40=((s29^c19)&c28)|(s29&c19);
 
 
assign s41=s30^c20^c29;
assign c41=((s30^c20)&c29)|(s30&c20);
 
 
assign s42=(a[7]&b[6])^(a[6]&b[7])^c30;
assign c42=(((a[7]&b[6])^(a[6]&b[7]))&c30)|((a[7]&b[6])&(a[6]&b[7]));
 
assign s43=(a[1]&b[0])^(a[0]&b[1]); 
assign c43=(a[1]&b[0])&(a[0]&b[1]);
 
 
assign f[1]= s43; 
 
assign s44=s31^(a[0]&b[2])^c43;
assign c44=((s31^(a[0]&b[2]))&c43)|(s31&(a[0]&b[2]));
 
 
assign f[2]=s44;
 
 
//assign s45=s32^c31^c44;
//assign c45=((s32^c31)&c44)|(s32&c31);

// 
Imply  M0 (.y2(s32),.y4(c31),.Sum(s45));
ECM N0 (.y1(s32),.y2(c31),.y3(c44),.y4(1'b0),.Out(c45)); 
assign f[3]=s45;
 
 
//assign s46=s33^c32^c45;
//assign c46=((s33^c32)&c45)|(s33&c32);

Imply  M1 (.y2(s33),.y4(c32),.Sum(s46));
ECM N1 (.y1(s33),.y2(c32),.y3(c45),.y4(1'b0),.Out(c46));

assign f[4]=s46;
 
 
//assign s47=s34^c33^c46;
//assign c47=((s34^c33)&c46)|(s34&c33);
ECM N2 (.y1(s34),.y2(c33),.y3(c46),.y4(1'b0),.Out(c47));
Imply  M2 (.y2(s34),.y4(c33),.Sum(s47));
 
 
assign f[5]=s47;
 
 
//assign s48=s35^c34^c47;
//assign c48=((s35^c34)&c47)|(s35&c34);
ECM N3 (.y1(s35),.y2(c34),.y3(c47),.y4(1'b0),.Out(c48)); 
Imply  M3 (.y2(s35),.y4(c34),.Sum(s48)); 
assign f[6]=s48;
 
 
assign s49=s36^c35^c48;
assign c49=((s36^c35)&c48)|(s36&c35);
//ECM N2 (.y1(s36),.y2(c35),.y3(c48),.y4(1'b0),.Out(c49));
//Imply  M2 (.y1(s36),.y2(c35),.y3(c48),.y4(1'b0),.Sum(s49)); 
 
assign f[7]=s49;
 
 
assign s50=s37^c36^c49;
assign c50=((s37^c36)&c49)|(s37&c36);

 
 
assign f[8]=s50;
 
 
assign s51=s38^c37^c50;
assign c51=((s38^c37)&c50)|(s38&c37);
 
 
assign f[9]=s51;
 
 
assign s52= s39^c38^c51;
assign c52=((s39^c38)&c51)|(s39&c38);
 
 
assign f[10]=s52;
 
 
assign s53= s40^c39^c52;
assign c53=((s40^c39)&c52)|(s40&c39);
 
 
assign f[11]=s53;
 
 
assign s54= s41^c40^c53;
assign c54=((s41^c40)&c53)|(s41&c40);
 
 
assign f[12]=s54;
 
 
assign s55= s42^c41^c54;
assign c55=((s42^c41)&c54)|(s42&c41);
 
assign f[13]=s55;
 
 
assign s56= (a[7]&b[7])^c42^c55;
 
assign c56=(((a[7]&b[7])^c42)&c55)|((a[7]&b[7])&c42);
  
assign f[14]=s56;
 
 
assign f[15]=c56;
 
 
 initial
 begin
   
     $dumpfile("UCCAC3.vcd");
     $dumpvars;
 
end		
  
 
endmodule
