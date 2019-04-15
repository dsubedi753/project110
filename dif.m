clear,clc;
t(1) = 0;           % Initial Time 
X(1) = 3;           % Initial value of X
Y(1) = -10;         % Initial value of Y

V_X(1) = 2;         % Initial value of Velocity X
V_Y(1) = 2;         % Initial value of Velocity Y

delt = 0.001;
i = 1;              %Counter Variable
M = 100;            %Value of mass

P = [X(1),Y(1)];
V = [V_X(1),V_Y(1)];

while t <= 10
    t(i+1) = t(i) + delt;    
    [P,V] = cal(P,V,M);
    X(i) = P(1);
    V_X(i) = V(1);
    Y(i) = P(2);
    V_Y(i) = V(2);
    i = i + 1;
end
animate(X,Y);
%plot(X,V_X,'b-');
%hold on;
%plot(Y,V_Y,'r-');
%hold off
%grid on;
