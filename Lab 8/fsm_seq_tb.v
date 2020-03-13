module fsm_seq_tb();
wire [3:0] state;
wire out;
reg x,clk;

initial 
begin
$dumpfile("fsm_seq.vcd");
$dumpvars(0,fsm_seq_tb);
end

fsm_seq f1(x,clk,state,out);

initial clk=0;
always #10 clk=~clk;
initial  
begin
x=0;

#10
x=1;

#20
x=1;

#20
x=0;

#20
x=0;

#20
x=1;

#20
x=0;

#20
x=1;

#20
x=1;

#20
x=0;

#20
x=0;

#20
x=1;

#20
x=0;

#20
x=1;

#20
x=1;

#20
x=1;

#20
x=1;

#20
x=1;

#20
x=1;

#20
x=1;

#20
x=0;

#20
x=0;

#20
x=0;

#20
x=1;
end

initial 
begin
#500 $finish;
end
endmodule
