module srff(s,r,clk,q,p);

input s,r,clk;
output q,p;

wire a,b;

nand n1(a,s,clk);
nand n2(b,r,clk);

nand n3(q,p,a);
nand n4(p,q,b);

endmodule

