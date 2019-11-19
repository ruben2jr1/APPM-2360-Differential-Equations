%This part of the project is still a little iffy
%For n = 512.
n = 4;
C512 = zeros(n,n);
for i = 1:n
    for j = 1:n
        C512(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
% Eigen Values.
Eig_Values = eig(C512);
% Eigen Values result in either +-1 +- 0i
%Which simplifies to 1 or -1 
%This makes sense since in question 2 we 
%Saw that the determinant of all nxn matrices
%of the DCT form is equal to 1 or -1.
%C^-1 is intertible and therefore C can be
%RREF to the identity matrix and therefore
%the only solution to Ax = Lx is 1 & -1
%I'd imagine the alternating signs come from 
%The (-1)^r+c part of determinant taking.
%Y = zeros(1,512);
plot(Eig_Values','*');