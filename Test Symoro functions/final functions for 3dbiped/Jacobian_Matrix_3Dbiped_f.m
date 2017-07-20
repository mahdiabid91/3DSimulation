function [J]     = Jacobian_Matrix_3Dbiped_f(Q)
% This function computes the jacobian matrix of a N-joint robot via  
% recursive Newton-Euler formulation.
% Positions

N                = length(Q);

% Velocities
QD               = zeros(N,1);
W0               = zeros(3,1);

% Accelerations
QDD              = zeros(N,1);
V0Dot            = zeros(3,1);
W0Dot            = zeros(3,1);

% Computing jacobian matrix columns
External         = eye(6);
J                = zeros(N+6,6);
for i = 1:6,
    Forces       = External(1:3, i);
    Moments      = External(4:6, i);
    [f_foot, m_foot, Tau] = Def3Dbiped_dyn_f_ss( Q, QD, QDD, V0Dot,W0Dot,W0, Forces, Moments,0);
    J(:,i)       = [f_foot; m_foot; Tau];
end
J = J';
end
