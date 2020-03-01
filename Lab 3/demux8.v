module demux8(in,s,d);

input in;
input [2:0] s;
output [7:0] d;

assign d[0] = ~s[2]&~s[1]&~s[0]&in; 
assign d[1] = ~s[2]&~s[1]&s[0]&in;
assign d[2] = ~s[2]&s[1]&~s[0]&in;
assign d[3] = ~s[2]&s[1]&s[0]&in;
assign d[4] = s[2]&~s[1]&~s[0]&in;
assign d[5] = s[2]&~s[1]&s[0]&in;
assign d[6] = s[2]&s[1]&~s[0]&in;
assign d[7] = s[2]&s[1]&s[0]&in;

endmodule