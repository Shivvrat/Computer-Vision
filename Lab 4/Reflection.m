tStart=tic;
I = imread('cam.jpg');
figure
imshow(I);
title('Original Image');
set(gca,'Visible','on');
I2 = flipdim(I ,2);  
figure
imshow(I2);
title('Horizontal Flip Image');
set(gca,'Visible','on');         
I3 = flipdim(I ,1);     
figure
imshow(I3);
title('Vertical Flip Image');
set(gca,'Visible','on');     
I4 = flipdim(I3,2);    
figure
imshow(I4);
title('Both Flip Image');
set(gca,'Visible','on');
tElapsed=toc(tStart)
