module usr_d_tb();
reg [3:0] I1;
reg I2,I3,I4;
reg [1:0] I5;

wire [3:0] out;

initial 
begin
$dumpfile("usr_d.vcd");
$dumpvars(0,usr_d_tb);
end

usr_d f1(I1,I2,I3,I4,I5,out);

initial 
begin
I1 = 4'b 0110;
I2 = 1;
I3 = 0;
I4 = 1;
I5 = 2'b 00;
#10;
I1 = 4'b 0110;
I2 = 1;
I3 = 0;
I4 = 1;
I5 = 2'b 01;
#10;
I1 = 4'b 0110;
I2 = 1;
I3 = 0;
I4 = 1;
I5 = 2'b 10;
#10;
I1 = 4'b 1000;
I2 = 1;
I3 = 0;
I4 = 1;
I5 = 2'b 11;
#10;

end
endmodule