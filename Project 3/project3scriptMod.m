% Assign parameter values
alpha = 0.00002; beta = 0.00003; gamma = 0.000025; N0 = 60000;ro = 0.2;
% Set length of simulation
tspan = [0 65];
% Set initial conditions
y0 = [59999; 1];
% Solve system
[t,y] = ode45(@(t,y) szrM(t,y,alpha,beta,gamma,N0,ro), tspan, y0);
plot(t,y);
hold
[r,c] = size(y);
R = zeros(r,1);
for i = 1:r
    R(i,1) = 60000 - y(i,1) - y(i,2);
end
plot(t,R);