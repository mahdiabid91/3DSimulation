function S2=MGI_LeftLeg(TST7,p5,p6,L)

TST14= [-1,0,0,0;
            0,-1,0,-p5;
            0,0,1,-p6;
            0,0,0,1]; 

T14T7=TST14\TST7;

TfT14 =[ -1     0     0     0;
          0    -1     0     0;
          0     0     1     0;
          0     0     0     1];
      
TfT7=TfT14*T14T7;

TfT7(2,4)=-TfT7(2,4);

S2p=solve_MGI(TfT7,L);

S2=zeros(6,1);

S2=[S2p(6);S2p(5);-S2p(4);-S2p(3);-S2p(2);S2p(1)];

end