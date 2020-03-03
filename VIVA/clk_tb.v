module clk_tb();
reg clock;


initial 
begin
$dumpfile("clock.vcd");
$dumpvars(0,clk_tb);
end

clk c1(clock);

initial
begin 
clock = 1;
end

always
#40 clock = ~clock;

always@(clock)
#10 clock = ~clock;


initial 
begin
#120 $finish;
end

endmodule
