module srff(s,r,clk,q,qbar);

input s,r,clk;
output reg q,qbar;

initial 
    begin 
        q = 0;
        qbar = 0;
    end
always@(posedge clk)
    begin 
        case({s,r})
        2'b 00: begin 
                    q = q ; 
                    qbar=qbar; 
                end
	    2'b 01: begin 
                    q=0; 
                    qbar=1; 
                end
	    2'b 10: begin 
                    q=1; 
                    qbar=0; 
                end
        endcase
    end
endmodule
    