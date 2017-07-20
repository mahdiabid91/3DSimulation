%% display main data

global nsamples

display(['Step length:     ' num2str(OP(63))])
display(['Step width:     ' num2str(OP(62))])

x=linspace(0,100,2*size(Q,2));

% arms
shoulder_pos=[-Q(15,:),-Q(18,:)]/degree;
elbow_pos=[-Q(16,:),-Q(19,:)]/degree;
knee_pos=[-Q(3,:),Q(10,:)]/degree;

display(['shoulder ROM:     ' num2str(range(shoulder_pos))])
display(['elbow ROM:     ' num2str(range(elbow_pos))])


figure(2)
clf
plot(x,shoulder_pos,'k','LineWidth',3)
hold on;grid on
plot(x,elbow_pos,'r','LineWidth',3)
xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Extension           ' '        Flexion'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',16)
title('Shoulder / elbow joint motion during GC')

qshould_1 = shoulder_pos;
qelb_1 = elbow_pos;

figure(3)
plot(x,knee_pos,'b','LineWidth',3)
title('Knee joint motion during GC')

% difference between x(h) and L2+L3+L4
display(['difference between x(h) and L2+L3+L4:     ' num2str(-OP(58)+L2+L3+L4)])

% COM
for j=2:16
    [CoM_pos2(:,j-1),MS_j]=compute_COM(Q(:,j),2);
end

figure(4)
plot([COM_pos(1,:) CoM_pos2(1,:)],'r','LineWidth',3)
figure(5)
plot([COM_pos(2,:) CoM_pos2(2,:)+COM_pos(2,1)-CoM_pos2(2,end)],'r','LineWidth',3)

COMx_3 = [COM_pos(1,:) CoM_pos2(1,:)];
COMy_3 = [COM_pos(2,:) CoM_pos2(2,:)+COM_pos(2,1)-CoM_pos2(2,end)];


%ankle
% figure(6)
% plot(Q(2,:)/degree)
% hold on
% plot(-Q(11,:)/degree,'r')

% figure (7)
% plot(Fval_vector(4:end));

%% data for acceleration calculation

T=OP(63)/Vitesse_marche;
trajectory=polynomial(coefficients, T, 33);

Temps_acc=trajectory.time;
Q_acc=trajectory.q;
Qp_acc=trajectory.qp;
Qpp_acc=trajectory.qpp;

ns_acc=size(Q_acc,2);

%% 3D acc of the hand

%Hands position (O20 for right arm and O24 for left arm)
pos_20=zeros(3,ns_acc); vel_20=pos_20; acc_20=pos_20;
pos_24=pos_20; vel_24=pos_20; acc_24=pos_20;
acc_3d_20=zeros(1,ns_acc);acc_3d_24=acc_3d_20;
for i=1:ns_acc
    m_20=T_0_20(Q_acc(:,i),L);
    pos_20(:,i)=m_20(:,4);
    
    m_24=T_0_24(Q_acc(:,i),L);
    pos_24(:,i)=m_24(:,4);
end
clear m_20 m_24

figure(10)
plot(pos_20(1,:),'r')
hold on
plot(pos_20(2,:),'g')
plot(pos_20(3,:))

% velocity
for k=1:3 %x,y and z
    vel_20(k,:)=derive(Temps_acc,pos_20(k,:));
    vel_24(k,:)=derive(Temps_acc,pos_24(k,:));
end
% acceleration
for k=1:3 %x,y and z
    acc_20(k,:)=derive(Temps_acc,vel_20(k,:));
    acc_24(k,:)=derive(Temps_acc,vel_24(k,:));
end

% 3D acceleration
for i=1:ns_acc
    acc_3d_20(i)=norm(acc_20(:,i));
    acc_3d_24(i)=norm(acc_24(:,i));
end

acc_3d=[acc_3d_20 acc_3d_24];
IND=[8:92,103:198];

figure(11)
plot(acc_3d(IND))

acc_norm_1 = acc_3d(IND);
%% acc in the sagittal plane
% acc_forward=[acc_20(3,:),acc_24(3,:)];
% acc_vertical=[acc_20(1,:),acc_24(1,:)];
acc_forward=[acc_20(3,:) acc_24(3,:)];
acc_vertical=[acc_20(1,:) acc_24(1,:)];

figure(12),clf,plot(acc_forward,acc_vertical,'b'),
hold on, plot(acc_forward(100),acc_vertical(100),'k*'),
hold on, plot(acc_forward(1),acc_vertical(1),'r*'),

% acc_forward=[acc_24(3,:)];
% acc_vertical=[acc_24(1,:)];
% 
% figure(12),hold on, plot(acc_forward,acc_vertical,'r')
% hold on, plot(acc_forward(1),acc_vertical(1),'r*'),

%% lateral acc of hands
acc_lateral = [acc_20(2,:),-acc_24(2,:)];
figure(13),clf,hold on,plot(acc_lateral)

acc_lat_1 = acc_lateral;
%% forward acc of hands
acc_forward = [acc_20(3,:),acc_24(3,:)];
figure(14),clf,hold on,plot(acc_forward)

acc_frw_1 = acc_forward;
%% vertical acc of hands
acc_vertical = [acc_20(1,:),acc_24(1,:)];
figure(15),clf,hold on,plot(acc_vertical([3:97,113:189]))

acc_vrt_1 = acc_vertical([3:97,113:189]);
%% 3D acc of the elbow

% %elbows position (O19 for right arm and O23 for left arm)
% pos_19=zeros(3,ns_acc); vel_19=pos_19; acc_19=pos_19;
% pos_23=pos_20; vel_23=pos_20; acc_23=pos_20;
% acc_3d_19=zeros(1,ns_acc);acc_3d_23=acc_3d_19;
% for i=1:ns_acc
%     m_19=T_0_19(Q_acc(:,i),L);
%     pos_19(:,i)=m_19(:,4);
%     
%     m_23=T_0_23(Q_acc(:,i),L);
%     pos_23(:,i)=m_23(:,4);
% end
% clear m_19 m_23
% 
% figure(14)
% plot(pos_19(1,:))
% hold on
% plot(pos_19(2,:),'r')
% plot(pos_19(3,:),'g')
% 
% % velocity
% for k=1:3 %x,y and z
%     vel_19(k,:)=derive(Temps_acc,pos_19(k,:));
%     vel_23(k,:)=derive(Temps_acc,pos_23(k,:));
% end
% % acceleration
% for k=1:3 %x,y and z
%     acc_19(k,:)=derive(Temps_acc,vel_19(k,:));
%     acc_23(k,:)=derive(Temps_acc,vel_23(k,:));
% end
% 
% % 3D acceleration
% for i=1:ns_acc
%     acc_3d_19(i)=norm(acc_19(:,i));
%     acc_3d_23(i)=norm(acc_23(:,i));
% end
% 
% figure(15)
% clf
% plot([acc_3d_19 acc_3d_23],'LineWidth',3)
% hold on;grid on
% xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
% ylabel(['3D acceleration (m/s^2)'],'fontSize',20,'FontWeight','bold','Interpreter','tex')
% set(gca,'fontSize',16)
% title('3D acceleration of the hand')
