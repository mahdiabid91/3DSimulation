function [qp_ini,Impact] =qpf_to_qpi_and_Impact_f(qf,qpf)

ndof=length(qf);

Miner_qf=Inertia_Matrix_3Dbiped_f(qf,'complet'); 
Jb_qf=Jacobian_Matrix_3Dbiped_f(qf); 
% size(Jb_qf)
% size(Miner_qf)

X_m_tempT=[zeros(6,1);qpf];

A_sol=[Miner_qf,-Jb_qf';Jb_qf,zeros(6,6)];
b_sol=[Miner_qf*X_m_tempT;zeros(6,1)];
% A_sol
% cond(A_sol)
X_sol=A_sol\b_sol;
% X_sol=pinv(A_sol)*b_sol;
% Vector = [ones(16,1),zeros(12,1)];
% X_sol = X_sol.*Vector

% if max(abs(X_sol(7:7+JoRobot-1))) > 1e4 
%     qp_ini_temp = ones(31,1);
% else
    qp_ini_temp=X_sol(7:7+ndof-1);
% end
% qp_temp = X_sol(7:7+JoRobot-1);
% qp_ini_temp=[qp_temp(2:13);qp_temp(15:end)];



Impact=X_sol(7+ndof:end);

% size(Impact)

inversion_matrix;

qp_ini = E * qp_ini_temp;

end