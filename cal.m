function [vel,pos] = cal(P,V,m)
del_t = 10^-1;
G = 6.67E-11;
R = (P(1)^2 + P(2)^2)^(3/2);
M = 1E11;
pos = P + V *del_t;
vel = V + G*M*m/R .*P* del_t;

