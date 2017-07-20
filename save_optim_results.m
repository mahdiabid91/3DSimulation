filename='\Optim results 190617 MA\result_v3_zym4\';

pathname=[cd filename];

save([pathname 'OP1.mat'],'OP');

save([pathname 'Q1.mat'],'Q');
save([pathname 'Qp1.mat'],'Qp');
save([pathname 'Qpp1.mat'],'Qpp');

save([pathname 'GAMMA1.mat'],'GAMMA')
save([pathname 'F_foot1.mat'],'F_foot')
save([pathname 'M_foot1.mat'],'M_foot')
save([pathname 'ZMP1.mat'],'ZMP')
save([pathname 'Impact_forces1.mat'],'Impact_forces')

save([pathname 'Fval1.mat'],'Fval')

save([pathname 'Ct1.mat'],'Ct');
save([pathname 'coefficients1.mat'],'coefficients');

      
save([pathname 'COM_pos.mat'],'COM_pos');
save([pathname 'COM_vel.mat'],'COM_vel');
save([pathname 'COM_acc.mat'],'COM_acc');
save([pathname 'COMj_pos.mat'],'COMj_pos');
save([pathname 'COMj_vel.mat'],'COMj_vel');
save([pathname 'COMj_acc.mat'],'COMj_acc');
save([pathname 'YM.mat'],'YM');

