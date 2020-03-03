module t_jk_tb();
reg  t,clk;
wire q,q_bar;

initial 
begin
$dumpfile("t_jk_tb.vcd");
$dumpvars(0,t_jk_tb);
end

t_jk f1(t,clk,q,q_bar);

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