`timescale 1 ns/100 ps
module bcd27seg (output a, b, c, d, e, f, g, input [3:0] BCD, common_cathode);
wire nB2nB0, B2B0, nB1nB0, B1B0, nB2B1, B1nB0, B2nB1, B2nB0, B2nB1B0;
wire [3:0] nBCD;
wire ncommon_cathode;
wire A, nA, B, nB, C, nC, D, nD, E, nE, F, nF, G, nG;
wire X0, Y0, X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5, X6, Y6;
  
not (nBCD, BCD);
not(ncommon_cathode, common_cathode);
and (B2nB1B0, BCD[2], nBCD[1], BCD[0]);
and (nB2nB0, nBCD[2], nBCD[0]);
and (nB1nB0, nBCD[1], nBCD[0]);
and (nB2B1, nBCD[2], BCD[1]);
and (B2nB1, BCD[2], nBCD[1]);
and (B2nB0, BCD[2], nBCD[0]);
and (B1nB0, BCD[1], nBCD[0]);
and (B2B0, BCD[2], BCD[0]);
and (B1B0, BCD[1], BCD[0]);
  
or (A, BCD[3], BCD[1], nB2nB0, B2B0);
not(nA, A);
or (B, nBCD[2], nB1nB0 , B1B0);
not(nB, B);
or (C, BCD[2], nBCD[1], BCD[0]);
not(nC, C);
or (D, BCD[3], nB2nB0 , nB2B1 , B1nB0, B2nB1B0);
not(nD, D);
or (E, nB2nB0 , B1nB0);
not(nE, E);
or (F, BCD[3], nB1nB0 , B2nB1, B2nB0);
not(nF, F);
or (G, BCD[3], B1nB0 , nB2B1 , B2nB1);
not(nG, G);

and(X0, nA, ncommon_cathode);
and(Y0, A, common_cathode);
or(a, X0, Y0);
and(X1, nB, ncommon_cathode);
and(Y1, B, common_cathode);
or(b, X1, Y1);
and(X2, nC, ncommon_cathode);
and(Y2, C, common_cathode);
or(c, X2, Y2);
and(X3, nD, ncommon_cathode);
and(Y3, D, common_cathode);
or(d, X3, Y3);
and(X4, nE, ncommon_cathode);
and(Y4, E, common_cathode);
or(e, X4, Y4);
and(X5, nF, ncommon_cathode);
and(Y5, F, common_cathode);
or(f, X5, Y5);
and(X6, nG, ncommon_cathode);
and(Y6, G, common_cathode);
or(g, X6, Y6);
endmodule
