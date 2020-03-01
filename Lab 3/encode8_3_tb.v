module encode8_3_tb();


reg [7:0] I1;
wire [2:0] o;

initial 
begin 
$dumpfile("encode8_3_test.vcd");
$dumpvars(0,encode8_3_tb);
end

encode8_3 m2(I1,o);

initial 
begin
    I1 = 8'b 00100101;
    #10;
    I1 = 8'b 00000001;
    #10;
    
    
end

endmodule
