


module final (x1,rst,clk,yout,y1,y2,y3,y4,y5,y6,y11,y21,y31,y41,y51,Y,Y1,Y2,Y3,Y4,Y5);
input     signed [7:0]  x1;
input            rst,clk;
output  signed [7:0] y1,Y,y2,y3,y4,y5,y6,Y1,Y2,Y3,Y4,Y5,y11,y21,y31,y41,y51,yout;


eq1 RF1(clk,x1,rst,y1);
srb SRB1(clk,y1,rst,Y);
eq2 RF2(clk,Y,rst,y2);
srb SRB2(clk,y2,rst,Y1);
eq3 RF3(clk,Y1,rst,y3);
srb SRB3(clk,y3,rst,Y2);
eq4 RF4(clk,Y2,rst,y4);
srb SRB4(clk,y4,rst,Y3);
eq5 RF5(clk,Y3,rst,y5);
srb SRB5(clk,y5,rst,Y4);
eq6 RF6(clk,Y4,rst,y6);
srb SRB6(clk,y6,rst,Y5);
eq5 RF7(clk,Y3,rst,y5);
srb SRB7(clk,y5,rst,Y4);
eq4 RF8(clk,Y2,rst,y4);
srb SRB8(clk,y4,rst,Y3);
eq3 RF9(clk,Y1,rst,y3);
srb SRB9(clk,y3,rst,Y2);
eq2 RF10(clk,Y,rst,y2);
srb SRB10(clk,y2,rst,Y1);
eq1 RF11(clk,x1,rst,y1);
srb SRB11(clk,y1,rst,Y);

assign y11=y1+Y1+Y;
assign y21=y2+Y2;
assign y31=y3+Y3;
assign y41=y4+Y4;
assign y51=y5+Y5;
assign yout=y11+y21+y31+y41+y51;
endmodule
