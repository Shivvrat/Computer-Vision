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
figure(2)
imshow(cb_trans)

tElapsed=toc(tStart)
