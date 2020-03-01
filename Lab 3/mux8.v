module mux8(s,d,out);

input [7:0] d;
input [2:0] s;
output out;
wire [2:0] w1;
wire [7:0] w2;

not n1(w1[0],s[0]);
not n2(w1[1],s[1]);
not n3(w1[2],s[2]);

and a1(w2[0],w1[0],w1[1],w1[2],d[0]);
and a2(w2[1],w1[0],w1[1],s[2],d[1]);
and a3(w2[2],w1[0],s[1],w1[2],d[2]);
and a4(w2[3],w1[0],s[1],s[2],d[3]);
and a5(w2[4],s[0],w1[1],w1[2],d[4]);
and a6(w2[5],s[0],w1[1],s[2],d[5]);
and a7(w2[6],s[0],s[1],w1[2],d[6]);
and a8(w2[7],s[0],s[1],s[2],d[7]);

or o1(out,w2[0],w2[1],w2[2],w2[3],w2[4],w2[5],w2[6],w2[7]);

endmodule
