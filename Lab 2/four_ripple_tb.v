module four_ripple_tb();
reg [3:0] I1,I2;
reg I3;

wire [3:0] s;
wire carry;

initial
begin
$dumpfile("four_ripple_test.vcd");
$dumpvars(0,four_ripple_tb);
end
four_ripple r1(
    .a(I1),
    .b(I2),
    .cin(I3),
    .s(s),
    .carry(carry));
initial
begin

I1 = 4'b 0000;
I2 = 4'b 0000;
I3 = 0;
#10;
I1 = 4'b 0001;
I2 = 4'b 0001;
I3 = 0;
#10;
I1 = 4'b 0010;
I2 = 4'b 0100;
I3 = 1;
#10;
I1 = 4'b 1111;
I2 = 4'b 1111;
I3 = 0;
#10;
I1 = 4'b 0101;
I2 = 4'b 0110;
I3 = 1;
#10;
end

endmodule