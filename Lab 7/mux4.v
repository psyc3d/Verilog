module mux4(s,d1,d2,d3,d4,out);

input d1,d2,d3,d4;
input [1:0] s;
output out;
wire [1:0] w1;
wire [3:0] w2;

not n1(w1[0],s[0]);
not n1(w1[1],s[1]);

and a1(w2[0],w1[0],w1[1],d1);
and a2(w2[1],w1[0],s[1],d2);
and a3(w2[2],s[0],w1[1],d3);
and a4(w2[3],s[0],s[1],d4);

or o1(out,w2[0],w2[1],w2[2],w2[3]);

endmodule
