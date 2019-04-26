clear,clc;
t(1) = 0;           % Initial Time 
X1(1) = 5;          % Initial value of X body 1
Y1(1) = 0;          % Initial value of Y body 1
X2(1) = 0;
Y2(1) = 0;

V1_X(1) = 0;            % Initial value of Velocity X
V1_Y(1) = 10;           % Initial value of Velocity Y
V2_X(1) = 0;            % Initial value of Velocity X
V2_Y(1) = 10;           % Initial value of Velocity Y

delt = 10^(-3);
i = 1;                  %Counter Variable
M1 = 1E13;               %Value of mass
M2 = 1E13;

P1 = [X1(1),Y1(1)];     %Position vector
P2 = [X2(1),Y2(1)];

V1 = [V1_X(1),V1_Y(1)]; %Velocity Vector (Body 1)
V2 = [V2_X(1),V2_Y(1)]; %Velocity Vector (Body 2)

while (t<10)           %Loop using time as counter
    t = t + delt;       %Increase time
    [P1,V1,P2,V2] = cal(M1,P1,V1,M2,P2,V2);   %Updates the position and velocity vector after del_t
    X1(i) = P1(1);      %Update X - coordinate
    X2(i) = P2(1);
    Y1(i) = P1(2);        %Update Y - coordinate
    Y2(i) = P2(2);        %Update Y - coordinate
    V1_X(i) = V1(1);      %Update x- comp of velocity
    V1_Y(i) = V1(2);      %Update x- comp of velocity
    V2_X(i) = V2(1);      %Update x- comp of velocity
    V2_Y(i) = V2(2);      %Update x- comp of velocity
    i = i + 1;
end
animate(X1,Y1,X2,Y2);
%plot(X,V_X,'b-');
%hold on;
%plot(Y,V_Y,'r-');
%hold off
%grid on;

