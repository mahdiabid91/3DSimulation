function St=MGI_BothLegs(Pos_Pelvis,p4,p5,p6,L)

[S,TST7]=MGI_RightLeg(Pos_Pelvis,p4,L);

S2=MGI_LeftLeg(TST7,p5,p6,L);

St=[S;S2];


end