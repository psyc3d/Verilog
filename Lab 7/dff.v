module dff(d,q,qbar,clock);

input d,clock;

output reg q,qbar;

initial 
	begin
	    q=0;
	    qbar=1;
	end
	 
always @( posedge clock)
	begin
	    case({d})
	        1'b 0: begin 
                    q=0; 
                    qbar=1; 
                end
	        1'b 1: begin 
                    q=1; 
                    qbar=0; 
                end
        endcase
    end	 
endmodule