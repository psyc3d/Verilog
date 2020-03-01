`include "mux2.v"

module mux8_2(s,d,out);
input [7:0] d;
input [2:0] s;
output out;
wire [3:0] w1;
wire [1:0] w2;

mux2 m1(s[2],d[1:0],w1[0]);
mux2 m2(s[2],d[3:2],w1[1]);
mux2 m3(s[2],d[5:4],w1[2]);
mux2 m4(s[2],d[7:6],w1[3]);
mux2 m5(s[1],w1[1:0],w2[0]);
mux2 m6(s[1],w1[3:2],w2[1]);
mux2 m7(s[0],w2[1:0],out);

endmodule