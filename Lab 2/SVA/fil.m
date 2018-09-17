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
J = imfilter(I, filter);
figure(3);
imshow(J)
filter=(1/9)*ones(3,3); 
J = imfilter(I, filter);
figure(3);
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
filter = [-1 -1 -1;-1 8 -1;-1 -1 -1];
J = imfilter(I, filter, 'same');
figure(6);
imshow(J)


% High Boost Filter 
h = fspecial('gaussian',8,4);
blurred_img = imfilter(img,h);
diff_img = img - blurred_img;
highboost_img = img + 5*diff_img;


