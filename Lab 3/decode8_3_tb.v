module decode8_3_tb();

reg [2:0] I2;
wire [7:0] o;

initial 
begin 
$dumpfile("decode8_3_test.vcd");
$dumpvars(0,decode8_3_tb);
end

decode8_3 m2(I2,o);

initial 
begin
    I2 = 3'b 000;
    #10;
    I2 = 3'b 111;
    #10;
    
    
end

endmodule
