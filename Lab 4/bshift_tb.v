module bshift_tb();

reg [3:0] I1;
reg [1:0] I2;
wire [3:0] o;

initial 
begin 
$dumpfile("bshift_test.vcd");
$dumpvars(0,bshift_tb);
end

bshift b1(I1,I2,o);

initial
begin
    I1 = 4'b 1110;
    I2 = 2'b 00;
    #10;
    I1 = 4'b 1110;
    I2 = 2'b 10;
    #10;
    I1 = 4'b 1110;
    I2 = 2'b 01;
    #10;
    I1 = 4'b 1110;
    I2 = 2'b 11;
    #10;
end

endmodule