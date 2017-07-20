T=3;

q_ini=0;
q_int1=2;
q_int2=1;
q_fin=-1;
qp_ini=-0.1;
qp_fin=0.2;

%%  Calculation of coefficients of the 3 polynomials: q0(t) = a00 + a01*t + a02*t^2 + a03*t^3
%                                                     q1(t) = a10 + a11*(t-T/3) + a12*(t-T/3)^2 + a13*(t-T/3)^3
%                                                     q2(t) = a20 + a21*(t-2*T/3) + a22*(t-2*T/3)^2 + a23*(t-2*T/3)^3
%                                                     coeff = [a00 a01 a02 a03 a10 a11 a12 a13 a20 a21 a22 a23]^T


coef_matrix=[1 0 0 0 0 0 0 0 0 0 0 0;
             1 T/3 T^2/9 T^3/27 0 0 0 0 0 0 0 0;
             0 1 0 0 0 0 0 0 0 0 0 0 ;
             0 0 1 T 0 0 -1 0 0 0 0 0;
             0 1 2*T/3 T^2/3 0 -1 0 0 0 0 0 0 ;
             0 0 0 0 1 0 0 0 0 0 0 0 ;
             0 0 0 0 1 T/3 T^2/9 T^3/27 0 0 0 0 ;
             0 0 0 0 0 0 1 T 0 0 -1 0;
             0 0 0 0 0 1 2*T/3 T^2/3 0 -1 0 0;
             0 0 0 0 0 0 0 0 1 0 0 0;
             0 0 0 0 0 0 0 0 1 T/3 T^2/9 T^3/27;
             0 0 0 0 0 0 0 0 0 1 2*T/3 T^2/3];
% size(coef_matrix)

Y=[q_ini q_int1 qp_ini 0 0 q_int1 q_int2 0 0 q_int2 q_fin qp_fin]';

coeff=coef_matrix\Y;

%% verification of coefficients
a00=coeff(1);a01=coeff(2);a02=coeff(3);a03=coeff(4);a10=coeff(5);a11=coeff(6);a12=coeff(7);a13=coeff(8);a20=coeff(9);a21=coeff(10);a22=coeff(11);a23=coeff(12);
t0=0;t1=1;t2=2;t3=3;

%pos
q0 = a00 + a01*t0 + a02*t0^2 + a03*t0^3
q1 = a00 + a01*t1 + a02*t1^2 + a03*t1^3
q1 = a10 + a11*(t1-T/3) + a12*(t1-T/3)^2 + a13*(t1-T/3)^3
q2 = a10 + a11*(t2-T/3) + a12*(t2-T/3)^2 + a13*(t2-T/3)^3
q2 = a20 + a21*(t2-2*T/3) + a22*(t2-2*T/3)^2 + a23*(t2-2*T/3)^3
q3 = a20 + a21*(t3-2*T/3) + a22*(t3-2*T/3)^2 + a23*(t3-2*T/3)^3
%vel
qp0 = a01 + 2*a02*t0 + 3*a03*t0^2
qp1 = a01 + 2*a02*t1 + 3*a03*t1^2
qp1 = a11 + 2*a12*(t1-T/3) + 3*a13*(t1-T/3)^2
qp2 = a11 + 2*a12*(t2-T/3) + 3*a13*(t2-T/3)^2
qp2 = a21 + 2*a22*(t2-2*T/3) + 3*a23*(t2-2*T/3)^2
qp3 = a21 + 2*a22*(t3-2*T/3) + 3*a23*(t3-2*T/3)^2
%acc
qpp0 = 2*a02 + 6*a03*t0
qpp1 = 2*a02 + 6*a03*t1
qpp1 = 2*a12 + 6*a13*(t1-T/3)
qpp2 = 2*a12 + 6*a13*(t2-T/3)
qpp2 = 2*a22 + 6*a23*(t2-2*T/3)
qpp3 = 2*a22 + 6*a23*(t3-2*T/3)