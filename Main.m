% This project is to demostrate the simulation of 3 body simulation.
% The simulation takes account of Gravitational forces and electormagnetic
% force. 

clear,clc,clf;
i = 1;                   % Counter

M1 = 1E18;               % Mass of Body 1 [kg]
M2 = 1E15;               % Mass of Body 2 [kg]
M3 = 1E10;                % Mass of Body 3 [kg]

Q1 = 1E-18;               % Charge of Body 1 [C]
Q2 = -1E-18;               % Charge of Body 2 [C]
Q3 = 1E-18;               % Charge of Body 3 [C]

X1(i) = 0;               % Initial X-position of Body 1 [m]
Y1(i) = 0;               % Initial Y-position of Body 1 [m]
Z1(i) = 0;               % Initial Z-position of Body 1 [m]

X2(i) = 700;             % Initial X-position of Body 2 [m]
Y2(i) = 0;               % Initial Y-position of Body 2 [m]
Z2(i) = 0;             % Initial Z-position of Body 2 [m]

X3(i) = 720;               % Initial X-position of Body 3 [m]
Y3(i) = 0;             % Initial Y-position of Body 3 [m]
Z3(i) = 0;               % Initial Z-position of Body 3 [m]

V1_X = 0;                % Initial X-velocity of Body 1 [m/s]
V1_Y = 0;                % Initial Y-velocity of Body 1 [m/s]
V1_Z = 0;                % Initial Z-velocity of Body 1 [m/s]

V2_X = 0;                % Initial X-velocity of Body 2 [m/s]
V2_Y = -300;             % Initial Y-velocity of Body 2 [m/s]
V2_Z = 0;                % Initial Z-velocity of Body 2 [m/s]

V3_X = 0;              % Initial X-velocity of Body 3 [m/s]
V3_Y = -350;                % Initial Y-velocity of Body 3 [m/s]
V3_Z = 0;                % Initial Z-velocity of Body 3 [m/s]

P1 = [X1(i),Y1(i),Z1(i)];      % Position vector of Body 1
P2 = [X2(i),Y2(i),Z2(i)];      % Position vector of Body 2
P3 = [X3(i),Y3(i),Z3(i)];      % Position vector of Body 3

V1 = [V1_X,V1_Y,V1_Z];         % Velocity Vector (Body 1)
V2 = [V2_X,V2_Y,V2_Z];         % Velocity Vector (Body 2)
V3 = [V3_X,V3_Y,V3_Z];         % Velocity Vector (Body 3)

t(1) = 0;                % Initial Time [s]
delt = 10^(-3);          % Time Step [s]


while (t<100)             %Loop using time as counter
    t = t + delt;         %Increase time
    
    %Updates the position and velocity vector after del_t
    [P1,V1,P2,V2,P3,V3] = cal(M1,Q1,P1,V1,M2,Q2,P2,V2,M3,Q3,P3,V3);   
    
    X1(i) = P1(1);        %Store X1 - coordinate
    X2(i) = P2(1);        %Store X2 - coordinate
    X3(i) = P3(1);        %Store X3 - coordinate
    
    Y1(i) = P1(2);        %Store Y1 - coordinate
    Y2(i) = P2(2);        %Store Y2 - coordinate
    Y3(i) = P3(2);        %Store Y3 - coordinate
    
    Z1(i) = P1(3);        %Store Z1 - coordinate
    Z2(i) = P2(3);        %Store Z2 - coordinate
    Z3(i) = P3(3);        %Store Z3 - coordinate    
    i = i + 1;            %Update counter
end

%Send the position array to animate the trajectory
animate(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3);
