module decode8_3    (s,d);

input [2:0] s;
output [7:0] d;

assign d[0] = ~s[2]&~s[1]&~s[0]; 
assign d[1] = ~s[2]&~s[1]&s[0];
assign d[2] = ~s[2]&s[1]&~s[0];
assign d[3] = ~s[2]&s[1]&s[0];
assign d[4] = s[2]&~s[1]&~s[0];
assign d[5] = s[2]&~s[1]&s[0];
assign d[6] = s[2]&s[1]&~s[0];
assign d[7] = s[2]&s[1]&s[0];

endmodule