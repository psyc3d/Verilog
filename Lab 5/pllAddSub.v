`include "fa.v"

module pllAddSub(a,b,chk,sum,c);

input [3:0] a,b;
input chk;

output [3:0] c;
output [3:0] sum;
wire [3:0] b1;

xor x1(b1[0],chk,b[0]);
xor x2(b1[1],chk,b[1]);
xor x3(b1[2],chk,b[2]);
xor x4(b1[3],chk,b[3]);

fa k1(a[0],b1[0],chk,sum[0],c[0]);
fa k2(a[1],b1[1],c[0],sum[1],c[1]);
fa k3(a[2],b1[2],c[1],sum[2],c[2]);
fa k4(a[3],b1[3],c[2],sum[3],c[3]);


endmodule
