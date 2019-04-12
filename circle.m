%Circle
clear,clc;
r = 1;
theta = 0:pi/100:2*pi;
X = 2 + r * cos(theta);
Y = 3 + r * sin(theta);
h = plot(X,Y,'r');

k =0 ;
while k<1
    k = k + 0.01;
    X = X + k;
    set(h,'XData',X,'YData',Y)
    
    drawnow
end
