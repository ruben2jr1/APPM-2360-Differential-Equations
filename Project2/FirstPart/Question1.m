%Pulling The Image.
x = imread('photo1_1.jpg');
x_gray = double(x);
%Set desired brightness.
brightness = 50;
%Create second image for comparison.
%Increase in brightness, which is just the addition
%of certain number to each element of the matrix.
x_gray2(:,:,1) = x_gray(:,:,1) + 255*brightness/255;
%Plotting.
subplot(1,2,1);
imshow(x_gray,[0,255]);
subplot(1,2,2);
imshow(x_gray2,[0,255]);