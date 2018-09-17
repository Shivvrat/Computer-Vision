tStart=tic;
pkg load image;
im = imread("cam.jpg");
figure(1)
imshow(im);
xform = [ 1,  -30,  0;
          30 , 1 , 0;
         0, 0,  1 ]
tform_translate = maketform('affine',xform);
[cb_trans xdata ydata]= imtransform(im, tform_translate);
T = maketform('affine', [1 0 0; 0 1 0; 500 100 1]); 
I = cb_trans;
img2 = imtransform(I, T, 'XData',[1 size(I,2)], 'YData',[1 size(I,1)]);
figure
imshow(img2);
title('Full Translated Image');
set(gca,'Visible','on');
tElapsed=toc(tStart)
