%Same as before first horizontal shift.
%Pulling The Image.
x = imread('photo1_1.jpg');
x_gray = double(x);
%Assuming image is square then r will be correct
%dimension.
%Creating the identity matrix for corresponding 
%image.
[r,c] = size(x_gray);
E = eye(r);
%First is the Horizontal Shift.
C(:,1:141) = E(:,116:256);
C(:,141:256) = E(:,1:116);
%Next We have the Vertical Shift.
C2(1:101,:) = E(156:256,:);
C2(101:256,:) = E(1:156,:);
Z = x_gray * C;
Z = (C * Z);
subplot(1,2,1);
spy(C);
subplot(1,2,2);
imshow(Z,[0,255]);