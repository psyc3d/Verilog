module pllAddSub_tb();

reg [3:0] I1,I2;
reg I3;
wire [3:0] s,c; 

initial
begin
$dumpfile("pllAddSub_test.vcd");
$dumpvars(0,pllAddSub_tb);
end

pllAddSub u1(I1,I2,I3,s,c);

initial
begin
    I1 = 4'b 1010;
    I2 = 4'b 0101;
    I3 = 0;
    #10;
    I1 = 4'b 1010;
    I2 = 4'b 1010;
    I3 = 1;
    #10;
    I1 = 4'b 0001;
    I2 = 4'b 0000;
    I3 = 1;
    #10;
    I1 = 4'b 0011;
    I2 = 4'b 0110;
    I3 = 0;
    #10;
    I1 = 4'b 1111;
    I2 = 4'b 1111;
    I3 = 1;
    #10;


end

endmodule