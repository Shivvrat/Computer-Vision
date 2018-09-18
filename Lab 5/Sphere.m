clc;
clear all;
I = uint8(zeros(256,256));
r = 100;
center_x = round(size(I,1)/2);
center_y = round(size(I,2)/2);
ps = 1;
qs = 0;
for i = 1:size(I,1)
    for j = 1:size(I,2)
        x_adjusted = i - center_x;
        y_adjusted = j - center_y;
        p = (-x_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        q = (-y_adjusted)/(sqrt(power(r,2) - power(x_adjusted,2) - power(y_adjusted,2)));
        num = (p*ps) + (q*qs) + 1;
        den = (sqrt(1 + power(p,2) + power(q,2))*sqrt(1 + power(ps,2) + power(qs,2)));
        irradiance = num/den;
        if ((power(x_adjusted,2))+(power(y_adjusted,2)) < power(r,2))
            I(x_adjusted+center_x,y_adjusted+center_y) = 500*irradiance;
        endif
    endfor
endfor
imshow(I);
print -djpg image.jpg
