pkg load image;
I = imread("cam.jpg");
figure(1);
imshow(I)
% Low pass filter 
filter = fspecial("average", 2);
J = imfilter(I, filter);
figure(2);
imshow(J)
filter = fspecial("average", 8);
J1 = imfilter(J, filter);
figure(3);
imshow(J)
filter=(1/9)*ones(3,3); 
J2 = imfilter(J1, filter);
figure(4);
imshow(J2)