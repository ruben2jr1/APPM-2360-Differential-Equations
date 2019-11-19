%Reading the image
X = double(imread('boulder.jpg'));
n = 901; %Since image is 901X901
C = zeros(n,n);
for i = 1:n
    for j = 1:n
        C(i,j) = sqrt(2/n)*cos(pi*(i-(1/2))*(j-(1/2))/n);
    end
end
%Transform is 
Y = C * X * C;
nonzero_uncompressed = nnz(Y);
p = 0.24;
% when p = 0, none of the matrix is saved , p=1 means no compression
for i = 1:n
    for j = 1:n
        if i + j > p*2* n
            Y(i,j) = 0;
        end
    end
end
nonzero_compressed = nnz(Y);
display(nonzero_uncompressed);
display(nonzero_compressed);
Y = C * Y * C;
imshow(Y,[0,255]);
%Like the question states it's really up to preference
%For me this is close to a correct balance.