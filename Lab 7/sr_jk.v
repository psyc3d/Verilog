`include "jkff.v"

module sr_jk(s,r,clk,q,qbar);
input s,r,clk;
output q,qbar;

jkff j1(s,r,clk,q,qbar);
endmodule