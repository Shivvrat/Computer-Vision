pkg load image;
I = imread("cam.jpg");
imshow(I)	
J1= imadjust(I,[],[],0.005);
figure(1);
subplot(1,2,1);
imshow(J1)
subplot(1,2,2);
hist(J1)
J2= imadjust(I,[],[],0.05);
figure(1);
subplot(1,2,1);
imshow(J2)
subplot(1,2,2);
hist(J2)
J3= imadjust(I,[],[],0.01);
figure(2);
subplot(1,2,1);
imshow(J3)
subplot(1,2,2);
hist(J3)
J4= imadjust(I,[],[],0.1);
figure(3);
subplot(1,2,1);
imshow(J4)
subplot(1,2,2);
hist(J4)
J5= imadjust(I,[],[],0.5);
figure(4);
subplot(1,2,1);
imshow(J5)
subplot(1,2,2);
hist(J5)
J6= imadjust(I,[],[],1.0);
figure(5);
subplot(1,2,1);
imshow(J6)
subplot(1,2,2);
hist(J6)
J7= imadjust(I,[],[],5.0);
figure(7);
subplot(1,2,1);
imshow(J)
subplot(1,2,2);
hist(J)
J= imadjust(I,[],[],10.0);
figure(1);
subplot(1,2,1);
imshow(J7)
subplot(1,2,2);
hist(J7)