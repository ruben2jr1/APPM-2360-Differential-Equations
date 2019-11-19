% Assign parameter values
% Add constants here
alpha = 0.000021; beta = 0.00003; gamma = 0.000025; N0 = 60000;c = .4;
% Set length of simulation
tspan = [0 45];
% Set initial conditions
y0 = [59999; 1];
% Solve system
% Add constants here.
[t,y] = ode45(@(t,y) szrMM(t,y,alpha,beta,gamma,N0,c), tspan, y0);

plot(t,y);
hold
[r,~] = size(y);
R = zeros(r,1);
for i = 1:r
    R(i,1) = 60000 - y(i,1) - y(i,2);
end
plot(t,R);
hold off
clear alpha beta c gamma i N0 r R tspan y0
clc