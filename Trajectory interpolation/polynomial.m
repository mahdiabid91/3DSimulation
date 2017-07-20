function trajectory=polynomial(coeff, T, precision)

% precision is the number of samples between two consecutive knots
% so the total number of samples is 3 x precision + 1
% trajectory is a structure containing all times samples, all corresponding q, dq and ddq

nsamples=3 * precision + 1;

ndof=size(coeff,1);

% associating coefficients (each coef is ndof x 1
a00=coeff(:,1);a01=coeff(:,2);a02=coeff(:,3);a03=coeff(:,4);
a10=coeff(:,5);a11=coeff(:,6);a12=coeff(:,7);a13=coeff(:,8);
a20=coeff(:,9);a21=coeff(:,10);a22=coeff(:,11);a23=coeff(:,12);

%variables initialization
q=zeros(ndof,nsamples);
dq=zeros(ndof,nsamples);
ddq=zeros(ndof,nsamples);
vec_T=linspace(0,T,nsamples);

% trajectory calculation at each time sample
for i=1:nsamples
    t=vec_T(i);
    if i<precision+2
    q(:,i)=a00+a01*t+a02*t^2+a03*t^3;
    dq(:,i)=a01+2*a02*t+3*a03*t^2;
    ddq(:,i)=2*a02+6*a03*t;
    elseif i<2*precision+2
    q(:,i)=a10+a11*(t-T/3)+a12*(t-T/3)^2+a13*(t-T/3)^3;
    dq(:,i)=a11+2*a12*(t-T/3)+3*a13*(t-T/3)^2;
    ddq(:,i)=2*a12+6*a13*(t-T/3);
    else
    q(:,i)=a20+a21*(t-2*T/3)+a22*(t-2*T/3)^2+a23*(t-2*T/3)^3;
    dq(:,i)=a21+2*a22*(t-2*T/3)+3*a23*(t-2*T/3)^2;
    ddq(:,i)=2*a22+6*a23*(t-2*T/3);            
    end

    %% generate output of the function
    trajectory.time=vec_T;
    trajectory.q=q;
    trajectory.qp=dq;
    trajectory.qpp=ddq;


end