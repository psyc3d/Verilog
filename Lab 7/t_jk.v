`include "jkff.v"

module t_jk(t,clk,q,qbar);

input t,clk;
output q,qbar;

jkff f1(t,t,clk,q,qbar);

endmodule