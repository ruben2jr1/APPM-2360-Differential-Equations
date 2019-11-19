%What im thinking for this one is that since
%C^2 = I, or C * C = I, and since IA = A Then
%Y = CXC, to undo this X = CYC, CYC = IXI, X = X
%Pull The image and making it double.
X = double(imread('boulder.jpg'));
n = 901; %Since image is 901x901
C = zeros(n,n);
for i = 1:n
    for j = 1:n
        C(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
%Transform is 
Y = C * X * C;
%If im correct then 
Y = C * Y * C;
% Z = X. then
imshow(Y,[0,255]);
%True !!!
