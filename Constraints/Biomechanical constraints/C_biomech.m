% function C=C_biomech(Torque,Q,QP)
function C=C_biomech(Q)

% torque is ndof x nsamples matrix
% Q is ndof x nsamples matrix : joints positions for all samples
% QP is ndof x nsamples matrix : joints rates for all samples

global Torque_max qp_max lb_q ub_q

% define_biomechanical_limits;

ndof=size(Q,1);
nsamples=size(Q,2);

% c_tor=zeros(ndof*nsamples,1);
% c_qp=c_tor;
c_lq=zeros(ndof*nsamples,1);
c_uq=c_lq;

for k=1:nsamples
%     c_tor((((k-1)*ndof)+1):(k*ndof))=abs(Torque(:,k))-Torque_max;
%     c_qp((((k-1)*ndof)+1):(k*ndof))=abs(QP(:,k))-qp_max;
    c_lq((((k-1)*ndof)+1):(k*ndof))=lb_q-Q(:,k);
    c_uq((((k-1)*ndof)+1):(k*ndof))=Q(:,k)-ub_q;
end

%  C=[c_tor; c_qp; c_lq; c_uq];
 C=[ c_lq; c_uq];

end

