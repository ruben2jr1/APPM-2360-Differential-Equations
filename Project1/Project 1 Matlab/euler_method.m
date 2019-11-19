%Constants
%Initial Loan
yo = 750000;
%Steps per unit time (1/100 of a year)
h = .01; %tn+1 - tn 
%Interest rate
r = .05;
%Monthly payments
p = 4000;
%Initial step (just to visualize)
yn = yo + h*(r*yo - 12*p);
%Preparing while Loop \/ 
n = 1;
%Concatenating.
tn = 0:n;
yt = zeros(1,length(tn));
% Loop
while yn>0
    yn = yn + h*(r*yn - 12*p);
    yt(n) = yn;
    n = n+1;
end
%Plotting.
t = (1:length(yt)+2)*h;
yt = [750000 (yo + h*(r*yo-12*p)) yt];
plot(t,yt,'color','red');
hold on
%Actual line.
yt2 = ((-210000)*exp(0.05*t)+960000);
yt2 = [750000 yt2];
plot(h*(1:length(yt2)),yt2,'linestyle','--','color','green');
axis([0 h*(length(t)+1) 0 750000])
%Time Period.
fprintf('It takes approx %.3f years to pay the loan. \n',(length(yt)+2)*h)
%%
%Constants
%Initial Loan
yo = 750000;
%Steps per unit time (1/2 of a year)
h = .5; %tn+1 - tn 
%Interest rate
r = .05;
%Monthly payments
p = 4000;
%Initial step (just to visualize)
yn = yo + h*(r*yo - 12*p);
%Preparing while Loop \/ 
n = 1;
%Concatenating.
tn = 0:n;
yt = zeros(1,length(tn));
% Loop
while yn>0
    yn = yn + h*(r*yn - 12*p);
    yt(n) = yn;
    n = n+1;
end
%Plotting.
t = (1:length(yt)+2)*h;
yt = [750000 (yo + h*(r*yo-12*p)) yt];
plot(t,yt,'color','blue');
hold on
axis([0 h*(length(t)+1) 0 750000])
legend('Euler h=0.01','Actual','Euler h=0.5');
xlabel('Time (in years)');
ylabel('Balance');
%Time Period.
fprintf('It takes approx %.3f years to pay the loan. \n',(length(yt)+2)*h)