pkg load image;
I = imread("cm.png");
figure(1);
imshow(I)
filter = fspecial('log', [3 3] , 0.5 ) 
J = imfilter(I, filter);
figure(2);
subplot(1,3,1);
imshow(J)
subplot(1,3,2);
hist(J)
subplot(1,3,3);
hist(I);
filter = fspecial('log', [3 3] , 0.1 ) 
J = imfilter(I, filter);
figure(3);
subplot(1,3,1);
imshow(J)
subplot(1,3,2);
hist(J)
subplot(1,3,3);
hist(I);
filter = fspecial('log', [3 3] , 0.7 ) 
J = imfilter(I, filter);
figure(4);
subplot(1,3,1);
imshow(J)
subplot(1,3,2);
hist(J)
subplot(1,3,3);
hist(I);
filter = fspecial('log', [5 5] , 0.7 ) 
J = imfilter(I, filter);
figure(5);
subplot(1,3,1);
imshow(J)
subplot(1,3,2);
hist(J)
subplot(1,3,3);
hist(I);
