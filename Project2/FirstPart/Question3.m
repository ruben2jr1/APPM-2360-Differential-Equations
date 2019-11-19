%Pulling The Image.
x = imread('photo1_1.jpg');
x_gray = double(x);
%Assuming image is square then r will be correct
%dimension.
%Creating the identity matrix for corresponding 
%image.
[r,c] = size(x_gray);
E = eye(r);
%Concatenating Z image for Comparison
Z = zeros(r,c);
%Multiplying by segments of the Identity Matrix.
%By the original image, in order to replace 
%Segments of the new image Z.
Z(:,1:141) = x_gray * E(:,116:256);
Z(:,141:256) = x_gray * E(:,1:116);
subplot(2,2,1);
imshow(x_gray,[0,255]);
subplot(2,2,2);
imshow(Z,[0,255]);
%Transformation of E
C(:,1:141) = E(:,116:256);
C(:,141:256) = E(:,1:116);
subplot(2,2,3);
spy(C);