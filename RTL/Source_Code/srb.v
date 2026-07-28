module srb(input clk,input signed [7:0] x,input rst,output  [7:0] y );

wire [7:0] W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,W17,W18,W19,W20,W21,W22,W23,W24,W25,W26,W27,W28,W29,W30,W31,W32,W33,W34,W35,W36,W37,W38,W39,W40,
W41,W42,W43,W44,W45,W46,W47,W48,W49,W50,W51,W52,W53,W54,W55,W56,W57,W58,W59,W60,W61,W62,W63,W64;
wire [7:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,a50,a51,
a52,a53,a54,a55,a56,a57,a58,a59,a60,a61,a62,a63,a64;

assign a1=W1;assign a2=W2;assign a3=W3;assign a4=W4;assign a5=W5;assign a6=W6;assign a7=W7;assign a8=W8;assign a9=W9;assign a10=W10;
assign a11=W11;assign a12=W12;assign a13=W13;assign a14=W14;assign a15=W15;assign a16=W16;assign a17=W17;assign a18=W18;assign a19=W19;assign a20=W20;
assign a21=W21;assign a22=W22;assign a23=W23;assign a24=W24;assign a25=W25;assign a26=W26;assign a27=W27;assign a28=W28;assign a29=W29;assign a30=W30;
assign a31=W31;assign a32=W32;assign a33=W33;assign a34=W34;assign a35=W35;assign a36=W36;assign a37=W37;assign a38=W38;assign a39=W39;assign a40=W40;
assign a41=W41;assign a42=W42;assign a43=W43;assign a44=W44;assign a45=W45;assign a46=W46;assign a47=W47;assign a48=W48;assign a49=W49;assign a50=W50;
assign a51=W51;assign a52=W52;assign a53=W53;assign a54=W54;assign a55=W55;assign a56=W56;assign a57=W57;assign a58=W58;assign a59=W59;assign a60=W60;
assign a61=W61;assign a62=W62;assign a63=W63;assign a64=W64;

//flipflop instantiations (for introducing a delay).
    dff dff1 (clk,rst,x,W1);        dff dff2 (clk,rst,a1,W2);       dff dff3 (clk,rst,a2,W3);       dff dff4 (clk,rst,a3,W4);       dff dff5 (clk,rst,a4,W5);
    dff dff6 (clk,rst,a5,W6);       dff dff7 (clk,rst,a6,W7);       dff dff8 (clk,rst,a7,W8);       dff dff9 (clk,rst,a8,W9);       dff dff10 (clk,rst,a9,W10);
    dff dff11 (clk,rst,a10,W11);    dff dff12 (clk,rst,a11,W12);    dff dff13 (clk,rst,a12,W13);    dff dff14 (clk,rst,a13,W14);    dff dff15 (clk,rst,a14,W15);
    dff dff16 (clk,rst,a15,W16);    dff dff17 (clk,rst,a16,W17);    dff dff18 (clk,rst,a17,W18);    dff dff19 (clk,rst,a18,W19);    dff dff20 (clk,rst,a19,W20);
    dff dff21 (clk,rst,a20,W21);    dff dff22 (clk,rst,a21,W22);    dff dff23 (clk,rst,a22,W23);    dff dff24 (clk,rst,a23,W24);    dff dff25 (clk,rst,a24,W25);
    dff dff26 (clk,rst,a25,W26);    dff dff27 (clk,rst,a26,W27);    dff dff28 (clk,rst,a27,W28);    dff dff29 (clk,rst,a28,W29);    dff dff30 (clk,rst,a29,W30);
    dff dff31 (clk,rst,a30,W31);    dff dff32 (clk,rst,a31,W32);    dff dff33 (clk,rst,a32,W33);    dff dff34 (clk,rst,a33,W34);    dff dff35 (clk,rst,a34,W35);
    dff dff36 (clk,rst,a35,W36);    dff dff37 (clk,rst,a36,W37);    dff dff38 (clk,rst,a37,W38);    dff dff39 (clk,rst,a38,W39);    dff dff40 (clk,rst,a39,W40);
    dff dff41 (clk,rst,a40,W41);    dff dff42 (clk,rst,a41,W42);    dff dff43 (clk,rst,a42,W43);    dff dff44 (clk,rst,a43,W44);    dff dff45 (clk,rst,a44,W45);
    dff dff46 (clk,rst,a45,W46);    dff dff47 (clk,rst,a46,W47);    dff dff48 (clk,rst,a47,W48);    dff dff49 (clk,rst,a48,W49);    dff dff50 (clk,rst,a49,W50);
    dff dff51 (clk,rst,a50,W51);    dff dff52 (clk,rst,a51,W52);    dff dff53 (clk,rst,a52,W53);    dff dff54 (clk,rst,a53,W54);    dff dff55 (clk,rst,a54,W55);
    dff dff56 (clk,rst,a55,W56);    dff dff57 (clk,rst,a56,W57);    dff dff58 (clk,rst,a57,W58);    dff dff59 (clk,rst,a58,W59);    dff dff60 (clk,rst,a59,W60);
    dff dff61 (clk,rst,a60,W61);    dff dff62 (clk,rst,a61,W62);    dff dff63 (clk,rst,a62,W63);    dff dff64 (clk,rst,a63,W64);    assign a64=y;
    
    
    endmodule
    