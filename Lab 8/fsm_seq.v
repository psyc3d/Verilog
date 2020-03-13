module fsm_seq(x,clk,state,out);

input x;
input clk;

output reg [3:0] state;
output reg out;



initial 
begin 
out=0; 
state = 4'b 1111; 
end
	 
always @(posedge clk)
    begin
        case({state,x})     //decreasing sequence
        5'b11110: 
            begin state = 4'b1111; out = 0; end     //0 resets the position to initial
        5'b11111: 
            begin state = 4'b1110; out = 0; end     //1 pushes down the state to the next state

        5'b11100: 
            begin state = 4'b1111; out = 0; end
        5'b11101: 
            begin state = 4'b1101; out = 0; end 

        5'b11010: 
            begin state = 4'b1111; out = 0; end
        5'b11011: 
            begin state = 4'b1100; out = 0; end 

        5'b11000: 
            begin state = 4'b1111; out = 0; end
        5'b11001: 
            begin state = 4'b1011; out = 0; end 

        5'b10110: 
            begin state = 4'b1111; out = 0; end
        5'b10111: 
            begin state = 4'b1010; out = 1; end 

        5'b10100: 
            begin state = 4'b1111; out = 0; end
        5'b10101: 
            begin state = 4'b1001; out = 0; end 

        5'b10010: 
            begin state = 4'b1111; out = 0; end
        5'b10011: 
            begin state = 4'b1000; out = 0; end 

        5'b10000: 
            begin state = 4'b1111; out = 0; end
        5'b10001: 
            begin state = 4'b0111; out = 0; end 

        5'b01110: 
            begin state = 4'b1111; out = 0; end
        5'b01111: 
            begin state = 4'b0110; out = 0; end 

        5'b01100: 
            begin state = 4'b1111; out = 0; end
        5'b01101: 
            begin state = 4'b0101; out = 0; end 

        5'b01010: 
            begin state = 4'b1111; out = 0; end
        5'b01011: 
            begin state = 4'b0100; out = 0; end 

        5'b01000: 
            begin state = 4'b1111; out = 0; end
        5'b01001: 
            begin state = 4'b0011; out = 0; end 

        5'b00110: 
            begin state = 4'b1111; out = 0; end
        5'b00111: 
            begin state = 4'b0010; out = 0; end 

        5'b00100: 
            begin state = 4'b1111; out = 0; end
        5'b00101: 
            begin state = 4'b0001; out = 0; end 

        5'b00010: 
            begin state = 4'b1111; out = 0; end
        5'b00011: 
            begin state = 4'b0000; out = 0; end 

        5'b00000: 
            begin state = 4'b1111; out = 0; end
        5'b00001: 
            begin state = 4'b1111; out = 0; end 
        endcase
	 end
endmodule
