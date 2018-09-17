pkg load image;
figure(1);
I = imread ("cam.jpg");
imshow(I)
figure(2)
density = 0.5;
I1 = imnoise (I, "gaussian", density);
imshow(I1)
J1 = imsmooth(I1, "Gaussian");
figure(3)
imshow(J1)
density = 0.2;
I2 = imnoise (I, "gaussian", density);
figure(4)
imshow(I2)
J2 = imsmooth(I2, "Gaussian");
figure(5)
imshow(J2)
