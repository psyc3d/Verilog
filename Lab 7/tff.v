module tff(t,q,qbar,clk);

input t,clk;

output reg q,qbar;

initial 
	begin
        q=0;
        qbar=1;
	end
	 
always @( posedge clk)
	begin
	    case({t})
            1'b0:   begin 
                        q=q; 
                        qbar=qbar; 
                    end
            1'b1:   begin 
                        q=~q; 
                        qbar=~qbar; 
                    end
        endcase
    end	 
endmodule