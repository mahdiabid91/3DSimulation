function dy = derive(t,y) 

if size(y,2)==1
dy=[(y(2)-y(1)); (y(3:end)-y(1:end-2))/2; y(end)-y(end-1)]/(t(2)-t(1));
else
    dy=[(y(2)-y(1)), (y(3:end)-y(1:end-2))/2, y(end)-y(end-1)]/(t(2)-t(1));
end

return