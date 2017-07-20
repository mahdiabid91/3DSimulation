function C=cost_function(torque, Moment, p_O16, p_h, G, T, d, vec_T, rho1, rho2)

global Ct Cm
% return the cost functional


Ct=torque_to_cost(torque, T, d, vec_T);

Cm=moment_to_cost(Moment, T,d, vec_T);

Cup=upright_cost(p_O16, p_h, G, T, d,vec_T);

C = Ct+rho1*Cm+rho2*Cup;


end