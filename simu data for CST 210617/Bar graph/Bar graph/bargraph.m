function bargraph(Y,xlab,ylab,titlen,algn,xval,titleshow,legendtype,saveopt,sname,yaxislimit)
% Color defining
clr={[0,0,0],[1,0,0],[1,0,0],[0,0,0],[1,0,1],[0,1,1],[0.1 0.5 0.8],[1,1,0],[0.5,0,0.5],...
    [0.8594,0.0781,0.2344],[1,0.5469,0],[0.1836,0.3086,0.3086],[1.0,0.0781,0.5742],[0,0.5,0.5],[0.5,0.1,0.8],[0.1 0.5 0.8]};
% Graphing
z=1:length(Y(:));
z=reshape(z(:),size(Y))/(size(Y,1));
for i=2:size(z,2)
    z(:,i:end)=z(:,i:end)+1;
end
w=z(1,1);
z=z+mean(z(:,1))-z(1,1);
% figobj=figure('name','F-Measure comparision','numbertitle','off');
figobj=figure(102);
hold on
for i=1:size(z,1)
    for j=1:size(z,2)
        bar(z(i,j),Y(i,j),'barwidth',0.8*w,'facecolor',clr{i})
    end
end
% Find xAxis
xmax=floor(z(end,end))+1;
xlim([0,xmax])
% xlim([0.4,1.6])

if nargin==11
  ylim(yaxislimit)  
end
set(gca,'XTick',1:2:xmax,'xticklabel',xval)
xlabel(xlab,'FontSize',12,'FontWeight','bold')
ylabel(ylab,'FontSize',12,'FontWeight','bold')
if titleshow
title(titlen,'FontSize',12,'FontWeight','bold')
end
% Legend making
legendpos={'Best','BestOutside','North','South','East','West','NorthEast','NorthWest','SouthEast','SouthWest','NorthOutside','SouthOutside',...
    'EastOutside','WestOutside','NorthEastOutside','NorthWestOutside','SouthEastOutside','SouthWestOutside'};
h1=legend(algn{1:size(Y,1)},'location',legendpos{legendtype});
hc = findobj(h1, '-property', 'FaceColor');
for i=1:size(Y,1)
set(hc(length(algn)-i+1),'FaceColor',clr{i})
end
if saveopt
    saveas(figobj,strcat(sname,'.jpg'))
end