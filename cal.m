function [P_f,V_f] = cal(P,V,m)
del_t = 10^-3;
G = 6.67E-11;
R = (P(1)^2 + P(2)^2)^(3/2);
M = 1E11;
P_f = P + V *del_t;
V_f = V - G*M*m/R .*P* del_t;

