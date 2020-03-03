module sr_jk_tb();

reg I1,I2,I3;

wire o1,o2;

initial 
begin 
$dumpfile("sr_jk_tb.vcd");
$dumpvars(0,sr_jk_tb);
end

sr_jk s1(I1,I2,I3,o1,o2);

initial 
begin

I1 = 1'b 0;
I2 = 1'b 1;
I3 = 1'b 1;
#10;
I1 = 1'b 1;
I2 = 1'b 1;
I3 = 1'b 0;
#10;
I1 = 1'b 1;
I2 = 1'b 0;
I3 = 1'b 1;
#10;
I1 = 1'b 1;
I2 = 1'b 1;
I3 = 1'b 0;
#10;

end
endmodule

