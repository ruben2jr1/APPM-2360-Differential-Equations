%Concatenating
C = zeros(5,5);
for i = 1:5
    for j = 1:5
        C(i,j) = sqrt(2/5)*cos(pi*(i-(1/2))*(j-(1/2))/5);
    end
end
%spy(C);
%Verify C = C^-1 by verifying C * C = I5
I = C * C;
%Need to round because matlab doesn't automatically.
I = round(I);
spy(I);