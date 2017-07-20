%% BAR graph
%
% # developer Er.Abbas Manthiri S
% # abbasmanthiribe@gmail.com
% # Developed in 2014b
%
%% basic initialization
clc
clear
close all
warning off all

%% demo1 bar
% set output methods
saveopt=0;
titleshow=1;
legendtype=1;
Y=[87 88 90 91 93 94;90 92 93 94 95 96];
algn = {'Fuzzy ','Enhanced Fuzzy '};
titlen='Precision';
xlab='Number of records';
ylab=titlen;
xval={'500','1000','1500','2000','2500','3000'};
yaxislimit=[80,100];
saveAsName='1';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName,yaxislimit)
%% demo2 bar
% set output methods
saveopt=0;
titleshow=1;
legendtype=2;
Y=[87;88;90;91;93;94;90;92;93;94;95;96];
algn ={'A','B','C','D','E','F','G','H','I','J','K','L'};
titlen='Precision';
xlab='Number of records';
ylab=titlen;
xval={' '};
% yaxislimit=[85,100];
saveAsName='2';
bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,saveAsName)