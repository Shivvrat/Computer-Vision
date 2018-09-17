pkg load image;
figure(1);
I = imread ("cam.jpg");
imshow(I)
figure(2)
density = 0.5;
I1 = imnoise (I, "salt & pepper", density);
imshow(I1)
J1 = imsmooth(I1, "Median");
figure(5)
imshow(J1)
figure(3)
density = 0.2;
I2 = imnoise (I, "salt & pepper", density);
imshow(I2)
figure(4)
J2 = imsmooth(I1, "Median");
imshow(J2)
