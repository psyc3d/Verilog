module encode8_3(d,o);
input [7:0] d;
output [2:0] o;

assign o[0] = d[1]|d[3]|d[5]|d[7];
assign o[1] = d[2]|d[3]|d[6]|d[7];
assign o[2] = d[4]|d[5]|d[6]|d[7];

endmodule