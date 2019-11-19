%Reading the image
X = double(imread('boulder_noisy.jpg'));
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
p = 0.22;
% when p = 0, none of the matrix is saved , p=1 means no compression
for i = 1:n
    for j = 1:n
        if i + j > p*2* n
            Y(i,j) = 0;
        end
    end
end
nonzero_compressed = nnz(Y);
CR_p_Var = (nonzero_uncompressed)/(nonzero_compressed);
display(CR_p_Var);
Y = C * Y * C;
imshow(Y,[0,255]);
imwrite(Y,'DCT_prob8.jpg');
%When P = 0.1 the file is 11KB
%When P = 0.2 the file is 11KB
%When P = 0.3 the file is 24KB
%Barrier is between P = 0.21 and P = 0.22
%At this point the weight begins to increase 
%From 11KB also, Image quality seems to be ok.