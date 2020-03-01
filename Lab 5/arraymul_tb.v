module arraymul_tb();

reg [3:0] I1,I2;

wire [7:0] o;

initial 
begin 
$dumpfile("arraymul_test.vcd");
$dumpvars(0,arraymul_tb);
end

arraymul a1(I1,I2,o);

initial
begin

I1 = 4'b 1010;
I2 = 4'b 0101;
#10;
I1 = 4'b 1111;
I2 = 4'b 0000;
#10;
I1 = 4'b 1100;
I2 = 4'b 0011;
#10;
I1 = 4'b 1100;
I2 = 4'b 1100;
#10;
I1 = 4'b 0101;
I2 = 4'b 0101;
#10;

end

endmodule