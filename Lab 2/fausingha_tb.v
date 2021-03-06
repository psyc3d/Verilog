module fausingha_tb(a,b,sum,carry);
reg I1,I2;

input a,b;
output sum,carry;

initial
begin
$dumpfile("fausingha_test.vcd");
$dumpvars(0,fausingha_tb);
end
fausingha u1(
    .a(I1),
    .b(I2),
    .sum(sum),
    .carry(carry)
);

initial
begin

I1 = 0;
I2 = 0;
#10;
I1 = 0;
I2 = 1;
#10;
I1 = 1;
I2 = 0;
#10;
I1 = 1;
I2 = 1;
#10;

end

endmodule