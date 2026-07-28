module eq4(input clk,input signed [7:0] x4,input rst,output  [7:0] y4 );
//internal variables
wire [7:0] W1,W2,W3,W4,W5,W6,W7,W8,W9,W10;
wire [7:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10;
wire signed   [7:0] z1,z2,z3,z4,z5,z6;
wire [7:0] z21,z22,z31,z32,z41,z42,z51,z52,z61,z62,z63,z64;


assign a1=W1;
assign a2=W2;
assign a3=W3;
assign a4=W4;
assign a5=W5;
assign a6=W6;
assign a7=W7;
assign a8=W8;
assign a9=W9;
assign a10=W10;


//flipflop instantiations (for introducing a delay).
    dff dff1 (clk,rst,x4,W1);
    dff dff2 (clk,rst,a1,W2);
    dff dff3 (clk,rst,a2,W3);
    dff dff4 (clk,rst,a3,W4);
    dff dff5 (clk,rst,a4,W5);
    dff dff6 (clk,rst,a5,W6);
    dff dff7 (clk,rst,a6,W7);
    dff dff8 (clk,rst,a7,W8);
    dff dff9 (clk,rst,a8,W9);
    dff dff10 (clk,rst,a9,W10);
    
//onelevel shifting

assign z1=x4+W10>>8;
assign z2=a1+W9>>8;
assign z3=a2+W8>>7;
assign z4=a3+W7>>6;
assign z5=a4+W6>>5;
assign z6=a5>>3;

assign z21=z2>>2;
assign z22=z21>>2;

assign z31=z3>>2;
assign z32=z31>>3;

assign z41=z4>>2;
assign z42=z41>>4;

assign z51=z5>>3;
assign z52=z51>>3;

assign z61=z6>>2;
assign z62=z61>>3;
assign z63=z62>>2;
assign z64=z63>>2;
//addition


assign y4=z1+z2+z3+z4+z5+z6+z21+z22+z31+z32+z41+z42+z51+z52+z61+z62+z63+z64;
endmodule
