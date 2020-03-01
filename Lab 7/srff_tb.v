module srff_tb();

reg I1,I2,I3;

wire o1,o2;

initial 
begin 
$dumpfile("srff_tb.vcd");
$dumpvars(0,srff_tb);
end

srff s1(I1,I2,I3,o1,o2);

initial 
begin

I1 = 1'b 0;
I2 = 1'b 0;
I3 = 1'b 0;
#10;

end
endmodule

