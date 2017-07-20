function torque_cost=torque_to_cost(torque, T, d, vec_T)

% return the cost functional from torque vector
% torque is ndof x nsamples matrix
% T et d are step duration and length
% vect_T contains trajectory.time

% nsamples=3 * precision + 1;

fun_t=diag(torque'*torque);


% ndof=size(coeff,1);

% vec_T=linspace(0,T,nsamples);

xi = 0:T/100:T;

I = interp1(vec_T,fun_t',xi);

S_integral = trapz(xi,I);

torque_cost=S_integral/d;


end