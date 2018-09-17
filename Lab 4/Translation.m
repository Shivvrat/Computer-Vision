tStart=tic;
pkg load image;
I = imread("cam.jpg");
J = circshift(I, [100 200]);
figure
imshow(I);
title('Original Image');
set(gca,'Visible','on');
figure
imshow(J);
title('Full Translated Image');
set(gca,'Visible','on');
T = maketform('affine', [1 0 0; 0 1 0; 50 100 1]);  
img2 = imtransform(I, T, 'XData',[1 size(I,2)], 'YData',[1 size(I,1)]);
figure
imshow(img2);
title('Full Translated Image 2');
set(gca,'Visible','on');
tElapsed=toc(tStart)
