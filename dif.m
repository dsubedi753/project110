clear,clc,clf;
t(1) = 0;                % Initial Time [s]
delt = 10^(-3);          % Time Step [s]
i = 1;                   % Counter

M1 = 1E13;               % Mass of Body 1 [kg]
M2 = 1E13;               % Mass of Body 2 [kg]

Q1 = 1E-9;               % Charge of Body 1 [C]
Q2 = 1E-9;               % Charge of Body 2 [C]

X1(1) = 10;              % Initial X-position of Body 1 [m]
Y1(1) = 0;               % Initial Y-position of Body 1 [m]
Z1(1) = 0;               % Initial Z-position of Body 1 [m]

X2(1) = 0;               % Initial X-position of Body 2 [m]
Y2(1) = 0;               % Initial Y-position of Body 2 [m]
Z2(1) = 0;               % Initial Z-position of Body 2 [m]

V1_X(1) = 0;             % Initial X-velocity of Body 1 [m/s]
V1_Y(1) = 2;             % Initial Y-velocity of Body 1 [m/s]
V1_Z(1) = 3;             % Initial Z-velocity of Body 1 [m/s]

V2_X(1) = 0;             % Initial X-velocity of Body 2 [m/s]
V2_Y(1) = 0;             % Initial Y-velocity of Body 2 [m/s]
V2_Z(1) = 10;            % Initial Z-velocity of Body 2 [m/s]



P1 = [X1(1),Y1(1),Z1(1)];      % Position vector of Body 1
P2 = [X2(1),Y2(1),Z2(1)];      % Position vector of Body 2

V1 = [V1_X(1),V1_Y(1),V1_Z(1)];  % Velocity Vector (Body 1)
V2 = [V2_X(1),V2_Y(1),V2_Z(1)];  % Velocity Vector (Body 2)

while (t<10)              %Loop using time as counter
    t = t + delt;         %Increase time
    [P1,V1,P2,V2] = cal(M1,Q1,P1,V1,M2,Q2,P2,V2);   %Updates the position and velocity vector after del_t
    X1(i) = P1(1);        %Update X1 - coordinate
    X2(i) = P2(1);        %Update X2 - coordinate
    
    Y1(i) = P1(2);        %Update Y1 - coordinate
    Y2(i) = P2(2);        %Update Y2 - coordinate
    
    Z1(i) = P1(3);        %Update Z1 - coordinate
    Z2(i) = P2(3);        %Update Z2 - coordinate
    
    V1_X(i) = V1(1);      %Update X- comp of velocity 1
    V1_Y(i) = V1(2);      %Update Y- comp of velocity 1
    V1_Z(i) = V1(3);      %Update Z- comp of velocity 1
    
    V2_X(i) = V2(1);      %Update X- comp of velocity 2
    V2_Y(i) = V2(2);      %Update Y- comp of velocity 2
    V2_Z(i) = V2(3);      %Update Z- comp of velocity 2
    
    i = i + 1;            %Update counter
end
animate(X1,Y1,Z1,X2,Y2,Z2);
%plot(X,V_X,'b-');
%hold on;
%plot(Y,V_Y,'r-');
%hold off
%grid on;

