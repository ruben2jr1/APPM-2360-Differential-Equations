%For n = 2.
n = 2;
C2 = zeros(n,n);
for i = 1:n
    for j = 1:n
        C2(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
%For n = 3.
n = 3;
C3 = zeros(n,n);
for i = 1:n
    for j = 1:n
        C3(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
%For n = 4.
n = 4;
C4 = zeros(n,n);
for i = 1:n
    for j = 1:n
        C4(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
% %Visualization.
% subplot(2,2,1);
% spy(C2);
% subplot(2,2,2);
% spy(C3);
% subplot(2,2,3);
% spy(C4);
%Determinants
C2_determinant = round(det(C2));
C3_determinant = round(det(C3));
C4_determinant = round(det(C4));
display(C2_determinant);
display(C3_determinant);
display(C4_determinant);
%Determinants are always -1 
%Therefore C^-1 always exists.