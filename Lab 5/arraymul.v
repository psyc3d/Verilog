`include "fa.v"

module arraymul(a,b,out);
input [3:0] a,b;
output [7:0] out;

wire [1:0] w1;
wire [4:0] w2;
wire [7:0] w3,w4;
wire [5:0] w5;
wire [2:0] w6;

wire c = 1'b 0;


and a1(out[0],a[0],b[0]);


and a2(w1[0],a[0],b[1]);
and a3(w1[1],a[1],b[0]);

fa f1(w1[0],w1[1],c,out[1],w2[0]);

and a4(w2[1],a[2],b[0]);
and a5(w2[2],a[1],b[1]);
and a6(w2[3],a[0],b[2]);

fa f2(w2[1],w2[2],c,w2[4],w3[0]);
fa f3(w2[3],w2[4],w2[0],out[2],w3[1]);

and a7(w3[2],a[0],b[3]);
and a8(w3[3],a[1],b[2]);
and a9(w3[4],a[2],b[1]);
and a9(w3[5],a[3],b[0]);

fa f4(w3[2],w3[3],c,w3[6],w4[0]);
fa f5(w3[4],w3[6],w3[0],w3[7],w4[1]);
fa f6(w3[5],w3[7],w3[1],out[3],w4[2]);

and a11(w4[3],a[1],b[3]);
and a12(w4[4],a[2],b[2]);
and a13(w4[5],a[3],b[1]);

fa f7(w4[3],w4[4],w4[0],w4[6],w5[0]);
fa f8(w4[5],w4[6],w4[1],w4[7],w5[1]);
fa f9(c,w4[7],w4[2],out[4],w5[2]);


and a14(w5[3],a[2],b[3]);
and a15(w5[4],a[3],b[2]);

fa f10(w5[3],w5[4],w5[0],w5[5],w6[0]);
fa f11(w5[2],w5[5],w5[1],out[5],w6[1]);

and a16(w6[2],a[3],b[3]);

fa f12(w6[2],w6[0],w6[1],out[6],out[7]);


endmodule