module demux8_tb();

reg I1;
reg [2:0] I2;
wire [7:0] o;

initial 
begin 
$dumpfile("demux8_test.vcd");
$dumpvars(0,demux8_tb);
end

demux8 m2(I1,I2,o);

initial 
begin
    I1 = 1;
    I2 = 3'b 000;
    #10;
    I1 = 1;
    I2 = 3'b 111;
    #10;
    
    
end

endmodule
