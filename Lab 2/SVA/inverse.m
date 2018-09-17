pkg load image;
I = imread ("cam.jpg");
figure(1)
imshow(I)
J = imcomplement(I);
figure(2)
imshow(J)
J2 = imadjust(I);
figure(3)
imshow(J2)