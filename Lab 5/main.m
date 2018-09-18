clc;
clear all;
tStart=tic;

I = uint8(zeros(128,128));
r = 40;
center_x = round(size(I,1)/2);
center_y = round(size(I,2)/2);
ps = 0;
qs = 1;
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
E = I;
i1 = size(E,1);
j1= size(E,2);
p = rand(i1, j1);
q = rand(i1, j1);
ps = 0.5;
qs = 0.5;
lambda = 0.8;
for count = 1 : 100
  i1 = size(p,1);
  j1= size(p,2);
  for i = 3 : (i1 - 3)
    for j = 3 : (j1 - 3)
      p_n1(i, j) = p( i , j) + (lambda / 4) * (E(i , j) - reflectance(p(i, j), q(i, j), ps, qs)) * del_p(p(i, j), q(i, j), ps, qs);
      q_nl(i, j) = q( i , j) + (lambda / 4) * (E(i , j) - reflectance(p(i, j), q(i, j), ps ,qs)) * del_q(p(i, j), q(i, j), ps, qs);
    endfor
  endfor
  p = p_n1;
  q = q_nl;
endfor

save p.mat p
save q.mat q
tElapsed=toc(tStart)

