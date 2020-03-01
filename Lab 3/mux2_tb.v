module mux2_tb();

reg [1:0] I1;
reg I2;
wire o;

initial 
begin 
$dumpfile("mux2-1_test.vcd");
$dumpvars(0,mux2_tb);
end

mux2 m2(I2,I1,o);

initial 
begin
    I1 = 2'b 00;
    I2 = 0;
    #10;
    I1 = 2'b 00;
    I2 = 1;
    #10;
    
    
end

endmodule
