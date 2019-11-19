%Analysis of fixed rate mortgages.
%constant r (fixed rate)
r = 0.03;
%function of t (max 5 years).
t5 = 0:.25:5;
%%
%compounding factor for 4 loan compounds a year:
n = 4;
%compounding function for 4 loan compounds a year:
y4 = ((1+r*t5/n).^n)*750000;
y4(t5==5)
plot(t5,y4,'color','red')
hold on
%%
%compunding factor for 12 loan compounds a year:
n = 12;
%compounding function for 12 loan compounds a year:
y12 = ((1+r*t5/n).^n)*750000;
y12(t5==5)
plot(t5,y12,'color','blue')
hold on 
%%
%Interest is compounded continously.
%Compunding function
yC = (750000)*exp(r*t5);
yC(t5==5)
plot(t5,yC,'color','green')
hold on
legend('Compounded 4 times a year','Compounded 12 times a year','Continous Compound')
xlabel('Time (In years)')
ylabel('Amount compounded')