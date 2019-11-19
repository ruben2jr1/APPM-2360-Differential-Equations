%%
%Constants
%Initial Loan
yo = 750000;
%Steps per unit time (1/100 of a year)
h = .01; %100 steps per year.
%Interest rate
r = .03;
%Monthly payments
p = 4000;
%Initial step (just to visualize)
yn = yo + h*(r*yo - 12*p);
%Preparing while Loop \/ 
n = 1;
%Concatenating.
tn = 0:n;
xt = zeros(1,length(tn));
yt = zeros(1,length(tn));
% Loop
while yn>0
    if xt<=(5)
        yn = yn + h*(r*yn - 12*p); % -- h = .01 = 1/100
        yt(n) = yn;
        xt(n) = n*h;
    else 
        r = (.03+.015*sqrt(xt(n-1)-5));
        yn = yn + h*(r*yn - 12*p);
        yt(n) = yn;
        xt(n) = n*h;
    end
        n = n+1;
end
for_4000 = max(xt)
fprintf('For p=$4000 then interest is %.2f \n',for_4000*12*4000-750000);
plot(xt,yt);
hold on
%%
% yn+1 = yo + h(f(tn,yn))
%%
%Constants
%Initial Loan
yo = 750000;
%Steps per unit time (1/100 of a year)
h = .01; %100 steps per year.
%Interest rate
r = .03;
%Monthly payments
p = 4500;
%Initial step (just to visualize)
yn = yo + h*(r*yo - 12*p);
%Preparing while Loop \/ 
n = 1;
%Concatenating.
tn = 0:n;
xt = zeros(1,length(tn));
yt = zeros(1,length(tn));
% Loop
while yn>0
    if xt<=(5)
        yn = yn + h*(r*yn - 12*p); % -- h = .01 = 1/100
        yt(n) = yn;
        xt(n) = n*h;
    else 
        r = (.03+.015*sqrt(xt(n-1)-5));
        yn = yn + h*(r*yn - 12*p);
        yt(n) = yn;
        xt(n) = n*h;
    end
        n = n+1;
end
for_4500 = max(xt)
fprintf('For p=$4500 then interest is %.2f \n',for_4500*12*4500-750000);
plot(xt,yt);
hold on
legend('Payment = 4000','Payment = 4500');
axis([0 40 0 750001]);
xlabel('Time (in years)');
ylabel('Balance');