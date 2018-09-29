clc;
clear all;
tStart=tic;

I = uint8(zeros(128,128));
r = 40;
center_x = round(size(I,1)/2);
center_y = round(size(I,2)/2);
ps1 = 0;
qs1 = 1;
 
for i = 1:size(I,1)
    for j = 1:size(I,2)
        x_adjusted = i - center_x;
        y_adjusted = j - center_y;
        p = (-x_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        q = (-y_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        num = (p*ps1) + (q*qs1) + 1;
        den = (sqrt(1 + power(p,2) + power(q,2))*sqrt(1 + power(ps1,2) + power(qs1,2)));
        irradiance = num/den;
        if ((power(x_adjusted,2))+(power(y_adjusted,2)) < power(r,2))
            I(x_adjusted+center_x,y_adjusted+center_y) = 500*irradiance;
        endif
    endfor
endfor
E1 = I;
imshow(I);
print -djpg image.jpg

I = uint8(zeros(128,128));
r = 40;
center_x = round(size(I,1)/2);
center_y = round(size(I,2)/2);
ps2 = 0.5;
qs2 = 0.5;
for i = 1:size(I,1)
    for j = 1:size(I,2)
        x_adjusted = i - center_x;
        y_adjusted = j - center_y;
        p = (-x_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        q = (-y_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        num = (p*ps2) + (q*qs2) + 1;
        den = (sqrt(1 + power(p,2) + power(q,2))*sqrt(1 + power(ps2,2) + power(qs2,2)));
        irradiance = num/den;
        if ((power(x_adjusted,2))+(power(y_adjusted,2)) < power(r,2))
            I(x_adjusted+center_x,y_adjusted+center_y) = 500*irradiance;
        endif
    endfor
endfor
E2 = I;
imshow(I);
print -djpg image1.jpg
I = uint8(zeros(128,128));
r = 40;
center_x = round(size(I,1)/2);
center_y = round(size(I,2)/2);
ps3 = 0.25;
qs3 = 0.25;
for i = 1:size(I,1)
    for j = 1:size(I,2)
        x_adjusted = i - center_x;
        y_adjusted = j - center_y;
        p = (-x_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        q = (-y_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        num = (p*ps3) + (q*qs3) + 1;
        den = (sqrt(1 + power(p,2) + power(q,2))*sqrt(1 + power(ps3,2) + power(qs3,2)));
        irradiance = num/den;
        if ((power(x_adjusted,2))+(power(y_adjusted,2)) < power(r,2))
            I(x_adjusted+center_x,y_adjusted+center_y) = 500*irradiance;
        endif
    endfor
endfor
E3 = I;
imshow(I);
print -djpg image2.jpg
save E1.mat E1
save E2.mat E2
save E3.mat E3
tElapsed=toc(tStart)
