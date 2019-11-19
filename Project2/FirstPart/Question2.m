%Create Matrix 
A = zeros(4,4);
%Replace with visual values.
A(:,2) = 63;
A(:,3) = 126;
A(:,4) = 189;
%In order to replace 1st and last column.
%We use a combination of the examples given.
E = [0,0,0,1;
    0,1,0,0;
    0,0,1,0;
    1,0,0,0];
%Matrix operation for new image.
Z = A * E;
%Visual Representaion.
subplot(1,2,1);
imshow(A,[0,255]);
subplot(1,2,2);
imshow(Z,[0,255]);