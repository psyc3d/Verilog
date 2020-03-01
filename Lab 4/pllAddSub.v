`include "fa.v"

module pllAddSub(a,b,cin,sum,c);

input [3:0] a,b;
input cin;

output [3:0] c;
output [3:0] sum;
wire [3:0] b1;

xor x1(b1[0],cin,b[0]);
xor x2(b1[1],cin,b[1]);
xor x3(b1[2],cin,b[2]);
xor x4(b1[3],cin,b[3]);

fa f1(a[0],b1[0],cin,sum[0],c[0]);
fa f2(a[1],b1[1],c[0],sum[1],c[1]);
fa f3(a[2],b1[2],c[1],sum[2],c[2]);
fa f4(a[3],b1[3],c[2],sum[3],c[3]);

xor c1(c[3],cin,c[3]);

endmodule
