module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1;
wire [2:0] w2;
wire w3;

xor x1(sum,a,b,cin);
//xor x2(sum,w1,cin);

and a1(w2[0],a,b);
and a1(w2[1],cin,b);
and a1(w2[2],a,cin);

or o1(carry,w2[0],w2[1],w2[2]);

endmodule