pkg load image;
I = imread("cm.png");
figure(1);
imshow(I)
% Low pass filter 
filter = fspecial("average", 3);
J = imfilter(I, filter);
figure(2);
imshow(J)
filter = fspecial("average", 5);
J = imfilter(I, filter);
figure(3);
imshow(J)
filter = fspecial("average", 7);
J = imfilter(I, filter);
figure(4);
imshow(J)


% High pass filter 
filter = fspecial("kirsch");
J = imfilter(I,filter);
figure(5);
imshow(J)
filter = fspecial("prewitt");
J = imfilter(I, filter);
figure(6);
imshow(J)


% High Boost Filter 
filter = fspecial("gaussian", 3, 1.5);
blur_img = imfilter(I, filter);
diff = I - blur_img;
img = I + 9 * diff;
figure(7);
imshow(img)

