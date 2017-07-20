function moment_cost=moment_to_cost(moment, T, d,vec_T)

% return the cost functional from moment aroun y axis
% moment is is 3 x nsamples matrix
% T is step duration 
% vect_T contains trajectory.time

% nsamples=3 * precision + 1;

fun_t=abs(moment(2,:));


% ndof=size(coeff,1);

% vec_T=linspace(0,T,nsamples);

xi = 0:T/100:T;

I = interp1(vec_T,fun_t',xi);

moment_cost = trapz(xi,I)/d;



end