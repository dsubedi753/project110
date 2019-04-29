function [P1_f,V1_f,P2_f,V2_f,P3_f,V3_f] = cal(M1,Q1,P1,V1,M2,Q2,P2,V2,M3,Q3,P3,V3)
del_t = 10^-3;
G = 6.67E-11;                   %Gravitational constant
perm = 8.8542E-12;              %Permitivity of free space
k = 1/(4*pi*perm);
D12 = P1 - P2;                  %Vector from body 2 to 1
D13 = P1 - P3;                  %Vector from body 3 to 1
D23 = P2 - P3;                  %Vector from body 3 to 2

R12 = (D12(1)^2 + D12(2)^2 + D12(3)^2)^(1/2);   %Distance between bodies 1 and 2
R13 = (D13(1)^2 + D13(2)^2 + D13(3)^2)^(1/2);   %Distance between bodies 1 and 3
R23 = (D23(1)^2 + D23(2)^2 + D23(3)^2)^(1/2);   %Distance between bodies 2 and 3

FG12 = - G*M1*M2/R12^3 .* D12;                  %Gravitational force between 1 and 2
FG13 = - G*M1*M3/R13^3 .* D13;                  %Gravitational force between 1 and 3
FG23 = - G*M2*M3/R23^3 .* D23;                  %Gravitational force between 2 and 3

%R is cubed to find the unit vector
FE12 = k * Q1*Q2 / R12^3 .*D12;                 %Coulombic force between 1 and 2
FE13 = k * Q1*Q3 / R13^3 .*D13;                 %Coulombic force between 1 and 2
FE23 = k * Q2*Q3 / R23^3 .*D23;                 %Coulombic force between 2 and 3

P1_f = P1 + V1 *del_t;
P2_f = P2 + V2 *del_t;
P3_f = P3 + V3 *del_t;


V1_f = V1 + (FG12/M1 * del_t) + (FE12/abs(Q1) *del_t) +(FG13/M1 * del_t) + (FE13/abs(Q1) *del_t);   %Equation of final velocity of M1
V2_f = V2 - (FG12/M2 * del_t) - (FE12/abs(Q2) *del_t) +(FG23/M2 * del_t) + (FE23/abs(Q2) *del_t);   %Equation of final velocity of M1
V3_f = V3 - (FG13/M3 * del_t) - (FE13/abs(Q3) *del_t) -(FG23/M3 * del_t) - (FE23/abs(Q3) *del_t);   %Equation of final velocity of M1

