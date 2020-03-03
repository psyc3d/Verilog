module mux4_tb();

reg [3:0] I1;
reg [1:0] I2;
wire o;

initial 
begin 
$dumpfile("mux4-1_test.vcd");
$dumpvars(0,mux4_tb);
end

mux4 m2(I2,I1,o);

initial 
begin
    I1 = 4'b 0001;
    I2 = 00;
    #10;
    I1 = 4'b 0111;
    I2 = 11;
    #10;
    
    
end

endmodule
