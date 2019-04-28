clear,clc,clf;
t(1) = 0;                % Initial Time [s]
delt = 10^(-3);          % Time Step [s]
i = 1;                   % Counter

M1 = 1E30;               % Mass of Body 1 [kg]
M2 = 1E13;               % Mass of Body 2 [kg]
M3 = 1E24;

Q1 = 1E-9;               % Charge of Body 1 [C]
Q2 = 1E-9;               % Charge of Body 2 [C]
Q3 = 1E-9;

X1(1) = 0;              % Initial X-position of Body 1 [m]
Y1(1) = 0;               % Initial Y-position of Body 1 [m]
Z1(1) = 0;               % Initial Z-position of Body 1 [m]

X2(1) = 20;               % Initial X-position of Body 2 [m]
Y2(1) = 0;               % Initial Y-position of Body 2 [m]
Z2(1) = 0;               % Initial Z-position of Body 2 [m]


X3(1) = 0;               % Initial X-position of Body 3 [m]
Y3(1) = 1.5E8;               % Initial Y-position of Body 3 [m]
Z3(1) = 0;               % Initial Z-position of Body 3 [m]

V1_X(1) = 0;             % Initial X-velocity of Body 1 [m/s]
V1_Y(1) = 0;             % Initial Y-velocity of Body 1 [m/s]
V1_Z(1) = 0;             % Initial Z-velocity of Body 1 [m/s]

V2_X(1) = 0;             % Initial X-velocity of Body 2 [m/s]
V2_Y(1) = -20;             % Initial Y-velocity of Body 2 [m/s]
V2_Z(1) = 0;            % Initial Z-velocity of Body 2 [m/s]

V3_X(1) = 2970;             % Initial X-velocity of Body 3 [m/s]
V3_Y(1) = 0;             % Initial Y-velocity of Body 3 [m/s]
V3_Z(1) = 0;            % Initial Z-velocity of Body 3 [m/s]



P1 = [X1(1),Y1(1),Z1(1)];      % Position vector of Body 1
P2 = [X2(1),Y2(1),Z2(1)];      % Position vector of Body 2
P3 = [X3(1),Y3(1),Z3(1)];      % Position vector of Body 3

V1 = [V1_X(1),V1_Y(1),V1_Z(1)];  % Velocity Vector (Body 1)
V2 = [V2_X(1),V2_Y(1),V2_Z(1)];  % Velocity Vector (Body 2)
V3 = [V3_X(1),V3_Y(1),V3_Z(1)];  % Velocity Vector (Body 3)

while (t<100)              %Loop using time as counter
    t = t + delt;         %Increase time
    [P1,V1,P2,V2,P3,V3] = cal(M1,Q1,P1,V1,M2,Q2,P2,V2,M3,Q3,P3,V3);   %Updates the position and velocity vector after del_t
    X1(i) = P1(1);        %Update X1 - coordinate
    X2(i) = P2(1);        %Update X2 - coordinate
    X3(i) = P3(1);        %Update X3 - coordinate
    
    
    Y1(i) = P1(2);        %Update Y1 - coordinate
    Y2(i) = P2(2);        %Update Y2 - coordinate
    Y3(i) = P3(2);        %Update Y3 - coordinate
    
    Z1(i) = P1(3);        %Update Z1 - coordinate
    Z2(i) = P2(3);        %Update Z2 - coordinate
    Z3(i) = P3(3);        %Update Z3 - coordinate
    
    V1_X(i) = V1(1);      %Update X- comp of velocity 1
    V1_Y(i) = V1(2);      %Update Y- comp of velocity 1
    V1_Z(i) = V1(3);      %Update Z- comp of velocity 1
    
    V2_X(i) = V2(1);      %Update X- comp of velocity 2
    V2_Y(i) = V2(2);      %Update Y- comp of velocity 2
    V2_Z(i) = V2(3);      %Update Z- comp of velocity 2
    
    V3_X(i) = V3(1);      %Update X- comp of velocity 3
    V3_Y(i) = V3(2);      %Update Y- comp of velocity 3
    V3_Z(i) = V3(3);      %Update Z- comp of velocity 3
    
    i = i + 1;            %Update counter
end

animate(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3);
%plot(X,V_X,'b-');
%hold on;
%plot(Y,V_Y,'r-');
%hold off
%grid on;

