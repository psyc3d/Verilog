module jkff_tb();

reg I1,I2,I3;

wire o1,o2;

initial 
begin 
$dumpfile("jkff_tb.vcd");
$dumpvars(0,jkff_tb);
end

jkff s1(I1,I2,I3,o1,o2);

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
I1 = 1'b 0;
I2 = 1'b 0;
I3 = 1'b 0;
#10;

end
endmodule