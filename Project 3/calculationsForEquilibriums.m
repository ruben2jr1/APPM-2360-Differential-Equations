%Constants.
a = 2*10^-5;
B = 3*10^-5;
y = 2.5*10^-5;
N = 60000;
p = .2;
%For Equilibrium Point 1;
O1 = (-B*N + y + a*N + p);
T1 = y*(p - B*N);
    L11 = (-O1 + sqrt(O1^2 - 4*T1))/2;
    L12 = (-O1 - sqrt(O1^2 - 4*T1))/2;
%For Equilibrium Point 2;
S = p/B;
Z = (y*(N - p/B))/(((a*p)/B) + y);
O2 = (B*Z - y - a*Z)*(-B*S + p);
T2 = (B*S - y - a*S - p);
    L21 = (-(B*Z - T2) + sqrt((B*Z - T2)^2 + 4*(B*Z*T2 - O2)))/2;
    L22 = (-(B*Z - T2) - sqrt((B*Z - T2)^2 + 4*(B*Z*T2 - O2)))/2;
fprintf('First[ %.5f, %.5f ] ... Second[ %.5f, %.5f ]\n',L11,L12,L21,L22);
%{
We see that the point (S,Z) is the 
stable equilibrium point: (.66*10^4 humans ,9.99 zombies)
%}