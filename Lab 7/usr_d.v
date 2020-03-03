`include "mux4.v"
`include "dff.v"

module usr_d(a,rs,ls,clk,s,out);

input [3:0] a;
input rs,ls,clk;
input [1:0] s;

output [3:0] out;

wire [3:0] w; //to store qbar
wire [3:0] o; //output of mux

mux4 m1(s,out[0],out[1],rs,a[0],o[0]);
mux4 m2(s,out[1],out[2],out[0],a[1],o[1]);
mux4 m3(s,out[2],out[3],out[1],a[2],o[2]);
mux4 m4(s,out[3],out[0],ls,a[3],o[3]);

dff d1(o[0],out[0],w[0],clk);
dff d2(o[1],out[1],w[1],clk);
dff d3(o[2],out[2],w[2],clk);
dff d4(o[3],out[3],w[3],clk);

endmodule