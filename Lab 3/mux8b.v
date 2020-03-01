module mux8b(s,d,out);

input [7:0] d;
input [2:0] s;
output out;
reg out;
always @(s,d)
    begin
        if(s[0]==0)
            begin
            if(s[1]==0)
                begin
                if(s[2]==0)
                out = d[0];
                if(s[2]==1)
                out = d[1];
                end
            if(s[1]==1)
                begin
                if(s[2]==0)
                out = d[2];
                if(s[2]==1)
                out = d[3];
                end
            end
        if(s[0]==1)
            begin
            if(s[1]==0)
                begin
                if(s[2]==0)
                out = d[4];
                if(s[2]==1)
                out = d[5];
                end
            if(s[1]==1)
                begin
                if(s[2]==0)
                out = d[6];
                if(s[2]==1)
                out = d[7];
                end
            end
    end

endmodule