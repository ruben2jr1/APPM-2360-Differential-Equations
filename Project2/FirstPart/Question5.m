%Pulling The Image.
x = imread('photo1_1.jpg');
xg = double(x);
%Creating the identity matrix for corresponding 
%image.
[r,c] = size(xg);
E = eye(r);
%Transforming E.
E(:,1:c) = E(:,c:-1:1);
%New image.
Z = E * xg;
%Plotting.
subplot(1,2,1);
imshow(Z,[0,256]);
subplot(1,2,2);
spy(E);
