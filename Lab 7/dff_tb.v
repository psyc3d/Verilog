module dff_tb();
reg  I1,I2;
wire o1,o2;

initial 
begin
$dumpfile("dff.vcd");
$dumpvars(0,dff_tb);
end

dff f1(I1,o1,o2,I2);

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