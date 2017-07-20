function [A]     = Inertia_Matrix_0_4(Q,type)
% Joint coordinates
% Positions
N                = length(Q);

% Velocities
QD               = zeros(N,1);
W0               = zeros(3,1);

if strcmp(type,'reduce')
% Inertia matrix
A                = zeros(N, N);
Identity         = eye(N);
% F = zeros(3,1);
% M = zeros(3,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Computing inertia matrix columns
for i = 1:N,
    V0Dot           = zeros(3,1);
    W0Dot           = zeros(3,1);
    QDD             = Identity(:,i);
    [f_foot, m_foot, Tau] = Def_0_4_mobile_dyn( Q, QD, QDD, V0Dot, W0Dot, W0);
    A(:,i)          = Tau;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(type,'complet')
A                = zeros(N+6, N+6);
Identity         = eye(N+6);
F = zeros(3,1);
M = zeros(3,1);
% Computing inertia matrix columns
for i = 1:N+6,
    V0Dot           = Identity(1:3,i);
    W0Dot           = Identity(4:6,i);
    QDD             = Identity(7:end,i);
    [f_foot, m_foot, Tau] = Def_0_4_mobile_dyn( Q, QD, QDD, V0Dot, W0Dot, W0);
    A(:,i)          = [f_foot; m_foot; Tau];

end

else disp('Compute_Inertia_Matrix : Input erreur, choose "reduce" or "complet"');
end
end
