`include "pllAddSub.v"
`include "mux8b.v"
module alu(a,b,cin,ctrl,out,cout);

input [3:0] a,b;
input cin;
input [2:0] ctrl;

output [3:0] out;
output [3:0] cout;

wire [3:0] w1;
wire [3:0] w2;
wire [3:0] w3;
wire [3:0] w4;
wire [3:0] w5;
wire [3:0] w6;
wire [3:0] w7;
wire [3:0] w8;
wire [3:0] w9;

// Adder
pllAddSub f1(a,b,ctrl[0],w1,cout);

//SUB
pllAddSub f2(a,b,ctrl[0],w2,cout);

// OR
or o1(w3[0],a[0],b[0]);
or o2(w3[1],a[1],b[1]);
or o3(w3[2],a[2],b[2]);
or o4(w3[3],a[3],b[3]);

//AND

and r1(w4[0],a[0],b[0]);
and r2(w4[1],a[1],b[1]);
and r3(w4[2],a[2],b[2]);
and r4(w4[3],a[3],b[3]);

//shIFT LEFT

assign w5[3]=a[2];
assign w5[2]=a[1];
assign w5[1]=a[0];
assign w5[0]=0;

//shIFT RIGht

assign w6[0]=a[1];
assign w6[1]=a[2];
assign w6[2]=a[3];
assign w6[3]=0;

//ROt left

assign w7[3]=a[2];
assign w7[2]=a[1];
assign w7[1]=a[0];
assign w7[0]=a[3];

//ROt RIGht

assign w8[0]=a[1];
assign w8[1]=a[2];
assign w8[2]=a[3];
assign w8[3]=a[0];


mux8b m1(ctrl,w1,w2,w3,w4,w5,w6,w7,w8,out);

endmodule








// always @(ctrl)
//     begin
//         if(ctrl[0]==0)
//             begin
//             if(ctrl[1]==0)
//                 begin
//                 if(ctrl[2]==0)
//                 out = w1;
//                 if(ctrl[2]==1)
//                 out = w2;
//                 end
//             if(ctrl[1]==1)
//                 begin
//                 if(ctrl[2]==0)
//                 out = w3;
//                 if(ctrl[2]==1)
//                 out = w4;
//                 end
//             end
//         if(ctrl[0]==1)
//             begin
//             if(ctrl[1]==0)
//                 begin
//                 if(ctrl[2]==0)
//                 out = w5;
//                 if(ctrl[2]==1)
//                 out = w6;
//                 end
//             if(ctrl[1]==1)
//                 begin
//                 if(ctrl[2]==0)
//                 out = w7;
//                 if(ctrl[2]==1)
//                 out = w8;
//                 end
//             end
//     end

// endmodule




// wire [2:0] w11;
// wire [31:0] w22;
// not n1(w11[0],ctrl[0]);
// not n2(w11[1],ctrl[1]);
// not n3(w11[2],ctrl[2]);

// and a11(w22[3:0],w11[0],w11[1],w11[2],w1);
// and a12(w22[7:4],w11[0],w11[1],ctrl[2],w2);
// and a13(w22[11:8],w11[0],ctrl[1],w11[2],w3);
// and a14(w22[15:12],w11[0],ctrl[1],ctrl[2],w4);
// and a15(w22[19:16],ctrl[0],w11[1],w11[2],w5);
// and a16(w22[23:20],ctrl[0],w11[1],ctrl[2],w6);
// and a17(w22[27:24],ctrl[0],ctrl[1],w11[2],w7);
// and a18(w22[31:28],ctrl[0],ctrl[1],ctrl[2],w8);

// or o1(out,w22[3:0],w22[7:4],w22[11:8],w22[15:12],w22[19:16],w22[23:20],w22[27:24],w22[31:28]);

// endmodule