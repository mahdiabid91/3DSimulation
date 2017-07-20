One_Leg = [1,-1,-1,-1,1,1,1,1,-1,-1,-1,1]; 
Diag_Leg = diag(One_Leg);
EL = rot90(Diag_Leg,1);

hand_permut=[-1,1,1];
hand_permut=diag(hand_permut);

EUb = [-1,zeros(1,6);
       zeros(3,4),hand_permut;
       zeros(3,1),hand_permut,zeros(3,3)];
   
E = [EL,zeros(12,7);zeros(7,12),EUb];