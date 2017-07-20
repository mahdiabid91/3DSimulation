function [CoM,MS_j]=compute_COM(q,step)

global M_j COM_j index_massjoint OP

% robot DH_params
DH_params=get_DH_params_MA(q);
Tr=[];

% step
if step==1
    permut_matrix=eye(4);
elseif step==2
    permut_matrix=[1 0 0 0;
                   0 -1 0 -OP(62);
                   0 0 1 OP(63);
                   0 0 0 1];
    else display('wrong ''step'' value');
end

% Transformation matrix
Tr(1:4,:)=permut_matrix*Transformation_Matrix_MA(DH_params(1,2:5));
for i=2:size(DH_params,1)
ant=DH_params(i,1);
% Tr((4*i-3):(4*i),:)=Tr((4*(i-1)-3):(4*(i-1)),:)*Transformation_Matrix_MA(DH_params(i,2:5));
Tr((4*i-3):(4*i),:)=Tr((4*ant+1):(4*ant+4),:)*Transformation_Matrix_MA(DH_params(i,2:5));
end

CoM=[0;0;0];
for j = index_massjoint
    MS = Tr((4*j-3):(4*j),:) * [COM_j(:,j);1];
    MS_j(:,j)=MS(1:3);
    CoM = CoM + M_j(j) * MS(1:3);
end

CoM = CoM / sum(M_j);
MS_j=MS_j(:,index_massjoint);

end