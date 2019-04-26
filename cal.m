function [P1_f,V1_f,P2_f,V2_f] = cal(M1,P1,V1,M2,P2,V2)
del_t = 10^-3;
G = 6.67E-11;   %Gravitational constant
D = P1 - P2;
R = (D(1)^2 + D(2)^2)^(1/2);    %Distance between two bodies
F = - G*M1*M2/R^3 .* D;
P1_f = P1 + V1 *del_t;
P2_f = P2 + V2 *del_t;
%R is cubed to find the unit vector
V1_f = V1 - F/M1 * del_t; %Equation of final velocity of M1
V2_f = V2 - F/M2 * del_t;   %Equation of final velocity of M1

