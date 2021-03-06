module mux8_2_tb();

reg [7:0] I1;
reg [2:0] I2;
wire o;

initial 
begin 
$dumpfile("mux8_2_test.vcd");
$dumpvars(0,mux8_2_tb);
end

mux8_2 m2(I2,I1,o);

initial 
begin
    I1 = 8'b 00000001;
    I2 = 000;
    #10;
    I1 = 8'b 01111111;
    I2 = 111;
    #10;
    
    
end

endmodule
