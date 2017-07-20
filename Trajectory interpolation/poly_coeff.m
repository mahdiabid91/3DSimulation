function coeff=poly_coeff(q_ini, q_int1, q_int2, q_fin, qp_ini, qp_fin, T)

% exple: q_ini is a column vector (ndof x 1) containing initial positions
% for different dofs

ndof=size(q_ini,1);

%  Calculation of coefficients of the 3 polynomials: q0(t) = a00 + a01*t + a02*t^2 + a03*t^3
%                                                     q1(t) = a10 + a11*(t-T/3) + a12*(t-T/3)^2 + a13*(t-T/3)^3
%                                                     q2(t) = a20 + a21*(t-2*T/3) + a22*(t-2*T/3)^2 + a23*(t-2*T/3)^3
%                                                     coeff = [a00 a01 a02 a03 a10 a11 a12 a13 a20 a21 a22 a23]^T

% Y is (12 x ndof) matrix
Y=[q_ini q_int1 qp_ini zeros(ndof,1) zeros(ndof,1) q_int1 q_int2 zeros(ndof,1) zeros(ndof,1) q_int2 q_fin qp_fin]';

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


% (ndof x 12) matrix containing 12 coefficients for different dofs
coeff=coef_matrix\Y; coeff=coeff';

end