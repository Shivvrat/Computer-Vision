pkg load image;
I = imread("cm.png");
imshow(I)	
J= imadjust(I,[],[],0.01);
figure(1);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],0.05);
figure(2);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],0.1);
figure(3);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],0.5);
figure(4);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],0.9);
figure(5);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],2.0);
figure(6);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],5.0);
figure(7);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
