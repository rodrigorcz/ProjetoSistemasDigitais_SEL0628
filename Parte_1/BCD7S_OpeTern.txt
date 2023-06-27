// Write your modules here!
module or_gate12(input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11, output a);
  or g1 (a,x0,x1, x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
endmodule

module or_gate10(input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9, output b);
  or g1 (b,x0,x1, x2,x3,x4,x5,x6,x7,x8,x9);
endmodule

module or_gate8(input x0,x1,x2,x3,x4,x5,x6,x7, output cf);
  or g1 (cf,x0,x1, x2,x3,x4,x5,x6,x7);
endmodule

module or_gate14(input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13, output dg);
  or g1 (dg,x0,x1, x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
endmodule

module or_gate11(input x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10, output e);
  or g1 (e,x0,x1, x2,x3,x4,x5,x6,x7,x8,x9,x10);
endmodule

module andgate02(input x0,x1, output y1);
  and g1(y1,x0,x1);
endmodule

module andgate03(input x0,x1,x2, output y2);
  and g1(y2,x0,x1,x2);
endmodule

module andgate04(input x0,x1,x2,x3, output y3);
  and g1(y3,x0,x1,x2,x3);
endmodule

module decoder(input bit0,bit1,bit2,bit3,t, output a,b,c,d,e,f,g);
  wire nbit3, nbit2, nbit1, nbit0, nt;
  
  not n1(nbit3,bit3);
  not n2(nbit2,bit2);
  not n3(nbit1,bit1);
  not n4(nbit0,bit0);
  not n5(nt,t);
  
  andgate03 u1(nbit3,bit2,bit0,a);
  
endmodule

