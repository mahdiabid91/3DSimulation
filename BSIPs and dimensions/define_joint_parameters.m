global M1 M3 M4 M11 M12 M14 M15 M16 M19 M20 M23 M24 M25
global MX1 MX3 MX4 MX11 MX12 MX14 MX15 MX16 MX19 MX20 MX23 MX24 MX25
global MY1 MY3 MY4 MY11 MY12 MY14 MY15 MY16 MY19 MY20 MY23 MY24 MY25
global MZ1 MZ3 MZ4 MZ11 MZ12 MZ14 MZ15 MZ16 MZ19 MZ20 MZ23 MZ24 MZ25
global XX1 XX3 XX4 XX11 XX12 XX14 XX15 XX16 XX19 XX20 XX23 XX24 XX25
global YY1 YY3 YY4 YY11 YY12 YY14 YY15 YY16 YY19 YY20 YY23 YY24 YY25
global ZZ1 ZZ3 ZZ4 ZZ11 ZZ12 ZZ14 ZZ15 ZZ16 ZZ19 ZZ20 ZZ23 ZZ24 ZZ25

global M_j MI_j COM_j ant_j index_massjoint

%PI : set joints mass parameters

joint_params;

%masses (1*25)

for j=1:25
    
    eval(['M_j(' num2str(j) ')=m' num2str(j) ';'])
    
end


%1st moment of inertia (3*25)

for j=1:25
    
    eval(['MI_j(:,' num2str(j) ')=[mx' num2str(j) ';my' num2str(j) ';mz' num2str(j) '];'])
    
end

%COM (3*25)

for j=1:25
    
    if M_j(j)>0
    COM_j(:,j)=MI_j(:,j)./M_j(j);
    else
        COM_j(:,j)=MI_j(:,j);
    end
end

%ant (1*25) 
 
ant_j=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,...
        7,15,16,17,18,19,...
        16,21,22,23,16];
    
index_massjoint=find(M_j>0);