module fa_tb();
reg I1,I2,I3;
wire sum,carry;


initial
begin
$dumpfile("fa_test.vcd");
$dumpvars(0,fa_tb);
end
fa u1(
    .a(I1),
    .b(I2),
    .cin(I3),
    .sum(sum),
    .carry(carry)
);

initial
begin

I1 = 0;
I2 = 0;
I3 = 0;
#10;
I1 = 1;
I2 = 0;
I3 = 0;
#10;
I1 = 0;
I2 = 1;
I3 = 0;
#10;
I1 = 1;
I2 = 1;
I3 = 0;
#10;
I1 = 0;
I2 = 0;
I3 = 1;
#10;
I1 = 1;
I2 = 0;
I3 = 1;
#10;
I1 = 0;
I2 = 1;
I3 = 1;
#10;
I1 = 1;
I2 = 1;
I3 = 1;
#10;

end

endmodule