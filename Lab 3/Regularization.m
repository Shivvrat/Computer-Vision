A = randi([0 1], 3,3)

im = imread("cam.jpg");
figure(1)
imshow(im)
windowSize = 3; 
kernel = [1, 1.00004,1; 1,1,1.00004;1.0004,1,1]/9.000012
kernel = kernel + A
blurredImage = conv2(single(im), kernel, 'same');
figure(2)
tau = 3*eye(3)
inv_filter = pinv(((kernel+A)')*(kernel+A)+tau'*tau)
imshow(uint8(blurredImage), [0 255]);
image2 = conv2(single(blurredImage),inv_filter);
figure(3)
image2 = image2(1:225,1:225);
imshow(uint8(image2), [0 255])
RMSE = sqrt(mean((im -  image2).^2))
figure(4)
I = mat2gray(RMSE);
imshow(im2single(I))