module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire [2:0] w20;

xor x1(sum,a,b,cin);

and a1(w20[0],a,b);
and a1(w20[1],cin,b);
and a1(w20[2],a,cin);

or o1(carry,w20[0],w20[1],w20[2]);

endmodule