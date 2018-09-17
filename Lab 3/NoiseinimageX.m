J = imread("cam.jpg");
figure(1)
imshow(J)
p3= 0;
p4 = 0.0001;
im = J + sqrt(p4)*randn(size(J)) + p3;
figure(2)
imshow(im)
windowSize = 3; 
kernel = [1, 1.00004,1; 1,1,1.00004;1.0004,1,1]/9.000012
blurredImage = conv2(single(im), kernel, 'same');
figure(3)
inv_filter = pinv(kernel)
imshow(uint8(blurredImage), [0 255]);
image2 = conv2(single(blurredImage),inv_filter);
figure(4)
image2 = image2(1:225,1:225);
imshow(uint8(image2), [0 255])
RMSE = sqrt(mean((im -  image2).^2))
figure(5)
I = mat2gray(RMSE);
imshow(im2single(I))