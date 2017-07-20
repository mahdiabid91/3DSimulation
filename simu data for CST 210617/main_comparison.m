%% Shoulder & elbow motion

xs=linspace(0,100,32);
x1=linspace(0,100,66);
x2=linspace(0,100,62);
x3=linspace(0,100,61);

figure(60)
clf
plot(x1,[q_shoulder_V1(4:end),q_shoulder_V1(1:3)],'r','LineWidth',5)
hold on;grid on
plot(x2,[q_shoulder_V2(4:end),q_shoulder_V2(1:3)],'g','LineWidth',5)
plot(x3,[q_shoulder_V3(5:end),q_shoulder_V3(1:4)],'b','LineWidth',5)
plot(xs,qshould_1,'r:','LineWidth',5)
plot(xs,qshould_2,'g:','LineWidth',5)
plot(xs,qshould_3,'b:','LineWidth',5)

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Extension           ' '        Flexion'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('Shoulder joint motion during GC')


%% elbow

figure(61)
clf
plot(x1,[q_elbow_V1(7:end),q_elbow_V1(1:6)],'r','LineWidth',5)
hold on;grid on
plot(x2,[q_elbow_V2(8:end),q_elbow_V2(1:7)],'g','LineWidth',5)
plot(x3,[q_elbow_V3(8:end),q_elbow_V3(1:7)],'b','LineWidth',5)
plot(xs,qelb_1,'r:','LineWidth',5)
plot(xs,qelb_2,'g:','LineWidth',5)
plot(xs,qelb_3,'b:','LineWidth',5)

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Flexion'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('Elbow joint motion during GC')

%% COMx vertical

xs=linspace(0,100,31);

COMx_1=COMx_1-mean(COMx_1);
COMx_2=COMx_2-mean(COMx_2);
COMx_3=COMx_3-mean(COMx_3);
COMx_exp1=COMx_exp1-mean(COMx_exp1);
COMx_exp2=COMx_exp2-mean(COMx_exp2);
COMx_exp3=COMx_exp3-mean(COMx_exp3);

figure(62)
clf
plot(linspace(0,100,length(COMx_exp1)),[COMx_exp1(13:end),COMx_exp1(1:12)],'r','LineWidth',5)
hold on;grid on
plot(linspace(0,100,length(COMx_exp2)),[COMx_exp2(10:end),COMx_exp2(1:9)],'g','LineWidth',5)
plot(linspace(0,100,length(COMx_exp3)),[COMx_exp3(10:end),COMx_exp3(1:9)],'b','LineWidth',5)
plot(xs,COMx_1,'r:','LineWidth',5)
plot(xs,COMx_2,'g:','LineWidth',5)
plot(xs,COMx_3,'b:','LineWidth',5)

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Vertical displacement'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
% title('COM vertical displacement')

%% COMy lateral

xs=linspace(0,100,31);

COMy_1=COMy_1-mean(COMy_1);
COMy_2=COMy_2-mean(COMy_2);
COMy_3=COMy_3-mean(COMy_3);
COMy_exp1=COMy_exp1-mean(COMy_exp1);
COMy_exp2=COMy_exp2-mean(COMy_exp2);
COMy_exp3=COMy_exp3-mean(COMy_exp3);

figure(63)
clf
plot(linspace(0,100,length(COMy_exp1)),[COMy_exp1(10:end),COMy_exp1(1:9)],'r','LineWidth',5)
hold on;grid on
plot(linspace(0,100,length(COMy_exp2)),[COMy_exp2(12:end),COMy_exp2(1:11)],'g','LineWidth',5)
plot(linspace(0,100,length(COMy_exp3)),[COMy_exp3(15:end),COMy_exp3(1:14)],'b','LineWidth',5)
plot(xs,COMy_1,'r:','LineWidth',5)
plot(xs,COMy_2,'g:','LineWidth',5)
plot(xs,COMy_3,'b:','LineWidth',5)

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Lateral displacement'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('COM lateral displacement')

%% COMxy (frontal plane)
figure(64)
clf
plot(COMy_1,COMx_1,'r')
hold on,grid on,axis equal
plot(COMy_2,COMx_2,'g')
hold on,grid on
plot(COMy_3,COMx_3,'b')

figure(65)
clf
plot(COMy_exp1(1:66),COMx_exp1(1:66),'r')
hold on,grid on,axis equal
plot(COMy_exp2,COMx_exp2,'g')
hold on,grid on
plot(COMy_exp3(1:60),COMx_exp3(1:60),'b')

%% acc comparaison

% lateral acceleration

n=length(accy_w_mean_1);
x=[0:(n-1)]*100/(n-1);
figure(71),clf, plot(x,(accy_w_mean_1),'r','LineWidth',3)
n=length(accy_w_mean_2);
x=[0:(n-1)]*100/(n-1);
figure(71),hold on, plot(x,(accy_w_mean_2),'g','LineWidth',3)
n=length(accy_w_mean_3);
x=[0:(n-1)]*100/(n-1);
figure(71),hold on, plot(x,(accy_w_mean_3),'b','LineWidth',3),grid on

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Lateral acceleration (m/s^2)'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('Lateral acceleration of the hand')

% % acc in sagittal plane
% 
% figure(72),clf,  plot(accx_w_mean_1,accz_w_mean_1,'r','LineWidth',3)
% hold on, plot(accx_w_mean_2,accz_w_mean_2,'g','LineWidth',3)
% hold on, plot(accx_w_mean_3,accz_w_mean_3,'b','LineWidth',3),grid on
% 
% xlabel('Forward acceleration (m/s^2)','fontSize',20,'FontWeight','bold')
% ylabel(['Vertical acceleration (m/s^2)'],'fontSize',20,'FontWeight','bold')
% set(gca,'fontSize',20,'fontWeight','Bold')
% legend('\bf V_1','\bf V_2','\bf V_3')
% title('Acceleration profile of the hand in the frontal plane')

% forward acceleration

n=length(accx_w_mean_1);
x=[0:(n-1)]*100/(n-1);
figure(73),clf, plot(x,(accx_w_mean_1),'r','LineWidth',3)
n=length(accx_w_mean_2);
x=[0:(n-1)]*100/(n-1);
figure(73),hold on, plot(x,(accx_w_mean_2),'g','LineWidth',3)
n=length(accx_w_mean_3);
x=[0:(n-1)]*100/(n-1);
figure(73),hold on, plot(x,(accx_w_mean_3),'b','LineWidth',3),grid on

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Forward acceleration (m/s^2)'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('Forward acceleration of the hand')

% vertical acceleration

n=length(accz_w_mean_1);
x=[0:(n-1)]*100/(n-1);
figure(74),clf, plot(x,(accz_w_mean_1),'r','LineWidth',3)
n=length(accz_w_mean_2);
x=[0:(n-1)]*100/(n-1);
figure(74),hold on, plot(x,(accz_w_mean_2),'g','LineWidth',3)
n=length(accz_w_mean_3);
x=[0:(n-1)]*100/(n-1);
figure(74),hold on, plot(x,(accz_w_mean_3),'b','LineWidth',3),grid on

xlabel('% Gait Cycle','fontSize',20,'FontWeight','bold')
ylabel(['Vertical acceleration (m/s^2)'],'fontSize',20,'FontWeight','bold')
set(gca,'fontSize',20,'fontWeight','Bold')
legend('\bf V_1','\bf V_2','\bf V_3')
title('Vertical acceleration of the hand')

%% histograms of mean acceleration

mean_exp = [2.39 1.55 1.8;
            4.14 2.09 3.24;
            6.31 2.55 3.71];
        
mean_sim = [3.82 3.14 3.08;
            7.24 3.56 4.03;
            8.06 4.89 6.47];
        
figure(100),clf
ax1 = subplot(2,1,1);
xdata = [1 2 3];
% mylabels =['apples', 'oranges', 'strawberries', 'pears'];
ydata = [mean_exp(:,1)'; mean_exp(:,2)'; mean_exp(:,3)'];
hb = bar(xdata,ydata,1);
l = cell(1,size(mean_exp,1));
for i=1:size(mean_exp,1)
    eval(strcat('l{',num2str(i),'}=''V_{',num2str(i),'}'';'))
end
legend(ax1,hb,l,'Orientation','horizontal');
ylim(ax1,[0 7])
ylabel(ax1,'Hand''s acceleration (m/s^2)','FontSize',16,'FontWeight','bold','Color','k')
set(gca,'XTickLabel',{'X - Mean', 'Y - Mean', 'Z - Mean'})
set(gca,'FontWeight','bold','FontSize',20)
title(ax1,'(a)','FontWeight','bold','FontSize',24)

ax2 = subplot(2,1,2);
xdata = [1 2 3];
% mylabels =['apples', 'oranges', 'strawberries', 'pears'];
ydata = [mean_sim(:,1)'; mean_sim(:,2)'; mean_sim(:,3)'];
hb = bar(xdata,ydata,1);
l = cell(1,size(mean_exp,1));
for i=1:size(mean_exp,1)
    eval(strcat('l{',num2str(i),'}=''V_{',num2str(i),'}'';'))
end
legend(ax2,hb,l,'Orientation','horizontal');
ylim(ax2,[0 9])
ylabel(ax2,'Hand''s acceleration (m/s^2)','FontSize',16,'FontWeight','bold','Color','k')
set(gca,'XTickLabel',{'X - Mean', 'Y - Mean', 'Z - Mean'})
set(gca,'FontWeight','bold','FontSize',20)
title('(b)','FontWeight','bold','FontSize',24)


%% histograms of magnitude, peak-trough, variance of vertical acc

data_exp = [1.8 4.25 1.53;
            3.24 6.21 3.53;
            3.71 7.52 5.52];
        
data_sim = [3.08 9 5.08;
            4.03 14.07 14.39;
            6.47 19.23 29.05];
        
figure(101),clf

ax1 = subplot(3,2,1);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_exp(:,1);
algn ={'V_1','V_2','V_3'};
titlen='(a)';
xlab='gait speed (m/s)';
ylab='magnitude (m/s^2)';
xval={''};
% yaxislimit=[0,4];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

ax2 = subplot(3,2,2);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_sim(:,1);
algn ={'V_1','V_2','V_3'};
titlen='(b)';
xlab='gait speed (m/s)';
ylab='magnitude (m/s^2)';
xval={''};
% yaxislimit=[0,4];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

ax1 = subplot(3,2,3);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_exp(:,2);
algn ={'V_1','V_2','V_3'};
titlen='';
xlab='gait speed (m/s)';
ylab='peak-trough (m/s^2)';
xval={''};
% yaxislimit=[0,8];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

ax1 = subplot(3,2,4);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_sim(:,2);
algn ={'V_1','V_2','V_3'};
titlen='';
xlab='gait speed (m/s)';
ylab='peak-trough (m/s^2)';
xval={''};
% yaxislimit=[0,8];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

ax1 = subplot(3,2,5);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_exp(:,3);
algn ={'V_1','V_2','V_3'};
titlen='';
xlab='gait speed (m/s)';
ylab='variance (m^2/s^4)';
xval={''};
% yaxislimit=[0,4];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

ax1 = subplot(3,2,6);

saveopt=0;
titleshow=1;
legendtype=0;
Y=data_sim(:,3);
algn ={'V_1','V_2','V_3'};
titlen='';
xlab='gait speed (m/s)';
ylab='variance (m^2/s^4)';
xval={''};
% yaxislimit=[0,4];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)

%% histograms mag peak var

data_exp = [1.8 4.25 1.53;
            3.24 6.21 3.53;
            3.71 7.52 5.52];
        
data_sim = [3.08 9 5.08;
            4.03 14.07 14.39;
            6.47 19.23 29.05];
        
figure(102),clf

ax1 = subplot(3,1,1);

saveopt=0;
titleshow=0;
legendtype=1;
% Y=[87 88 90  ;90 92 93  ];
Y = [data_exp(:,1)';data_sim(:,1)'];
algn = {'experiments ','simulation '};
titlen='';
xlab='Gait speed (m/s)';
ylab='magnitude (m/s^2)';
xval={'1','1.39','1.61'};
yaxislimit=[0,7];
saveAsName='1';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName,yaxislimit)
legend('\bf experiment','\bf simulation')



ax1 = subplot(3,1,2);

saveopt=0;
titleshow=0;
legendtype=1;
% Y=[87 88 90  ;90 92 93  ];
Y = [data_exp(:,2)';data_sim(:,2)'];
% algn = {'Fuzzy ','Enhanced Fuzzy '};
titlen='';
xlab='Gait speed (m/s)';
ylab='peak-trough (m/s^2)';
xval={'1','1.39','1.61'};
yaxislimit=[0,20];
saveAsName='1';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName,yaxislimit)

ax1 = subplot(3,1,3);

saveopt=0;
titleshow=0;
legendtype=1;
% Y=[87 88 90  ;90 92 93  ];
Y = [data_exp(:,3)';data_sim(:,3)'];
% algn = {'Fuzzy ','Enhanced Fuzzy '};
titlen='';
xlab='Gait speed (m/s)';
ylab='variance (m^2/s^4)';
xval={'1','1.39','1.61'};
yaxislimit=[0,30];
saveAsName='1';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName,yaxislimit)

%% histograms with bar fct

data_exp = [1.8 4.25 1.53;
3.24 6.21 3.53;
3.71 7.52 5.52];

data_sim = [3.08 9 5.08;
4.03 14.07 14.39;
6.47 19.23 29.05];

tmp_data_1 = [data_exp(:,1)'; data_sim(:,1)'];
tmp_data_2 = [data_exp(:,2)'; data_sim(:,2)']; 
tmp_data_3 = [data_exp(:,3)'; data_sim(:,3)']; 

figure(103);
ax1=subplot(3,1,1); b1=bar(tmp_data_1');
set(gca,'XTick',1:3,'xticklabel',{'1','1.39','1.61'})
ax2=subplot(3,1,2); b2=bar(tmp_data_2');
set(gca,'XTick',1:3,'xticklabel',{'1','1.39','1.61'})
ax3=subplot(3,1,3); b3=bar(tmp_data_3');
set(gca,'XTick',1:3,'xticklabel',{'1','1.39','1.61'})

ylabel(ax1,'magnitude (m/s^2)','FontSize',12,'FontWeight','bold','Color','k')
ylabel(ax2,'peak-trough (m/s^2)','FontSize',12,'FontWeight','bold','Color','k')
ylabel(ax3,'variance (m^2/s^4)','FontSize',12,'FontWeight','bold','Color','k')
xlabel(ax1,'Gait velocity (m/s)','FontSize',12,'FontWeight','bold','Color','k')
xlabel(ax2,'Gait velocity (m/s)','FontSize',12,'FontWeight','bold','Color','k')
xlabel(ax3,'Gait velocity (m/s)','FontSize',12,'FontWeight','bold','Color','k')

set(b1(1),'FaceColor', 'k');
set(b1(2),'FaceColor', 'r');
set(b2(1),'FaceColor', 'k');
set(b2(2),'FaceColor', 'r');
set(b3(1),'FaceColor', 'k');
set(b3(2),'FaceColor', 'r');

legend('experimental','simulation');