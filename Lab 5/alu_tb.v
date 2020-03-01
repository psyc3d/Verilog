module alu_tb();

reg [3:0] I1,I2;
reg [2:0] I3;
reg I4;

wire [3:0] o;
wire [3:0] c;

initial 
begin 
$dumpfile("alu_test.vcd");
$dumpvars(0,alu_tb);
end

alu a1(I1,I2,I4,I3,o,c);

initial
begin 

I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 000;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 001;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 010;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 011;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 100;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 101;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 110;
I4 = 1'b 0;
#10;
I1 = 4'b 1010;
I2 = 4'b 0101;
I3 = 3'b 111;
I4 = 1'b 0;
#10;

end

endmodule
