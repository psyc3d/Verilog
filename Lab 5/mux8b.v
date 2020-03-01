module mux8b(ctrl,w1,w2,w3,w4,w5,w6,w7,w8,out);

input [3:0] w1,w2,w3,w4,w5,w6,w7,w8;
input [2:0] ctrl;
output [3:0] out;
reg [3:0] d1;

// assign d1 = w1;

always @(*)
    begin
        if(ctrl[2]==0)
            begin
            if(ctrl[1]==0)
                begin
                if(ctrl[0]==0)
                d1 = w1;
                if(ctrl[0]==1)
                d1 = w2;
                end
            if(ctrl[1]==1)
                begin
                if(ctrl[0]==0)
                d1 = w3;
                if(ctrl[0]==1)
                d1 = w4;
                end
            end
        if(ctrl[2]==1)
            begin
            if(ctrl[1]==0)
                begin
                if(ctrl[0]==0)
                d1 = w5;
                if(ctrl[0]==1)
                d1 = w6;
                end
            if(ctrl[1]==1)
                begin
                if(ctrl[0]==0)
                d1 = w7;
                if(ctrl[0]==1)
                d1 = w8;
                end
            end
    end

assign out = d1;

endmodule