`timescale 1 ns/100 ps
// Version: 9.0 9.0.0.15


module extend_coder(
       DataIn,
       DataIn_0,
       EO,
       GS,
       GS_0,
       Q1,
       Q2,
       Seg,
       Y
    );
input  [7:0] DataIn;
input  [7:0] DataIn_0;
output EO;
output GS;
output GS_0;
output Q1;
output Q2;
output [7:0] Seg;
output Y;

    wire AND2_0_Y, INV_1_Y, AND2_1_Y, INV_2_Y, AND2_2_Y, INV_3_Y, 
        encoder_148_0_Dataout0to0, encoder_148_0_Dataout1to1, 
        encoder_148_0_Dataout2to2, encoder_148_0_EO, 
        encoder_148_1_Dataout0to0, encoder_148_1_Dataout1to1, 
        encoder_148_1_Dataout2to2, HC_85_0_Q3, GND_net, VCC_net;
    
    GND GND (.Y(GND_net));
    encoder_148 encoder_148_0 (.DataIn({DataIn[7], DataIn[6], 
        DataIn[5], DataIn[4], DataIn[3], DataIn[2], DataIn[1], 
        DataIn[0]}), .EO(encoder_148_0_EO), .Dataout({
        encoder_148_0_Dataout2to2, encoder_148_0_Dataout1to1, 
        encoder_148_0_Dataout0to0}), .EI(GND_net), .GS(GS_0));
    INV INV_2 (.A(INV_2_Y), .Y(AND2_1_Y));
    HC_85 HC_85_0 (.A3(encoder_148_0_EO), .A2(AND2_2_Y), .A1(AND2_1_Y), 
        .A0(AND2_0_Y), .B3(VCC_net), .B2(GND_net), .B1(VCC_net), .B0(
        GND_net), .I1(GND_net), .I2(VCC_net), .I3(GND_net), .Q1(Q1), 
        .Q2(Q2), .Q3(HC_85_0_Q3));
    VCC VCC (.Y(VCC_net));
    INV INV_3 (.A(INV_3_Y), .Y(AND2_2_Y));
    INV INV_1 (.A(INV_1_Y), .Y(AND2_0_Y));
    AND2 AND2_1 (.A(encoder_148_0_Dataout1to1), .B(
        encoder_148_1_Dataout1to1), .Y(INV_2_Y));
    INV INV_0 (.A(GND_net), .Y(Y));
    AND2 AND2_0 (.A(encoder_148_0_Dataout0to0), .B(
        encoder_148_1_Dataout0to0), .Y(INV_1_Y));
    HC_4511 HC_4511_0 (.A({encoder_148_0_EO, AND2_2_Y, AND2_1_Y, 
        AND2_0_Y}), .Seg({Seg[7], Seg[6], Seg[5], Seg[4], Seg[3], 
        Seg[2], Seg[1], Seg[0]}), .LT_N(VCC_net), .BI_N(HC_85_0_Q3), 
        .LE(GND_net));
    encoder_148 encoder_148_1 (.DataIn({DataIn_0[7], DataIn_0[6], 
        DataIn_0[5], DataIn_0[4], DataIn_0[3], DataIn_0[2], 
        DataIn_0[1], DataIn_0[0]}), .EO(EO), .Dataout({
        encoder_148_1_Dataout2to2, encoder_148_1_Dataout1to1, 
        encoder_148_1_Dataout0to0}), .EI(encoder_148_0_EO), .GS(GS));
    AND2 AND2_2 (.A(encoder_148_0_Dataout2to2), .B(
        encoder_148_1_Dataout2to2), .Y(INV_3_Y));
    
endmodule