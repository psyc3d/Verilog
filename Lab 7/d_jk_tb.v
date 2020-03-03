module d_jk_tb();
reg  I1,I2;
wire o1,o2;

initial 
begin
$dumpfile("d_jk.vcd");
$dumpvars(0,d_jk_tb);
end

d_jk f1(I1,o1,o2,I2);

initial  
    begin
        I2 = 0;
        I1 = 0;
        #10;
        I2 = 1;
        I1 = 1;
        #10;
        I2 = 0;
        I1 = 0;
        #10;
        I2 = 1;
        I1 = 1;
        #10;
        I2 = 0;
        I1 = 1;
        #10;
        I2 = 1;
        I1 = 0;
        #10;
        I2 = 0;
        I1 = 0;
        #10;
    end

endmodule