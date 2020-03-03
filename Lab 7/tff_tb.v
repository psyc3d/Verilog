module tff_tb();
reg  t,clk;
wire q,q_bar;

initial 
begin
$dumpfile("tff.vcd");
$dumpvars(0,tff_tb);
end

tff f1(t,q,q_bar,clk);

initial
    begin
        clk = 0;
        t = 0;
        #10;
        clk = 1;
        t = 0;
        #10;
        clk = 0;
        t = 1;
        #10;
        clk = 1;
        t = 0;
        #10;
        clk = 1;
        t = 1;
        #10;
        clk = 0;
        t = 0;
        #10;
        clk = 1;
        t = 0;
        #10;
        clk = 0;
        t = 1;
        #10;
        clk = 1;
        t = 1;
        #10;

    end
endmodule