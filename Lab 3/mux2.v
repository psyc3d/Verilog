module mux2(s,d,out);

input [1:0] d;
input s;
output out;
wire w1;
wire [1:0] w2;

not n1(w1,s);
and a1(w2[0],w1,d[0]);
and a2(w2[1],s,d[1]);

or o1(out,w2[0],w2[1]);

endmodule
