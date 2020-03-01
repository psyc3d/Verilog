`include "mux4.v"
`include "mux2.v"

module mux8_4(s,d,out);
input [7:0] d;
input [2:0] s;
output out;
wire [1:0] w;

mux4 m1(s[2:1],d[7:4],w[0]);
mux4 m2(s[2:1],d[3:0],w[1]);

mux2 m3(s[0],w[1:0],out);

endmodule