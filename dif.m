clear,clc;
t(1) = 0;   % Initial Time 
X(1) = 5;   % Initial value of X
V(1) = 1;   % Initial value of Velocity
delt = 0.001;
i = 1;      %Counter Variable
M = 1;      %Value of mass
figure(1)
axis([-2 10 -2 2])

while t <= 15
    t(i+1) = t(i) + delt;    
    V(i+1) = V(i)+ delt * a_x(X(i),M); % Euler's method
    X(i+1) = X(i)+ delt * V(i);        % Simple S = S_0 + V *t
    i = i + 1;
end

A  = linspace(1,10);
B = A.^2;

plot(t,X,'b-');
grid on;
hold on;
%plot(A,B, 'r--');
hold off
