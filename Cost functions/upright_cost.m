function Cup=upright_cost(p_O16, p_h, G, T,d, vec_T)

% return the cost functional from upright trunk position
% p_O16 is 3 x nsamples matrix: position of O16
% p_h is 3 x nsamples matrix: position of hip center
% G is gravity vector
% T is step length
% vect_T contains trajectory.time

nsamples=length(vec_T);

Mat_G = [ones(1,nsamples)*G(1);ones(1,nsamples)*G(2);ones(1,nsamples)*G(3)];

% size(Mat_G)
% size(p_O16-p_h)

fun_t = dot((p_O16-p_h),Mat_G);


% ndof=size(coeff,1);

% vec_T=linspace(0,T,nsamples);

xi = 0:T/100:T;

I = interp1(vec_T,fun_t',xi);

Cup = trapz(xi,I)/d;



end