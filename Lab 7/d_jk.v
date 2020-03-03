`include "jkff.v"
module d_jk(d,q,qbar,clk);

input d,clk;
output q,qbar;

wire w;

not(w,d);

jkff j1(d,w,clk,q,qbar);

endmodule